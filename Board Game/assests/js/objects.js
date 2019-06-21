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
        $('#' + "block-" + parseInt(parseInt(this.row) + parseInt(-3)) + "-" + this.col).addClass('hint');
        $('#' + "block-" + parseInt(parseInt(this.row) + parseInt(-2)) + "-" + this.col).addClass('hint');
        $('#' + "block-" + parseInt(parseInt(this.row) + parseInt(-1)) + "-" + this.col).addClass('hint');
        $('#' + "block-" + parseInt(parseInt(this.row) + parseInt(3)) + "-" + this.col).addClass('hint');
        $('#' + "block-" + parseInt(parseInt(this.row) + parseInt(2)) + "-" + this.col).addClass('hint');
        $('#' + "block-" + parseInt(parseInt(this.row) + parseInt(1)) + "-" + this.col).addClass('hint');

        $('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(-3))).addClass('hint');
        $('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(-2))).addClass('hint');
        $('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(-1))).addClass('hint');
        $('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(3))).addClass('hint');
        $('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(2))).addClass('hint');
        $('#' + "block-" + this.row + "-" + parseInt(parseInt(this.col) + parseInt(1))).addClass('hint');


    };
    this.nextMove = function() {

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