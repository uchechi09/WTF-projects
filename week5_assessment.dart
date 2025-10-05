import 'dart:io';

void main() {
  ToDoManager toDoList = ToDoManager();

  while (true) {
    print("To Do List Mananger");
    print(
      " 1. Add Task \n 2. View Task \n 3. Mark as Done \n 4. Delete Task \n 5. Exit",
    );
    String? userInput = stdin.readLineSync();
    switch (userInput) {
      case "1":
        print("Enter task description");
        String? taskDescription = stdin.readLineSync();
        if (taskDescription != null && taskDescription.isNotEmpty) {
          toDoList.addTask(taskDescription);
        } else {
          print("Description can not be empty");
        }
        break;
      case "2":
        toDoList.viewTask();

        break;
      case "3":
        print("Enter the task id you want to mark as done");
        int? taskId = int.tryParse(stdin.readLineSync()!);
        if (taskId != null) {
          toDoList.markAsDone(taskId);
          print("Task marked as done");
        } else {
          print("invalid id");
        }
        break;
      case "4":
        print("Enter the id of the task you want to delete");
        int? id = int.tryParse(stdin.readLineSync()!);
        if (id != null) {
          toDoList.deleteTask(id);
        }
      case "5":
        print("Goodbye, have a productive day");
        return;
      default:
        print("invalid input, please enter a number between 1-5");
    }
  }
}

class Task {
  int id;
  String description;
  bool isDone;
  Task(this.id, this.description, {this.isDone = false});

  void markAsDone() {
    isDone = true;
  }

  @override
  String toString() {
    String status;
    if (isDone) {
      status = "[x]";
    } else {
      status = "[ ]";
    }
    return status + id.toString() + " - " + description;
  }
}

class ToDoManager {
  List tasks = [];
  int newId = 1;

  void addTask(String description) {
    Task newTask = Task(newId, description);
    tasks.add(newTask);
    newId++;
    print("Task added successfully");
  }

  void markAsDone(int id) {
    for (var task in tasks) {
      if (task.id == id) {
        task.markAsDone();
        return;
      }
    }
    print("invalid id");
  }

  void viewTask() {
    if (tasks.isEmpty) {
      print("There is no task available");
    } else {
      for (var task in tasks) {
        print(task);
      }
    }
  }

  void deleteTask(int id) {
    for (var task in tasks) {
      if (task.id == id) {
        tasks.remove(task);
        print("Task deleted successfully");
        return;
      }else{
        print("invalid id");
      }
    }
    
  }
}
 