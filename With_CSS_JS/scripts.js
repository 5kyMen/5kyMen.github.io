// Wait for the DOM to be fully loaded
document.addEventListener('DOMContentLoaded', function() {
  // Initialize all features
  makeCollapsible();
  initSkillBars();
  initScrollAnimations();
  
  // Add typing effect with a slight delay
  setTimeout(addTypedEffect, 500);
});

// Function to make sections collapsible
function makeCollapsible() {
  // Get all section elements
  const sections = document.querySelectorAll('section');
  
  sections.forEach((section, index) => {
    if (index === 0) return; // Skip the title section
    
    const sectionTitle = section.querySelector('h3');
    if (!sectionTitle) return;
    
    // Skip the Contact section
    if (sectionTitle.textContent.includes('Contact')) return;
    
    // Create wrapper div for the section content
    const wrapper = document.createElement('div');
    wrapper.className = 'collapsible-section';
    
    // Make the section title clickable
    sectionTitle.className = 'collapsible-header';
    
    // Wrap the content (everything after the title)
    const content = document.createElement('div');
    content.className = 'collapsible-content';
    
    // Move all elements after the title into the content div
    let nextElement = sectionTitle.nextElementSibling;
    while (nextElement) {
      const tempElement = nextElement;
      nextElement = nextElement.nextElementSibling;
      content.appendChild(tempElement);
    }
    
    // Add click event to the title
    sectionTitle.addEventListener('click', function() {
      this.classList.toggle('active');
      content.classList.toggle('active');
    });
    
    // Add all elements to the wrapper
    wrapper.appendChild(sectionTitle);
    wrapper.appendChild(content);
    
    // Replace the section's content with the wrapper
    section.innerHTML = '';
    section.appendChild(wrapper);
  });
  
  // Also make subsections in About Me collapsible
  const aboutSection = document.querySelector('section:nth-of-type(2)');
  if (aboutSection) {
    const paragraphs = aboutSection.querySelectorAll('p');
    
    // Create individual collapsible sections for each paragraph
    paragraphs.forEach((paragraph, i) => {
      if (i === 0) return; // Skip the intro paragraph
      
      // Create a title from the first few words
      const text = paragraph.textContent;
      const title = text.split(' ').slice(0, 3).join(' ') + '...';
      
      // Create the collapsible structure
      const wrapper = document.createElement('div');
      wrapper.className = 'collapsible-section';
      
      const header = document.createElement('div');
      header.className = 'collapsible-header';
      header.textContent = title;
      
      const content = document.createElement('div');
      content.className = 'collapsible-content';
      content.appendChild(paragraph.cloneNode(true));
      
      // Add click event
      header.addEventListener('click', function() {
        this.classList.toggle('active');
        content.classList.toggle('active');
      });
      
      // Build the structure
      wrapper.appendChild(header);
      wrapper.appendChild(content);
      
      // Replace the paragraph with the collapsible structure
      paragraph.parentNode.replaceChild(wrapper, paragraph);
    });
    
    // Make the interests list collapsible too
    const itemList = aboutSection.querySelector('.itemlist');
    if (itemList) {
      const wrapper = document.createElement('div');
      wrapper.className = 'collapsible-section';
      
      const header = document.createElement('div');
      header.className = 'collapsible-header';
      header.textContent = 'My Interests...';
      
      const content = document.createElement('div');
      content.className = 'collapsible-content';
      content.appendChild(itemList.cloneNode(true));
      
      // Add click event
      header.addEventListener('click', function() {
        this.classList.toggle('active');
        content.classList.toggle('active');
      });
      
      // Build the structure
      wrapper.appendChild(header);
      wrapper.appendChild(content);
      
      // Replace the item list with the collapsible structure
      itemList.parentNode.replaceChild(wrapper, itemList);
    }
  }
}

