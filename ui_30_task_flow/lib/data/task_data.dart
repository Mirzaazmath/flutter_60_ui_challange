
import 'package:flutter/material.dart';

class Task{
  final String title;
  final String time;
  List<String> tags;
  final Color color;

  Task({required this.title, required this.time, required this.color,required this.tags});}

List<Task>taskList=[
  Task(title: "Morning Standup with Team", time: "09:00 - 09:30 AM", color: Colors.green, tags: ["Meet","Standup"]),
  Task(title: "Design Edits", time: "09:30 - 10:00 AM", color: Colors.purple, tags: ["Design","Updates","Figma","UI/UX"]),
  Task(title: "Mooadboard creation", time: "10:00 - 10:30 AM", color: Colors.deepOrange, tags: ["Pinterest","Miro"]),
  Task(title: "Design Meet", time: "10:30 - 11:30 AM", color: Colors.green, tags: ["Meet","Design"]),
  Task(title: "App Design", time: "11:30 - 12:00 PM", color: Colors.purple, tags: ["App","Development"]),
  Task(title: "Client Edits Responses", time: "12:00 - 12:30 PM", color: Colors.deepOrange, tags: ["Edits","Client",]),

];