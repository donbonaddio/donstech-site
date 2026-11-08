// Theme toggle. The site works without this, using the system setting.
(function () {
  var b = document.querySelector('.theme-toggle');
  if (!b) return;
  b.addEventListener('click', function () {
    var root = document.documentElement;
    var cur = root.dataset.theme || (matchMedia('(prefers-color-scheme: light)').matches ? 'light' : 'dark');
    var next = cur === 'light' ? 'dark' : 'light';
    root.dataset.theme = next;
    try { localStorage.setItem('theme', next); } catch (e) {}
  });
})();
