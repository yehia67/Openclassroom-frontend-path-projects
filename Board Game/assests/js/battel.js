function Battel() {
    var x = randomPlace(blocks);
    var y = randomPlace(blocks);
    var worriorOne = new worrior("Player 1", 0, "worriorOne.jpg", x);
    var worriorTwo = new worrior("Player 2", 1, "worriorTwo.jpg", y);
    console.log("worrior One Place " + x);
    console.log("worrior Two Place " + y);
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
            console.log("clickedd---------------------------------------")
            worrior.availableMoves();
            move(worrior);
        },
        function(ev) {
            worrior.removeHints();
        });

};

function move(worrior) {

    $(".hint").click(function(event) {
        var newPlace = $(this).closest('div').attr('id');
        // if (newPlace !== "worrior-" + worrior.id) {
        $('#' + "worrior-" + worrior.id).remove();
        $("#" + newPlace).append("<div id='" + "worrior-" + worrior.id + "' " + " class='worrior'></div>");
        $('#' + "worrior-" + worrior.id).css("background-image", "url(./assests/res/img/" + worrior.img + ")");
        $(".hint").removeClass("hint");
        worrior.avMoves = [];
        var rowAndcol = newPlace.split('-');
        worrior.row = parseInt(rowAndcol[1]);
        worrior.col = parseInt(rowAndcol[2]);
        checkHints(worrior);
        /*  worrior.changePosition(newPlace);
         console.log("the new place is  " + newPlace);
         console.log("the new place is current  " + worrior.getPosition());
         checkHints(worrior); */
        //}
    });


}