// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class TodoObject extends ParseObject {
  TodoObject() : super('Todo');

  String get title => get<String>('title') ?? '';
  set title(String value) => set<String>('title', value);

  String get description => get<String>('description') ?? '';
  set description(String value) => set<String>('description', value);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationId = 'UezJSiBdqvB9kioTYRQ7VxOz2KAmljebhyTSPo5Q';
  const keyClientKey = '1q9QnF8Qn5uTztmbr6N0GTN2I5Ne1F0V5Tohudcw';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey,
    autoSendSessionId: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({Key? key}) : super(key: key);

  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final List<TodoObject> _todos = [];

  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String vtitle = "";
        String vdescription = "";

        return AlertDialog(
          contentPadding: const EdgeInsets.all(16), // Set the padding as needed
          title: const Text("Task Details"),
          content: SizedBox(
            width: 600, // Set the width as needed
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    vtitle = value;
                  },
                  decoration: const InputDecoration(labelText: "Task Title"),
                ),
                TextField(
                  onChanged: (value) {
                    vdescription = value;
                  },
                  decoration:
                      const InputDecoration(labelText: "Task Description"),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () async {
                if (vtitle.isNotEmpty) {
                  TodoObject todo = TodoObject()
                    ..title = vtitle
                    ..description = vdescription;

                  try {
                    await todo.save();
                    setState(() {
                      _todos.add(todo);
                    });
                  } catch (e) {
                    // Handle the error as needed
                  }
                }
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignmet Flutter App with Back4App Integration"),
        backgroundColor: const Color(0xFFEADEFF),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                _todos[index].title,
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                _todos[index].description,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () async {
                  try {
                    await _todos[index].delete();
                    setState(() {
                      _todos.removeAt(index);
                    });
                  } catch (e) {
                    // Handle the error as needed
                  }
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
