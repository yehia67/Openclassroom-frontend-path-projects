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
    this.avMoves = [];
    this.setrowAndCol = function() {
        that.rowAndcol = that.position.split('-');
        that.row = parseInt(that.rowAndcol[1]);
        that.col = parseInt(that.rowAndcol[2]);
        console.log("new Row value " + that.row);
        console.log("new Col value " + that.col);
    };
    this.removeHints = function() {
        for (let index = 0; index < that.avMoves.length; index++) {

            $('#' + String(that.avMoves[index])).removeClass('hint');
        }
        that.avMoves = [];
    };
    this.getPosition = function() { return this.position };
    this.changePosition = function(pos) {
        console.log("change position param " + pos);
        console.log("change position old value " + this.position);
        this.position = pos;
        console.log("change position new value " + this.position);
        that.setrowAndCol();
    }

    this.availableMoves = function() {
        console.log("available row " + this.row);
        console.log("available col " + this.col);
        console.log("availablle old av Moves" + that.avMoves);
        avRowCol(this.row, this.col, that.avMoves);
        console.log("availablle new av Moves" + that.avMoves);
    };
    this.nextMove = function() {
        var moves = that.avMoves;
        for (const index in moves) {
            $("#" + String(moves[index])).click(function() {
                $('#' + "worrior-" + id).remove();
                console.log("ID ----------------------- " + this.id);
                that.removeHints();
                $('#' + String(moves[index])).append("<div id='" + "worrior-" + id + "' " + " class='worrior'></div>");
                $('#' + "worrior-" + id).addClass('worrior');
                $('#' + "worrior-" + id).css("background-image", "url(./assests/res/img/" + img + ")");
                that.changePosition(moves[index]);
                //   that.availableMoves();
            });
        }
    };
    this.redraw = function() {
        $('#' + "worrior-" + this.id).remove();
        that.draw();
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