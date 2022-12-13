let url = document.getElementsByClassName('url');
let rdv = document.getElementsByClassName('rdv');
console.log(rdv[0][2]);

let option = rdv[0] // it works but that's not that we want
let optionCoaching = rdv[0][2] //it doesn't work yet

option.addEventListener('click', function() { // add one of the two variable above at the beginning of the line to test them
    url[0].classList.remove("hidden");
})


