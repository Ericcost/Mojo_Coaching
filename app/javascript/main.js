let url = document.getElementsByClassName('url');
let rdv = document.getElementsByClassName('rdv');
console.log(rdv[0][2]);

let option = rdv[0]
let optionCoaching = rdv[0][2]

option.addEventListener('click', function() {
    url[0].classList.remove("hidden");
})


