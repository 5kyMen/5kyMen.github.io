#!/usr/bin/env python3
"""
Adds a "Go Back" link to every .html file in the Windows Server & Active Directory
folder tree. Each page links back to its actual parent page.

- Root-level HTML files -> link to ../Windows Server & Active Directory.html
- Subfolder HTML files -> link to the parent HTML file (matched by folder name)

Usage:
    python add_goback.py /path/to/Windows\ Server\ &\ Active\ Directory
"""

import os
import re
import sys
import urllib.parse

def find_parent_html(filepath, base_folder):
    """Find the correct parent HTML file for a given file."""
    filedir = os.path.dirname(filepath)

    # If file is in the root of the base folder, go back to the main index
    if os.path.normpath(filedir) == os.path.normpath(base_folder):
        return "../Windows Server & Active Directory.html"

    # Otherwise, find the HTML file in the parent dir whose name starts with this folder's name
    parent_dir = os.path.dirname(filedir)
    folder_name = os.path.basename(filedir)

    for f in os.listdir(parent_dir):
        if f.lower().endswith('.html') and f.startswith(folder_name):
            return "../" + f

    # Fallback
    return "../Windows Server & Active Directory.html"

def add_goback(filepath, base_folder):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Skip if already has a go back link
    if 'go-back-link' in content:
        print(f"  skip  Already has Go Back: {os.path.basename(filepath)}")
        return

    parent_page = find_parent_html(filepath, base_folder)
    # URL-encode the href but keep ../ and /
    encoded = urllib.parse.quote(parent_page, safe='./:&')

    go_back_html = f'<p id="go-back-link" style="margin:1em 0;"><a href="{encoded}" style="font-size:1em;">&larr; Go Back</a></p>'

    # Insert after opening <body...> tag
    new_content, count = re.subn(
        r'(<body[^>]*>)',
        r'\1\n' + go_back_html,
        content,
        count=1
    )

    if count > 0:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(new_content)
        parent_display = os.path.basename(parent_page).replace('.html', '')
        print(f"  ok  {os.path.basename(filepath)}")
        print(f"      -> links to: {parent_display}")
    else:
        print(f"  ERR No <body> tag found: {os.path.basename(filepath)}")

def main():
    if len(sys.argv) < 2:
        print("Usage: python add_goback.py /path/to/folder")
        sys.exit(1)

    folder = sys.argv[1]

    if not os.path.isdir(folder):
        print(f"Error: '{folder}' is not a directory")
        sys.exit(1)

    count = 0
    for root, dirs, files in os.walk(folder):
        for fname in files:
            if fname.lower().endswith('.html'):
                add_goback(os.path.join(root, fname), folder)
                count += 1

    print(f"\nDone -- processed {count} HTML file(s)")

if __name__ == '__main__':
    main()
