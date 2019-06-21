jQuery.fn.clickToggle = function(a, b) {
    return this.on("click", function(ev) {
        [b, a][this.$_io ^= 1].call(this, ev)
    })
}

function block(row, col, empty) {
    this.side = 30;
    this.row = row;
    this.col = col;
    this.empty = empty;
    this.busy = false;
    this.draw = function() {
        if (empty) {
            return "<div id='" + "block-" + row + "-" + col + "' " + " class='block'></div>"
        } else {
            return "<div id='" + "block-" + row + "-" + col + "' " + " class='block'><div class='unempty'></div>"
        }
    };
    this.getBlock = function() {
        return "block-" + row + "-" + col;
    };

    this.beBusy = function() {
        busy = false;
    };
    this.free = function() {
        busy = false;
    }

};



//var avMoves = [];



var blocks = [];




function board() {

    var index = 0;
    $("#game").css("width", "960px");
    $("#game").css("height", "960px");
    var unempty = [];
    //initialize unempty blocks
    for (let index = 0; index < 64; index++) {
        unempty.push(Math.floor(Math.random() * 255));

    }
    //draw board
    for (let i = 0; i < 16; i++) {
        for (let j = 0; j < 16; j++) {
            if (unempty.includes(index))
                blocks[index] = new block(i, j, false);
            else
                blocks[index] = new block(i, j, true);
            $("#game").append(blocks[index].draw());
            index++;
        }
    }

    //draw castle
    drawCastle(blocks);

};
var turn = 0;


function drawCastle(blocks) {
    var castlesName = ['stark.jpg', 'targedyan.jpg', 'lanyster.jpg', 'barathone.jpg'];
    //generate randome plcae

    var starkCastle = new castle(80, 45, castlesName[0], randomPlace(blocks));

    var targedyanCastel = new castle(100, 100, castlesName[1], randomPlace(blocks));

    var laynsterCastel = new castle(75, 90, castlesName[2], randomPlace(blocks));

    var barathonCastel = new castle(110, 95, castlesName[3], randomPlace(blocks));


    starkCastle.draw();
    targedyanCastel.draw();
    laynsterCastel.draw();
    barathonCastel.draw();
}

//generate  random place
function randomPlace(blocks) {
    var rand = Math.floor(Math.random() * 255);
    for (var i in blocks) {
        if (blocks[rand].empty && (blocks[rand].busy === false)) {
            blocks[rand].beBusy();
            return blocks[rand].getBlock();
        }
        rand = Math.floor(Math.random() * 255);
    }

    randomPlace(block);
}