// Function to initialize skill bars with animations
function initSkillBars() {
  // Find the skills table
  const skillsTable = document.querySelector('table.boxed');
  
  if (skillsTable) {
    // Get all skill rows (skip the header row)
    const skillRows = Array.from(skillsTable.querySelectorAll('tr')).slice(1);
    
    skillRows.forEach(row => {
      const skillCell = row.querySelector('td:last-child');
      if (!skillCell) return;
      
      const skillText = skillCell.textContent;
      
      // Create container for skill bars
      const barsContainer = document.createElement('div');
      barsContainer.className = 'skill-bars';
      
      // Split the skills by comma
      const skills = skillText.split(',').map(s => s.trim());
      
      // Create a bar for each skill
      skills.forEach(skill => {
        const skillItem = document.createElement('div');
        skillItem.className = 'skill-item';
        
        const skillLabel = document.createElement('span');
        skillLabel.className = 'skill-label';
        skillLabel.textContent = skill;
        
        const skillBar = document.createElement('div');
        skillBar.className = 'skill-bar';
        
        const skillFill = document.createElement('div');
        skillFill.className = 'skill-fill';
        
        // Random width between 70% and 95%
        const randomWidth = Math.floor(Math.random() * 26 + 70);
        skillFill.style.width = '0%';
        
        // Animate after a short delay
        setTimeout(() => {
          skillFill.style.width = `${randomWidth}%`;
        }, 300);
        
        // Build the structure
        skillBar.appendChild(skillFill);
        skillItem.appendChild(skillLabel);
        skillItem.appendChild(skillBar);
        barsContainer.appendChild(skillItem);
      });
      
      // Replace the text with the skill bars
      skillCell.textContent = '';
      skillCell.appendChild(barsContainer);
    });
    
    // Add CSS for skill bars if not already defined
    if (!document.getElementById('skill-bars-css')) {
      const style = document.createElement('style');
      style.id = 'skill-bars-css';
      style.textContent = `
        .skill-bars {
          display: flex;
          flex-direction: column;
          gap: 10px;
        }
        .skill-item {
          display: flex;
          flex-direction: column;
          gap: 5px;
        }
        .skill-bar {
          height: 8px;
          background-color: var(--border-color, #ddd);
          border-radius: 4px;
          overflow: hidden;
        }
        .skill-fill {
          height: 100%;
          background-color: var(--accent-color, #ff6b6b);
          border-radius: 4px;
          transition: width 1s ease-out;
        }
      `;
      document.head.appendChild(style);
    }
  }
}

// Function to add scroll animations
function initScrollAnimations() {
  // Create an Intersection Observer
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      // Add a class when the section is in view
      if (entry.isIntersecting) {
        entry.target.classList.add('in-view');
      }
    });
  }, {
    threshold: 0.1 // Trigger when 10% of the element is visible
  });
  
  // Observe each section
  document.querySelectorAll('section').forEach(section => {
    observer.observe(section);
  });
  
  // Add CSS for the scroll animations
  const style = document.createElement('style');
  style.textContent = `
    section {
      opacity: 0;
      transform: translateY(20px);
      transition: opacity 0.5s ease-out, transform 0.5s ease-out;
    }
    section.in-view {
      opacity: 1;
      transform: translateY(0);
    }
  `;
  document.head.appendChild(style);
}

// Function to add a typed effect to the header
function addTypedEffect() {
  const title = document.querySelector('h2');
  if (title) {
    const text = title.textContent;
    title.textContent = '';
    
    // Add cursor
    const cursor = document.createElement('span');
    cursor.className = 'cursor';
    cursor.textContent = '|';
    title.appendChild(cursor);
    
    // Add cursor style
    const cursorStyle = document.createElement('style');
    cursorStyle.textContent = `
      .cursor {
        animation: blink 1s infinite;
      }
      @keyframes blink {
        0%, 100% { opacity: 1; }
        50% { opacity: 0; }
      }
    `;
    document.head.appendChild(cursorStyle);
    
    // Type out text
    let i = 0;
    const typeInterval = setInterval(() => {
      if (i < text.length) {
        const char = document.createTextNode(text.charAt(i));
        title.insertBefore(char, cursor);
        i++;
      } else {
        clearInterval(typeInterval);
      }
    }, 100);
  }
}