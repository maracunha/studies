const canvas = document.querySelector('#canvas');
const context = canvas.getContext('2d');

context.fillStyle = 'dodgerBlue';
context.fillRect(0, 0, canvas.width, canvas.height);

const upDown = (event) => {
    const container = canvas.getBoundingClientRect();
    console.log('fui clicado');
}

canvas.addEventListener('click', upDown);