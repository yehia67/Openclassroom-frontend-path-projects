//---APP LOGIC---
//Family Quote Resource
function familyQuotes() {
    var firstSentence = ["As My Grandfather Said : ", "As My Grandmother Said : ", "As My Father Said : ", "As My Mother Said : ", "As My Sister Said : "];
    var secondSentence = ["Be yourself, ", "It's never to late, ", "Don't lie, ", "Believe in yourself, "];
    var thirdSentence = ["Don't think about the others.", "People are idiots.", "You are what You are."];
    return QuotesGenerator(firstSentence, secondSentence, thirdSentence);
}
//Daily Quote Resource
function dayQuotes() {
    var firstSentence = ["They always say: ", "Remember That: ", "Don't Forget: "];
    var secondSentence = ["It's never to late ", "Never stop trying  ", "Believe in yourself, "];
    var thirdSentence = ["To achive your goals.", "To achive your Dreams.", "To be a better person."];
    return QuotesGenerator(firstSentence, secondSentence, thirdSentence);
}

//Random Quotes Selector
function QuotesGenerator(firstSentence, secondSentence, thirdSentence) {
    return firstSentence[Math.floor(Math.random() * firstSentence.length)] + secondSentence[Math.floor(Math.random() * secondSentence.length)] + thirdSentence[Math.floor(Math.random() * thirdSentence.length)];
}
//Print Days Quotes
function printDayQuotes(n) {
    var Quotes = "";
    for (let index = 0; index < n; index++) {
        Quotes += dayQuotes() + "<br />";
    }
    document.getElementById("result-quotes").innerHTML = Quotes;
    nextBtn();
}
//Print Family Quotes
function printFamilyQuotes(n) {
    var Quotes = "";
    for (let index = 0; index < n; index++) {
        Quotes += familyQuotes() + "<br />";
    }
    document.getElementById("result-quotes").innerHTML = Quotes;
    nextBtn();
}

//Main Function
function run() {
    var n = document.getElementById('no').value;
    if (document.getElementById('family').checked) {
        printFamilyQuotes(n);
    } else {
        printDayQuotes(n);
    }
}




//---APP CONTROLL---

//initialize global variables
var i = 0;
var arrayId = ['intro', 'quoateType', 'options', 'submit', 'result-section', 'help-section'];
var size = arrayId.length;

//initialize function
function init() {

    if (arrayId[i] === 'intro') {
        document.getElementById("previous").style.display = "none";
        document.getElementById("next").style.display = "inline";
        document.getElementById(arrayId[i]).style.display = "inline";
        for (let j = i + 1; j < size; j++) {
            document.getElementById(arrayId[j]).style.display = "none";
        }
    } else if (arrayId[i] === 'submit') {
        document.getElementById("previous").style.display = "inline";
        document.getElementById("next").style.display = "none";
    } else if (arrayId[i] === 'result-section') {
        document.getElementById("previous").style.display = "none";
        document.getElementById("next").style.display = "none";
    } else if (arrayId[i] === 'help-section') {
        document.getElementById('intro').style.display = "none";
        document.getElementById("previous").style.display = "none";
        document.getElementById("next").style.display = "none";
        document.getElementById(arrayId[i]).style.display = "inline";
    } else {
        document.getElementById("previous").style.display = "inline";
        document.getElementById("next").style.display = "inline";
    }
    console.log("call " + i);

}


init();

//Help tutorial
function helpBtn() {
    i = size - 1;
    init();
}
//Next Button Function
function nextBtn() {
    document.getElementById(arrayId[i]).style.display = "none";
    document.getElementById(arrayId[i + 1]).style.display = "block";
    i++;
    init();
}
//Previous Button Function
function previousBtn() {
    document.getElementById(arrayId[i]).style.display = "none";
    document.getElementById(arrayId[i - 1]).style.display = "block";
    i--;
    init();
}
// Return Button Function
function returnBtn() {
    i = 0;
    document.getElementById("myform").reset();
    init();
}