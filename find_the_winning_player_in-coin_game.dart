void main(List<String> args) {
  String? winner = winningPlayer(2, 7); // Example Input: x = 2, y = 7
  print("Winner: $winner");
}

String winningPlayer(int x, int y) {
  int turn = 0;
  int desiredResult = 115;
  Game game = Game(xCount: x, yCount: y);

  while (true) {
    String currentPlayer = turn % 2 == 0 ? "Alice" : "Bob";

    // Try to use the maximum possible `75` coins
    int xUsed = desiredResult ~/ 75;
    if (xUsed > game.xcoins.length) xUsed = game.xcoins.length;

    desiredResult -= xUsed * 75;
    game.xcoins.removeRange(0, xUsed);

    // Use `10` coins for the remainder
    int yUsed = desiredResult ~/ 10;
    if (yUsed > game.ycoins.length) yUsed = game.ycoins.length;

    desiredResult -= yUsed * 10;
    game.ycoins.removeRange(0, yUsed);

    // If the desired result is not reached, the current player loses
    if (desiredResult > 0) {
      return currentPlayer == "Alice" ? "Bob" : "Alice";
    }

    // Reset for the next turn
    desiredResult = 115;
    turn++;
  }
}

class Game {
  int xCount;
  int yCount;

  List<Coin> xcoins = [];
  List<Coin> ycoins = [];

  Game({
    required this.xCount,
    required this.yCount,
  }) {
    xcoins = List.generate(xCount, (e) => Xcoin());
    ycoins = List.generate(yCount, (e) => Ycoin());
  }
}

class Coin {
  int value;
  Coin({required this.value});
}

class Xcoin extends Coin {
  Xcoin() : super(value: 75);
}

class Ycoin extends Coin {
  Ycoin() : super(value: 10);
}
