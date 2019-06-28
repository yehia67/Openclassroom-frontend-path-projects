var turn = 1;
var worriorOne, worriorOneFight;
var worriorTwo, worriorTwoFight;
var holdOne,
    holdeTow;

function Battel() {
    var x = randomPlace(blocks);
    var y = randomPlace(blocks);

    console.log("worrior One Place " + x);
    console.log("worrior Two Place " + y);
    worriorOne = createWorrior(1, "One", x);
    worriorTwo = createWorrior(2, "Two", y);
    worriorOneFight = new WorriorsFight(worriorOne, 20, 20);
    worriorTwoFight = new WorriorsFight(worriorTwo, 20, 20);
    console.log("hnaaaaaaaaaaaaaaaa el fightttt " + worriorOneFight);
    holdOne = x;
    holdeTow = y;
    $("#game").append(" <div class='labels'> <div class='label player-one'><div class='label-name '>" + "Player One" + "</div><div class='label-score'>Score: " + worriorOne.lifePoints + "</div> </div><div class='label player-two'> <div class='label-name'>" + "Player Two" + "</div>  <div class='label-score'>Score:" + worriorTwo.lifePoints + "</div></div></div>");
    console.log("one")
    worriorTurn(worriorOne, x);

    // Make Labels
}

function createWorrior(id, img, place) {
    var Worrior = new worrior("worrior-" + id, id, "worrior" + img + ".jpg", place);
    Worrior.draw(place);
    return Worrior;
}



function worriorTurn(worrior, blockId) {
    $("#" + worrior.getWorriorId()).clickToggle(function(ev) {
            console.log("hnaaaaa" + blockId);
            worrior.availableMoves(blockId);
            move(worrior);

        },
        function(ev) {
            $("div").removeClass('hint');
        });

};


function move(worrior) {

    $(".hint").on('click', function(event) {
        if (turn && worrior.id == 1 && event.target.id != "worrior-1") {
            var blockId = event.target.id;

            //check for collision
            worriorOneFight.checkFight(worriorOneFight, worriorTwoFight, blockId, holdeTow);
            worriorOneFight.checkCastle(blockId)


            console.log(event.target.id);
            $("div").removeClass('hint');
            $("#" + worrior.getWorriorId()).remove();
            worrior = createWorrior(1, "One", blockId); //worrior One
            turn = !turn;
            holdOne = blockId;
            //console.log("worrior One turn");
            worriorTurn(worriorTwo, '#' + holdeTow);

        } else if (!turn && worrior.id == 2 && event.target.id != "worrior-2") {
            var blockId = event.target.id

            //check for collision
            worriorTwoFight.checkFight(worriorTwoFight, worriorOneFight, blockId, holdOne)
            worriorTwoFight.checkCastle(blockId)
            console.log(event.target.id);
            $("div").removeClass('hint');
            $("#" + worrior.getWorriorId()).remove();
            worrior = createWorrior(2, "Two", blockId); //worrior Two
            holdeTow = blockId;
            turn = !turn;
            //console.log("worrior Two turn");
            worriorTurn(worriorOne, '#' + holdOne);

        }

    });


}