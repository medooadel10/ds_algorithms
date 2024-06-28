int main() {
  List<TaskModel> tasks = [
    TaskModel('Task 3', 1),
    TaskModel('Task 3', 0),
  ];
  tasks.sort((a, b) {
    if (a.priority == b.priority) {
      return 0;
    } else if (a.priority < b.priority) {
      return -1;
    } else {
      return -1;
    }
  });
  for (var task in tasks) {
    print('${task.name} - ${task.priority}');
  }
  return 0;
}

class TaskModel {
  final String name;
  final int priority;

  TaskModel(this.name, this.priority);
}
