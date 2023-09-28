import 'package:flutter/material.dart';

void main() {
  runApp(NotesApp());
}

class Note {
  final String title;
  final String content;
  final DateTime timestamp;

  Note({
    required this.title,
    required this.content,
    required this.timestamp,
  });
}

class NotesApp extends StatefulWidget {
  @override
  _NotesAppState createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  List<Note> notes = [];
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notes App'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                onChanged: (query) {
                  // Implement search functionality here
                  // Update the notes list based on the search query
                },
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];
                  return Card(
                    child: ListTile(
                      title: Text(note.title),
                      subtitle: Text(
                        '${note.timestamp.toLocal()}',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      onTap: () {
                        // Implement note editing screen here
                        // Allow users to edit and delete notes
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Implement note creation screen here
            // Allow users to create new notes
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
