window.addEventListener('load', () => {
    setTimeout(() => {
        const loader = document.querySelector('.loader-wrapper');
        loader.style.opacity = '0';
        setTimeout(() => {
            loader.style.display = 'none';  // Correct way to hide after fading
        }, 500); // Allow time for fade-out transition
    }, 2000); // Wait 2 seconds before starting fade
});
