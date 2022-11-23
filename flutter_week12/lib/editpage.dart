import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Scores'),
      ),
      body: EditPanel(),
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
            TextButton(onPressed: () {}, child: Text('-', style: TextStyle(fontSize: 16),)),
            Text('0', style: TextStyle(fontSize: 16),),
            TextButton(onPressed: () {}, child: Text('+', style: TextStyle(fontSize: 16),)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text('Final', style: TextStyle(fontSize: 16),), width: 100,),
            TextButton(onPressed: () {}, child: Text('-', style: TextStyle(fontSize: 16),)),
            Text('0', style: TextStyle(fontSize: 16),),
            TextButton(onPressed: () {}, child: Text('+', style: TextStyle(fontSize: 16),)),
          ],
        ),
      ],
    );
  }
}
