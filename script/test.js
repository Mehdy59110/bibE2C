let trigger = document.querySelector('#send-button');
let numberzone = document.querySelector('#user-number');
let displayzone = document.querySelector('#game-display');

let targetNumber = Math.floor(Math.random ()*100)+1;

console.log( trigger, numberzone, displayzone, targetNumber);

function compareNumber() {
    //console.log("ça marche");
    let userNumber = numberzone.value;
    let result;
    //console.log(userNumber);
    if(userNumber==targetNumber){
        result='bravo';
    }else if(userNumber > targetNumber) {
        result=`C'est trop grand!`;
    } else {
        result=`C'est trop petit!`;
    }

    let resultZone = document.createElement('p');
    resultZone.innerHTML = result;
    resultZone.style.padding = "10px";
    resultZone.style.backgroundColor = "var(--couleur-midfonce)";
    resultZone.classList.add('result-line');

    //console.log(resultZone);
    displayzone.appendChild(resultZone);
    
}
    
    



trigger.addEventListener('click', compareNumber);




/*
let targetNumber = math.floor(math . random ()*100)+1;
console.log( targetNumber);
let userNumber = prompt('Devinez un nombre entre 1 et 100 :');

while(userNumber != targetNumber) {
    
    if(userNumber > targetNumber) {
        alert(`C'est trop grand!`);
    } else {
        alert(`C'est trop petit!`);
    }

    userNumber = prompt('Devinez un nombre entre 1 et 100 :');
}

alert('Bravo, vous n\'avez trouvé!');
*/