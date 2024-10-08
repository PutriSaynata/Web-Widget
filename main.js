const widgets = {
    button: `<button onclick="alert('Button clicked!')">Click me</button>`,
    input: `<input type="text" placeholder="Type something...">`
};

window.showWidget = function(widgetName) {
    const widgetDisplay = document.getElementById('widget-display');
    widgetDisplay.innerHTML = widgets[widgetName] || 'Widget not found';
};

// Show button widget by default
showWidget('button');