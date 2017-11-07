document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');
  const ctx = canvas.getContext('2d');

  // ctx.fillStyle = 'red';
  // ctx.fillRect(10, 0, 500, 50);

  ctx.beginPath();
  ctx.arc(100, 100, 50, 0, 2 * Math.PI);
  ctx.strokeStyle = 'red';
  ctx.lineWidth = 10;
  ctx.stroke();

  ctx.fillStyle = 'blue';
  ctx.fill();
});
