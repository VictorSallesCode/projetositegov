let count = 1;
document.getElementById("radio1").checked = true;

setInterval(function () {
    nextImage();
}, 5000); 

function nextImage() {
    count++;
    if (count > 3) { 
        count = 1;
    }
    document.getElementById("radio" + count).checked = true;
}
document.querySelectorAll('.categoria').forEach(categoria => {
  categoria.addEventListener('click', () => {
    const panel = categoria.querySelector('.panel');
    const isOpen = panel.classList.contains('open');

    // Fecha todos os painéis
    document.querySelectorAll('.panel').forEach(p => p.classList.remove('open'));

    // Abre ou fecha o painel clicado
    if (!isOpen) {
      panel.classList.add('open');
    }
  });
});
document.querySelectorAll('.timeline').forEach(timeline => {
  timeline.addEventListener('click', (e) => {
    const item = e.target.closest('.timeline-item');
    if (!item) return;

    // Fecha outros itens da mesma timeline
    timeline.querySelectorAll('.timeline-item').forEach(i => {
      if (i !== item) i.classList.remove('open');
    });

    // Alterna o item clicado
    item.classList.toggle('open');

    e.stopPropagation();
  });
});