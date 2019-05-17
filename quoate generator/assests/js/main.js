//---APP LOGIC---
//Family Quote Resource
function familyQuotes() {
    var firstSentence = ["As My Grandfather Said: ", "As My Grandmother Said: ", "As My Father Said: ", "As My Mother Said: ", "As My Sister Said: "];
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