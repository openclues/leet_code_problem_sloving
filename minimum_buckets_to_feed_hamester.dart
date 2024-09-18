// You are given a 0-indexed string hamsters where hamsters[i] is either:

// 'H' indicating that there is a hamster at index i, or
// '.' indicating that index i is empty.
// You will add some number of food buckets at the empty indices in order to feed the hamsters. A hamster can be fed if there is at least one food bucket to its left or to its right. More formally, a hamster at index i can be fed if you place a food bucket at index i - 1 and/or at index i + 1.

// Return the minimum number of food buckets you should place at empty indices to feed all the hamsters or -1 if it is impossible to feed all of them.

//input = String("H..H")

//output = 1 ()

void main(List<String> args) {
  print(minimumBucketsToFeedHamster("H..H"));
}

int minimumBucketsToFeedHamster(String hamsters) {
  int count = 0;
  for (int i = 0; i < hamsters.length; i++) {
    if (hamsters[i] == '.') {
      count++;
    }
  }
  return count;
}
