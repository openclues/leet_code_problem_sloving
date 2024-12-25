void main(List<String> args) {
  distributeMoves();
}

List moves = [
  [0, 0],
  [1, 1],
  [0, 1],
  [0, 2],
  [1, 0],
  [2, 0]
];

distributeMoves() {
  Grid grid = Grid();
  int filledCells = 0;
  for (int i = 0; i < moves.length; i++) {
    String player = i % 2 == 0 ? "A" : "B";
    int x = moves[i][0], y = moves[i][1];
    Cell cell = grid.getCell(x, y);
    if (cell.isEmpty()) {
      cell.player = player;
      filledCells++;
      if (grid.isWinner(x, y, player)) {
        print(player); // Winner
        return player;
      }
    }
  }
  print(filledCells == 9 ? "Draw" : "Pending");
  return filledCells == 9 ? "Draw" : "Pending";
}

class Grid {
  late List<List<Cell>> cells;

  Grid() {
    cells = List.generate(
        3, (x) => List.generate(3, (y) => Cell(x: x, y: y, player: null)));
  }

  Cell getCell(int x, int y) => cells[x][y];

  bool isWinner(int x, int y, String player) {
    // Row, column, main diagonal, anti-diagonal checks
    return cells[x].every((cell) => cell.player == player) || // Row
        cells.every((row) => row[y].player == player) || // Column
        (x == y &&
            [0, 1, 2]
                .every((i) => cells[i][i].player == player)) || // Main diagonal
        (x + y == 2 &&
            [
              0,
              1,
              2
            ].every((i) => cells[i][2 - i].player == player)); // Anti-diagonal
  }
}

class Cell {
  final int x, y;
  String? player;

  Cell({required this.x, required this.y, this.player});

  bool isEmpty() => player == null;
}
