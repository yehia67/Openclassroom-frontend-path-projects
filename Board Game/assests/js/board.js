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

    };
    this.free = function() {
        busy = false;
    }

};



//var avMoves = [];



var blocks = [];

function avRowCol(row, col, avMoves) {
    avMoves.length = 0;
    var hold, back = -1;
    var rowforward = true,
        rowbackward = true,
        colforward = true,
        colbackward = true;
    //rows
    for (let i = 1; i < 7; i++) {
        if (i < 4 && rowforward) {
            hold = row + i;
            if ($('#' + "block-" + hold + "-" + col).length) {
                if ($('#' + "block-" + hold + "-" + col).children("div").attr("class") == "unempty") {
                    rowforward = false;
                    continue;
                } else {
                    $('#' + "block-" + hold + "-" + col).addClass('hint');
                    avMoves.push("block-" + hold + "-" + col);
                }
            }
        } else if (rowbackward && back > -4) {
            hold = row + back;
            if ($('#' + "block-" + hold + "-" + col).length) {
                if ($('#' + "block-" + hold + "-" + col).children("div").attr("class") == "unempty") {
                    rowbackward = false;
                    continue;
                } else {
                    $('#' + "block-" + hold + "-" + col).addClass('hint');
                    avMoves.push("block-" + hold + "-" + col);
                }
            }
            back--;
        }
    }

    //colums
    back = -1;
    for (let i = 1; i < 7; i++) {
        if (i < 4 && colforward) {
            hold = col + i;
            if ($('#' + "block-" + row + "-" + hold).length) {
                if ($('#' + "block-" + row + "-" + hold).children("div").attr("class") == "unempty") {
                    colforward = false;
                    continue;
                } else {
                    $('#' + "block-" + row + "-" + hold).addClass('hint');
                    avMoves.push("block-" + row + "-" + hold);

                }
            }
        } else if (colbackward && back > -4) {
            hold = col + back;
            if ($('#' + "block-" + row + "-" + hold).length) {
                if ($('#' + "block-" + row + "-" + hold).children("div").attr("class") == "unempty") {
                    colbackward = false;
                    continue;
                } else {
                    $('#' + "block-" + row + "-" + hold).addClass('hint');
                    avMoves.push("block-" + row + "-" + hold);
                }
            }
            back--;
        }
    }
    console.log(avMoves);
};


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