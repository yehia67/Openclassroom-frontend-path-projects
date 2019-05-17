function Battel() {

    var worriorOne = new worrior("Player 1", 0, "worriorOne.jpg", randomPlace(blocks));
    var worriorTwo = new worrior("Player 2", 1, "worriorTwo.jpg", randomPlace(blocks));

    worriorInit(worriorOne);
    worriorInit(worriorTwo);
    // Make Labels
    $("#game").append(" <div class='labels'> <div class='label player-one'><div class='label-name '>" + worriorOne.name + "</div><div class='label-score'>Score: " + worriorOne.lifePoints + "</div> </div><div class='label player-two'> <div class='label-name'>" + worriorTwo.name + "</div>  <div class='label-score'>Score:" + worriorTwo.lifePoints + "</div></div></div>");
}

function worriorInit(worrior) {
    worrior.draw();
    checkHints(worrior);
}

function checkHints(worrior) {
    $("#" + worrior.getWorriorId()).clickToggle(function(ev) {
        worrior.availableMoves();

    }, function(ev) {
        worrior.removeHints();
    });

};

function Move() {
    $('.hint').on('click', function() {
        console.log("hintclicked");
    });
}