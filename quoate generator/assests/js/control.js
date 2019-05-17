//---APP CONTROLL---

//initialize global variables
var i = 0;
var arrayId = ['intro', 'quoteType', 'options', 'submit', 'result-section', 'help-section'];
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