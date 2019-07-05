function play() {
    var playerOneName = $('#playerOne').val();
    var PlayerTwoName = $('#playerTwo').val();
    if (playerOneName === "") {
        playerOneName = "PlayerOne";
    }
    if (PlayerTwoName === "") {
        PlayerTwoName = "PlayerTwo";
    }
    location.href = 'index.html?playerOne=' + playerOneName + '&' + 'playerTwo=' + PlayerTwoName;
}