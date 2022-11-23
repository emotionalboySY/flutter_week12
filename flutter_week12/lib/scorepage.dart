import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scores'),
      ),
      body: ScorePanel(),
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
          children: [
            Text('Mid-Term', style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 20,
            ),
            Text('0', style: TextStyle(fontSize: 20),),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
