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
    this.position = position.split('-');
    this.row = parseInt(this.position[1]);
    this.col = parseInt(this.position[2]);
    this.img = img;
    img = this.img;
    that = this;
    this.avMoves = [];
    this.removeHints = function() {
        for (let index = 0; index < that.avMoves.length; index++) {

            $('#' + String(that.avMoves[index])).removeClass('hint');
        }
        that.avMoves = [];
    };
    this.getPosition = function() { return position };
    changePosition = function(pos) {
        that.position = pos.split('-');
        that.row = parseInt(that.position[1]);
        that.col = parseInt(that.position[2]);

    }

    this.availableMoves = function() {
        avRowCol(this.row, this.col, that.avMoves);
    };
    /*  this.nextMove = function() {
         var moves = that.avMoves;
         for (const index in moves) {
             $("#" + String(moves[index])).click(function() {
                 $('#' + "worrior-" + id).remove();
                 $('#' + String(moves[index])).append("<div id='" + "worrior-" + id + "' " + " class='worrior'></div>");
                 $('#' + "worrior-" + id).addClass('worrior');
                 $('#' + "worrior-" + id).css("background-image", "url(./assests/res/img/" + img + ")");
                 changePosition(moves[index]);
             });
         }
     } */
    this.draw = function() {
        $("#" + "block-" + this.row + "-" + this.col).append("<div id='" + "worrior-" + id + "' " + " class='worrior'></div>");
        $('#' + "worrior-" + id).addClass('worrior');
        $('#' + "worrior-" + id).css("background-image", "url(./assests/res/img/" + this.img + ")");
    };
    this.getWorriorId = function() {
        return "worrior-" + id;
    };

}