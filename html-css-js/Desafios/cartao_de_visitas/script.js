const card = document.getElementById('card');
const name = document.getElementById('name');

function randomColor() {
    const letters = '0123456789ABCDEF';
    let color = '#';
    for (let i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

name.addEventListener('click', () => {
    card.style.backgroundColor = randomColor();
});