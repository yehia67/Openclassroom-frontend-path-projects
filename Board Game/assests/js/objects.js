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
    /*  this.rowAndcol = position.split('-');
      this.row = parseInt(this.rowAndcol[1]);
      this.col = parseInt(this.rowAndcol[2]); */
    this.img = img;
    img = this.img;
    that = this;



    this.setposition = function(place) {
        var position = place;

        var rowAndcol = position.split('-');
        var row = parseInt(rowAndcol[1]);
        var col = parseInt(rowAndcol[2]);
        return [row, col];
    }
    this.availableMoves = function(place) {
        var rowCol = that.setposition(place);
        var row = rowCol[0];
        var col = rowCol[1];
        console.log("USedddddd   available row " + row);
        console.log("USedddddd   available col " + col);
        //negative row
        for (let index = -1; index > -4; index--) {
            if (!($('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col + " div").hasClass("unempty"))) {
                $('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col).addClass('hint');
            } else {
                break;
            }

        }
        //positive row
        for (let index = 1; index < 4; index++) {
            if (!($('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col + " div").hasClass("unempty"))) {
                $('#' + "block-" + parseInt(parseInt(row) + parseInt(index)) + "-" + col).addClass('hint');
            } else {
                break;
            }

        }

        //negative col
        for (let index = -1; index > -4; index--) {
            if (!($('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index)) + " div").hasClass("unempty"))) {
                $('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index))).addClass('hint');
            } else {
                break;
            }

        }
        //positive col
        for (let index = 1; index < 4; index++) {
            if (!($('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index)) + " div").hasClass("unempty"))) {
                $('#' + "block-" + row + "-" + parseInt(parseInt(col) + parseInt(index))).addClass('hint');
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