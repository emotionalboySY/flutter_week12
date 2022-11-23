import 'package:flutter/material.dart';

import 'editpage.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scores'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScorePanel(),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EditPage()));
          }, child: Text('Edit')),
        ],
      ),
    );
  }
}

class ScorePanel extends StatelessWidget {
  const ScorePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Mid-Term', style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 20,
            ),
            Text('0', style: TextStyle(fontSize: 20),),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Final', style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 20,
            ),
            Text('0', style: TextStyle(fontSize: 20),),
          ],
        ),
      ],
    );
  }
}
