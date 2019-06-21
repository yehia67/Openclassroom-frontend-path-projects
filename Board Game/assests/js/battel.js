function Battel() {
    var x = randomPlace(blocks);
    var y = randomPlace(blocks);
    var worriorOne = new worrior("Player 1", 0, "worriorOne.jpg", x);
    var worriorTwo = new worrior("Player 2", 1, "worriorTwo.jpg", y);
    console.log("worrior One Place " + x);
    console.log("worrior Two Place " + y);
    worriorInit(worriorOne, 0);
    worriorInit(worriorTwo, 1);
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
            move(worrior);
        },
        function(ev) {
            $("div").removeClass('hint');
        });

};

function move(worrior) {

    $(".hint").click(function(event) {
        var blockId = event.target.id
        console.log(event.target.id);
        $("div").removeClass('hint');
        $("#" + worrior.getWorriorId()).remove();
        worrior.redraw(blockId);

    });


}