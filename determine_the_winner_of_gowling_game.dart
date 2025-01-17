void main(List<String> args) {
  isWinner([1, 6, 10, 2, 2], [1, 4, 10, 4, 4]);
}

int isWinner(List<int> player1, List<int> player2) {
  int player1Count = 0;

  int player2Count = 0;

  for (int i = 0; i < player1.length; i++) {
    if (i == 1 && player1[i - 1] == 10) {
      player1Count = player1Count + (2 * player1[i]);
    } else if (i > 1 && (player1[i - 1] == 10 || player1[i - 2] == 10)) {
      player1Count = player1Count + (2 * player1[i]);
    } else {
      player1Count = player1Count + player1[i];
    }

    if (i == 1 && player2[i - 1] == 10) {
      player2Count = player2Count + (2 * player2[i]);
    } else if (i > 1 && (player2[i - 1] == 10 || player2[i - 2] == 10)) {
      player2Count = player2Count + (2 * player2[i]);
    } else {
      player2Count = player2Count + player2[i];
    }
  }
  if (player2Count > player1Count) {
    return 2;
  } else if (player1Count > player2Count) {
    return 1;
  } else {
    return 0;
  }
}



//  player1 = [5,10,3,2], player2 = [6,5,7,3]

// You are given two 0-indexed integer arrays player1 and player2, representing the number of pins that player 1 and player 2 hit in a bowling game, respectively.

// The bowling game consists of n turns, and the number of pins in each turn is exactly 10.

// Assume a player hits xi pins in the ith turn. The value of the ith turn for the player is:

// 2xi if the player hits 10 pins in either (i - 1)th or (i - 2)th turn.
// Otherwise, it is xi.
// The score of the player is the sum of the values of their n turns.

// Return

// 1 if the score of player 1 is more than the score of player 2,
// 2 if the score of player 2 is more than the score of player 1, and
// 0 in case of a draw.
 

