let trigger = document.querySelector( "#news-triggers");
let aside = document.querySelector("aside");
/* récuper la croix dans une variable */
let close = document.querySelector("#close");

function showNews(){
    aside.style.right = "15px";
    trigger.style.opacity = "0";
}

function closeNews() {
/* remettre les élements de style aux valeurs de départ */
aside.style.right = "-16%";
trigger.style.opacity = "1";
}
trigger.addEventListener("click", showNews)
/* la croix détecteun click et déclenche le fonction closNews */
close.addEventListener("click", closeNews);