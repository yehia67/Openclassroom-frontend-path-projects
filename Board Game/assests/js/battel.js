var turn = 1;
var worriorOne;
var worriorTwo;

function Battel() {
    var x = randomPlace(blocks);
    var y = randomPlace(blocks);

    console.log("worrior One Place " + x);
    console.log("worrior Two Place " + y);
    worriorOne = createWorrior(1, "One", x);
    worriorTwo = createWorrior(2, "Two", y);

    $("#game").append(" <div class='labels'> <div class='label player-one'><div class='label-name '>" + worriorOne.name + "</div><div class='label-score'>Score: " + worriorOne.lifePoints + "</div> </div><div class='label player-two'> <div class='label-name'>" + worriorTwo.name + "</div>  <div class='label-score'>Score:" + worriorTwo.lifePoints + "</div></div></div>");
    console.log("one")
    worriorTurn(worriorOne);

    // Make Labels
}

function createWorrior(id, img, place) {
    var Worrior = new worrior("Player " + id, id, "worrior" + img + ".jpg", place);
    Worrior.draw(place);
    return Worrior;
}



function worriorTurn(worrior) {
    $("#" + worrior.getWorriorId()).clickToggle(function(ev) {
            worrior.availableMoves(worrior.position);
            move(worrior);

        },
        function(ev) {
            $("div").removeClass('hint');
        });

};

function move(worrior) {

    $(".hint").click(function(event) {

        if (turn && worrior.id == 1) {
            var blockId = event.target.id
            console.log(event.target.id);
            console.log("child  = " + event.target.querySelector('.worrior'));
            $("div").removeClass('hint');
            $("#" + worrior.getWorriorId()).remove();
            worrior = createWorrior(1, "One", blockId); //worrior One
            worrior.setposition(blockId);
            turn = !turn;
            console.log("worrior One turn");
            worriorTurn(worriorTwo);

        } else if (!turn && worrior.id == 2) {
            var blockId = event.target.id
            console.log(event.target.id);
            //var childid = $("#" + blockId).children("div").attr("id");
            $("div").removeClass('hint');
            $("#" + worrior.getWorriorId()).remove();
            worrior = createWorrior(2, "Two", blockId); //worrior Two
            worrior.setposition(blockId);
            turn = !turn;
            console.log("worrior Two turn");
            worriorTurn(worriorOne);

        }

    });


}