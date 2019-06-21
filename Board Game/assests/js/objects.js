function castle(attack, defense, img, position) {
    this.attack = attack;
    this.defense = defense;
    this.img = img;
    this.owner = null;
    $("#" + position).append("<div id='" + "castle-" + attack + "-" + defense + "' " + " class='castle'></div>");
    $('#' + "castle-" + attack + "-" + defense).css("width", "50px");
    $('#' + "castle-" + attack + "-" + defense).css("height", "50px");
    $('#' + "castle-" + attack + "-" + defense).css("margin", "4px auto");
    $('#' + "castle-" + attack + "-" + defense).css("background-image", "url(./assests/res/img/" + img + ")");
    this.draw = function() {
        $("#" + position).append("<div id='" + "castle-" + attack + "-" + defense + "' " + " class='castle'></div>");
        $('#' + "castle-" + attack + "-" + defense).css("width", "50px");
        $('#' + "castle-" + attack + "-" + defense).css("height", "50px"); + "' "
        $('#' + "castle-" + attack + "-" + defense).css("margin", "4px auto"); + "' "
        $('#' + "castle-" + attack + "-" + defense).css("background-image", "url(./assests/res/img/" + img + ")");
    };

    this.setOwner = function(owner) {
        this.owner = owner;
    };

};

function worrior(name, id, img, position) {
    this.name = name;
    this.id = id;
    this.lifePoints = 100;
    this.defaultCastle = 10;
    this.position = position;
    this.rowAndcol = position.split('-');
    this.row = parseInt(this.rowAndcol[1]);
    this.col = parseInt(this.rowAndcol[2]);
    this.img = img;
    img = this.img;
    that = this;


    this.getPosition = function() { return this.position };

    this.availableMoves = function() {
        console.log("available row " + this.row);
        console.log("available col " + this.col);
        //negative row
        for (let index = -1; index > -4; index--) {
            if (!($('#' + "block-" + parseInt(parseInt(this.row) + parseInt(index)) + "-" + this.col + " div").hasClass("unempty"))) {
                $('#' + "block-" + parseInt(parseInt(this.row) + parseInt(index)) + "-" + this.col).addClass('hint');
            } else {
                break;
            }

        }
        //positive row
        for (let index = 1; index < 4; index++) {
            if (!($('#' + "block-" + parseInt(parseInt(this.row) + parseInt(index)) + "-" + this.col + " div").hasClass("unempty"))) {
                $('#' + "block-" + parseInt(parseInt(this.row) + parseInt(index)) + "-" + this.col).addClass('hint');
            } else {
                break;
            }

        }

        //negative col
        for (let index = -1; index > -4; index--) {
            if (!($('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(index)) + " div").hasClass("unempty"))) {
                $('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(index))).addClass('hint');
            } else {
                break;
            }

        }
        //positive col
        for (let index = 1; index < 4; index++) {
            if (!($('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(index)) + " div").hasClass("unempty"))) {
                $('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(index))).addClass('hint');
            } else {
                break;
            }

        }


    };
    this.nextMove = function() {

    };
    this.redraw = function(place) {
        $("#" + place).append("<div id='" + "worrior-" + this.id + "' " + " class='worrior'></div>");
        $('#' + "worrior-" + this.id).addClass('worrior');
        $('#' + "worrior-" + this.id).css("background-image", "url(./assests/res/img/" + this.img + ")");
    };
    this.draw = function() {
        $("#" + this.position).append("<div id='" + "worrior-" + this.id + "' " + " class='worrior'></div>");
        $('#' + "worrior-" + this.id).addClass('worrior');
        $('#' + "worrior-" + this.id).css("background-image", "url(./assests/res/img/" + this.img + ")");
    };
    this.getWorriorId = function() {
        return "worrior-" + id;
    };

}