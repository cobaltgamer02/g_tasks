class Task {
  String content;
  DateTime time;
  bool done;

  Task({
    required this.content,
    required this.time,
    required this.done,
  });

  factory Task.fromMap(Map task) {
    return Task(
      content: task["content"],
      time: task["timestamp"],
      done: task["done"],
    );
  }

  Map toMap() {
    return {
      "content": content,
      "timestamp": time,
      "done": done,
    };
  }
}
