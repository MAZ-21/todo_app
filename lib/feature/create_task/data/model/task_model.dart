// feature/create_task/data/model/task_model.dart
import 'package:flutter/material.dart';

class TaskModel {
  final String title;
  final String? description;
  final DateTime? date;
  final TimeOfDay? time;
  final String? priority;

  TaskModel({
    required this.title,
    this.description,
    this.date,
    this.time,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'date': date?.toIso8601String(),
      'time': time != null ? '${time!.hour}:${time!.minute}' : null,
      'priority': priority,
    };
  }
}