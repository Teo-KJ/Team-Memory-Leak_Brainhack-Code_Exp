// singleton class to act as database
// by right supposed to be handled by backend, but just for demo in hackathon its implemented this way

class Database {
  Database._privateConstructor();
  static final Database _instance = Database._privateConstructor();
  static Database get instance => _instance;

  void getAllStalls() {}
}
