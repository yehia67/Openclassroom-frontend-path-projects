function play() {
    var playerOneName = $('#playerOne').val();
    var PlayerTwoName = $('#playerTwo').val();
    if (playerOneName === "") {
        playerOneName = "Player One";
    }
    if (PlayerTwoName === "") {
        PlayerTwoName = "Player Two";
    }
    location.href = 'index.html?playerOne=' + playerOneName + '&' + 'playerTwo=' + PlayerTwoName;
}