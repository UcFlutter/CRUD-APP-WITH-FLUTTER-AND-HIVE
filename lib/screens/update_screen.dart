import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget {
  final int? index;
  final Data? data;
  const UpdateScreen({super.key, this.index, this.data});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Update Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Title',
                labelText: 'Title',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Description',
                labelText: 'Description',
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('UPDATE DATA'))
        ],
      ),
    );
  }
}
