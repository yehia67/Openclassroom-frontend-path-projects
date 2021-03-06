function castle(attack, defense, img, position) {
    this.attack = attack;
    this.defense = defense;
    this.img = img;
    this.owner = null;
    this.getId = function() {
        return "castle-" + attack + "-" + defense;
    };

    this.draw = function() {
        $("#" + position).append("<div id='" + "castle-" + attack + "-" + defense + "' " + " class='castle'></div>");
        $('#' + "castle-" + attack + "-" + defense).css("width", "60px");
        $('#' + "castle-" + attack + "-" + defense).css("height", "60px"); + "' "
        $('#' + "castle-" + attack + "-" + defense).css("margin", "4px auto"); + "' "
        $('#' + "castle-" + attack + "-" + defense).css("background-image", "url(./assests/res/img/" + img + ")");
        $('#' + "castle-" + attack + "-" + defense).css("background-repeat", "no-repeat");

    };

    this.setOwner = function(owner) {
        this.owner = owner;
    };

};

function WorriorsFight(worrior, attack, deffense) {
    this.lifePoints = 100;
    this.attack = attack;
    this.defense = deffense;
    this.defensePosition = false;
    var that = this;
    //conditions
    this.checkCastle = function(worriorPlace, changePlace) {
        console.log(castles);
        for (let i = 0; i < castles.length; i++) {
            if ($("#" + castles[i].getId()).parent().attr('id') === worriorPlace) {
                addCastle();
                worriorPlace = castles[i].getId();
                return true;

            }
        }
        return false;
    }

    this.checkFight = function(attackWorrior, attackedWorrior, worriorTurnPosition, worriorHoldPosition) {
        if (worriorTurnPosition === worriorHoldPosition) {
            pickAFight();
            $('.positionHandler').on('click', function() {
                startfight(attackWorrior, attackedWorrior);

            })

        }
    }

    //actions

    //collect castle
    function addCastle() {
        that.attack += 20;
        that.defense += 20;
        openCastle();
        makeAction();

        console.log("ATTACK!!! " + that.attack);
        console.log("DEFENSE!!! " + that.defense);

    }

    function startfight(attackWorrior, attackedWorrior) {
        if (defenseposition) {
            if (attackWorrior.attack > attackedWorrior.defense) {
                attackedWorrior.lifePoints -= attackWorrior.attack * 0.5;
                $(".positionHandler").off('click');
                makeAction();
            }
        } else {
            if (attackWorrior.attack > attackedWorrior.defense) {
                attackedWorrior.lifePoints -= attackWorrior.attack;
                $(".positionHandler").off('click');
                makeAction();
            }
        }

    }
}

function worrior(name, id, img, position) {
    this.name = name;
    this.id = id;
    this.lifePoints = 100;
    this.defaultCastle = 10;
    this.position = position;
    this.img = img;
    img = this.img;
    that = this;

    this.getPositionParam = function() {
        return position;
    }

    this.setposition = function(place) {
        var position = place;

        var rowAndcol = position.split('-');
        var row = parseInt(rowAndcol[1]);
        var col = parseInt(rowAndcol[2]);
        return [row, col];
    }
    this.availableMoves = function(place) {
        console.log("-------------------------------------------------------------");
        console.log("The Place is " + place);
        console.log("-------------------------------------------------------------");

        $("div").removeClass('hint');
        var rowCol = that.setposition(place);
        var row = rowCol[0];
        var col = rowCol[1];
        console.log("USedddddd   available row " + row);
        console.log("USedddddd   available col " + col);
        //negative row
        for (let index = -1; index > -4; index--) {
            if (!($('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col + " div").hasClass("unempty"))) {
                $('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col).addClass('hint');
                // console.log('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col);
            } else {
                break;
            }

        }
        //positive row
        for (let index = 1; index < 4; index++) {
            if (!($('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col + " div").hasClass("unempty"))) {
                $('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col).addClass('hint');
                //console.log('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col);
            } else {
                break;
            }

        }

        //negative col
        for (let index = -1; index > -4; index--) {
            if (!($('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index)) + " div").hasClass("unempty"))) {
                $('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index))).addClass('hint');
                //console.log('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index)));
            } else {
                break;
            }

        }
        //positive col
        for (let index = 1; index < 4; index++) {
            if (!($('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index)) + " div").hasClass("unempty"))) {
                $('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index))).addClass('hint');
                //console.log('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index)));
            } else {
                break;
            }

        }


    };
    this.nextMove = function() {

    };
    this.redraw = function(place) {
        that.setposition(place);
        $("#" + place).append("<div id='" + "worrior-" + this.id + "' " + " class='worrior'></div>");
        $('#' + "worrior-" + this.id).addClass('worrior');
        $('#' + "worrior-" + this.id).css("background-image", "url(./assests/res/img/" + this.img + ")");
    };
    this.draw = function(position) {
        that.setposition(position);
        $("#" + position).append("<div id='" + "worrior-" + this.id + "' " + " class='worrior'></div>");
        $('#' + "worrior-" + id).addClass('worrior');
        $('#' + "worrior-" + id).css("background-image", "url(./assests/res/img/" + this.img + ")");
    };
    this.getWorriorId = function() {
        return "worrior-" + id;
    };

}