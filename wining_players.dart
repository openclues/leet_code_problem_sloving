int winningPlayerCount(int n, List<List<int>> pick) {
  List<Player> players = List.generate(n, (e) => Player(id: e, balls: []));
  Set<Player> winners = {};
  for (int i = 0; i < pick.length; i++) {
    Player? player;
    try {
      player = players.firstWhere((e) => e.id == pick[i][0]);
      int oneColorCount = player.addBall(pick[i][1]);
      if (player.id == 0) {
        winners.add(player);
      } else if (player.id + 1 <= oneColorCount) {
        print(oneColorCount);
        winners.add(player);
      }
    } catch (e) {}
  }
  // print(players[1]);
  return winners.length;
}

// playerIsAwinner(int ballColor, List previousColors, int player) {}

List<List<int>> piks = [
  [0, 0],
  [1, 0],
  [1, 0],
  [2, 1],
  [2, 1],
  [2, 0]
];

int n = 5;

void main(List<String> args) {
  winningPlayerCount(n, piks);
}

class Player {
  int id;
  List<Ball> balls;
  Player({
    required this.id,
    required this.balls,
  });

  addBall(int color) {
    Ball? ball = getBall(balls, color);
    if (ball != null) {
      ball.count++;
      return ball.count;
    } else {
      balls.add(Ball(color: color, count: 1));
      return 1;
    }
  }
  //to String

  @override
  String toString() {
    return "${id}  ${balls} ";
  }
}

getBall(List<Ball> previousBalls, int myNewBallColor) {
  for (Ball ball in previousBalls) {
    if (ball.color == myNewBallColor) {
      return ball;
    }
  }
}

class Ball {
  int color;
  int count;
  Ball({
    required this.color,
    required this.count,
  });

  @override
  String toString() {
    return "${color} $count";
    return super.toString();
  }
}
