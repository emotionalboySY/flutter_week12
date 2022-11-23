import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'scores.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Scores'),
      ),
      body: const EditPanel(),
    );
  }
}

class EditPanel extends StatelessWidget {
  const EditPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text('Mid-Term', style: TextStyle(fontSize: 16),), width: 100,),
            TextButton(
                onPressed: () {
                  context.read<Scores>().decreaseMidTerm();
                  },
                child: Text('-', style: TextStyle(fontSize: 16),)),
            Text(context.watch<Scores>().midTermExam.toString(), style: TextStyle(fontSize: 16),),
            TextButton(
                onPressed: () {
                  context.read<Scores>().increaseMidTerm();
                },
                child: Text('+', style: TextStyle(fontSize: 16),)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text('Final', style: TextStyle(fontSize: 16),), width: 100,),
            TextButton(
                onPressed: () {
                  context.read<Scores>().decreaseFinal();
                },
                child: Text('-', style: TextStyle(fontSize: 16),)),
            Text(context.watch<Scores>().finalExam.toString(), style: TextStyle(fontSize: 16),),
            TextButton(
                onPressed: () {
                  context.read<Scores>().increaseFinal();
                },
                child: Text('+', style: TextStyle(fontSize: 16),)),
          ],
        ),
      ],
    );
  }
}
