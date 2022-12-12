let url = document.querySelectorAll('.url');
let rdv = document.querySelectorAll('.rdv');
console.log(rdv.childNodes[4]);

url.addEventListener('onChange', function() {
  if (rdv === 2)
      url.classList.remove("hidden")
      url.classList.add("block")
});



