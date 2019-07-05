function close(modalID) {
    $("#" + modalID).modal('hide');
}

function open(modalID) {
    $("#" + modalID).modal('show');
}

function closCastle() {
    close('castleModal');
}

function openCastle() {
    open('castleModal');
}

function goToHomePage() {
    close('gameOver');
    location.href = 'home.html';

}

function openGameOver() {
    open('gameOver');
}
var checkposition;

function pickAFight() {
    open('pickFight');
}

function attackPosition() {
    close('pickFight');
    checkposition = false;
}

function defnsePosition() {
    close('pickFight');
    checkposition = true;
}