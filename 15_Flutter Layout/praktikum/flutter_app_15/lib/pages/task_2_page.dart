import 'package:flutter/material.dart';
import 'package:flutter_app_15/models/icons.dart';
import 'package:flutter_app_15/widgets/icon_widget.dart';

class TaskDuaPage extends StatelessWidget {
  const TaskDuaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView in Flutter'),
        centerTitle: true,
      ),
      body: const GridViewIcon(),
    );
  }
}

class GridViewIcon extends StatelessWidget {
  const GridViewIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) => IconWidget(dataIcons[index]),
      itemCount: dataIcons.length,
    );
  }
}
