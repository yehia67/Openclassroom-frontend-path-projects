var qs = window.location.href.split('=')
console.log(qs)
var playerOneName = qs[1].split('&')
playerOneName = playerOneName[0]
console.log("PLAYYYYYYYYYYYYYER ONEE  " + playerOneName)
var playerTwoName = qs[2]
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

    makeAction();
    console.log("one")
    worriorTurn(worriorOne, x);

    // Make Labels
}

function makeAction() {
    $('.labels').remove();
    $("#game").append(" <div class='labels'> <div class='label player-one'><div class='label-name '>" + playerOneName + "</div><div class='label-score'>Score: " +
        worriorOneFight.lifePoints + "<br/>  " + "<div>" + "ATK: " + worriorOneFight.attack + " " + "<br>" + "DEF: " + worriorOneFight.defense + "</div>" +
        "</div> </div><div class='label player-two'> <div class='label-name'>" + playerTwoName + "</div>  <div class='label-score'>Score: " + worriorTwoFight.lifePoints + "<br/>  " +
        "<div>" + "ATK: " + worriorTwoFight.attack + " " + "<br>" + "DEF: " + worriorTwoFight.defense + "</div>" +
        "</div></div></div>");
    if (worriorOneFight.lifePoints <= 0) {
        alert("Game is Done Congratulation  " + playerTwoName);
        location.href = 'home.html'
    } else if (worriorTwoFight.lifePoints <= 0) {
        alert("Game is Done Congratulation " + playerOneName);
        location.href = 'home.html'
    }
    $("#game").append("<div class='action-label lable-one-place'></div><div class='action-label lable-two-place'></div>")
    $('.action-label').html(playerOneName + " Turn");
}

function createWorrior(id, img, place) {
    var Worrior = new worrior("worrior-" + id, id, "worrior" + img + ".jpg", place);
    Worrior.draw(place);
    return Worrior;
}



function worriorTurn(worrior, blockId) {
    $("#" + worrior.getWorriorId()).clickToggle(function(ev) {

            worrior.availableMoves(blockId);


            move(worrior);

        },
        function(ev) {
            $(".hint").off('click');
            $("div").removeClass('hint');
        });

};

function getBlockPlace(blockId) {
    console.log("YARBA YARAB  " + blockId.search("wo"));
    if (blockId.search("ca") == -1 && blockId.search("wo") == -1) {

        return blockId;

    } else {
        return $('#' + blockId).parent().attr('id');

    }

}

function move(worrior) {

    $(".hint").on('click', function(event) {
        if (turn && worrior.id == 1 && event.target.id != "worrior-1") {
            var blockId = event.target.id;
            var blockplace = getBlockPlace(blockId);
            var getCastleParent;
            //check for collision
            worriorOneFight.checkFight(worriorOneFight, worriorTwoFight, event.target.parentElement.id, holdeTow);
            getCastleParent = worriorOneFight.checkCastle(blockplace)
            if (getCastleParent) {
                blockplace = blockId;
                console.log("***************************************************************trueee" + blockplace);
            }

            $(".hint").off('click');
            $("div").removeClass('hint');
            $("#worrior-1").remove();
            worrior = createWorrior(1, "One", blockplace); //worrior One
            turn = !turn;

            holdOne = getBlockPlace(blockId);
            //console.log("worrior One turn");
            $('.action-label').html(playerTwoName + " Turn");

            worriorTurn(worriorTwo, '#' + holdeTow);

        } else if (!turn && worrior.id == 2 && event.target.id != "worrior-2") {
            var blockId = event.target.id
            var blockplace = getBlockPlace(blockId);
            var getCastleParent;
            //check for collision
            worriorTwoFight.checkFight(worriorTwoFight, worriorOneFight, blockplace, holdOne)
            getCastleParent = worriorTwoFight.checkCastle(blockplace)
            if (getCastleParent) {
                blockplace = blockId;
                console.log("***************************************************************trueee" + blockplace);
            }
            $(".hint").off('click');
            $("div").removeClass('hint');

            $("#worrior-2").remove();
            worrior = createWorrior(2, "Two", blockplace); //worrior Two
            holdeTow = getBlockPlace(blockId);
            turn = !turn;


            //console.log("worrior Two turn");
            $('.action-label').html(playerOneName + " Turn");
            worriorTurn(worriorOne, '#' + holdOne);

        }

    });


}