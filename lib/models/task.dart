class Task {
  final String text;
  bool done;

  Task({this.text, this.done = false});

  void toggleDone() {
    done = !done;
  }
}
