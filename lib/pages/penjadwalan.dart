import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jadwal Kegiatan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SchedulePage(),
    );
  }
}

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  List<String> activities = [];

  void addActivity(String activity) {
    setState(() {
      activities.add(activity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Kegiatan'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: activities.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(activities[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Tambah Kegiatan',
              ),
              onSubmitted: (text) {
                addActivity(text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
