import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FilterResultPage extends StatefulWidget {
  const FilterResultPage({Key? key, this.username}) : super(key: key);

  final String? username;

  @override
  State<FilterResultPage> createState() => _FilterResultPageState();
}

class _FilterResultPageState extends State<FilterResultPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat List"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('chat').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          else if (snapshot.hasError) {
            return const Center(
              child: Text('An error ocurred when reading data from firebase'),
            );
          }
          else {
            List<String> searchList = <String>[];
            for (var element in snapshot.data!.docs) {
              if(element['userName'] == widget.username) {
                searchList.add("${element['text']} : by ${element['userName']}");
              }
            }
            return ListView.builder(
              itemCount: searchList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchList[index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}