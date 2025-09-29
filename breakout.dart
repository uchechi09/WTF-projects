import 'dart:math';

void main() async {
  await printSummaries();
}

// The only function you are to work on
Future<void> printSummaries() async {
  // Step 1: get all user IDs
  List<int> userIds = await fetchUserIds();

  // Step 2: loop through each userId
  for (var id in userIds) {
    // get username
    String username = getUsername(id);

    // get score (async)
    int score = await fetchUserScore(id);

    // print the message
    print("$username has a score of $score");
  }
}

// an asynchronous function which returns a list of ids
Future<List<int>> fetchUserIds() async {
  await Future.delayed(Duration(seconds: 2));

  return [101, 102, 103];
}

// A synchronous function which returns user name
String getUsername(int userId) {
  return "User$userId";
}

// Async function that simulates fetching a score for a user
Future<int> fetchUserScore(int userId) async {
  await Future.delayed(Duration(milliseconds: 500));

  return Random().nextInt(100);
}
