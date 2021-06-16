import 'package:flutter/material.dart';
import 'package:flutter_application/services/database.dart';
import 'package:material_dialogs/material_dialogs.dart';

Future<void> congratsDialog(BuildContext context, int numPoints) {
  return Dialogs.materialDialog(
    color: Colors.white,
    msg:
        'Congratulations, you won $numPoints points. Your total points now is ${Database.instance.currentPoints + numPoints}. You can see your updated points amount in the profile page',
    title: 'Congratulations',
    animation: 'assets/cong_example.json',
    context: context,
    actions: [
      FlatButton.icon(
        onPressed: () {
          Database.instance.currentPoints += numPoints;
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        label: Text('Claim', style: TextStyle(color: Colors.white)),
        icon: Icon(Icons.done, color: Colors.white),
        color: Color.fromARGB(255, 184, 39, 37),
      ),
    ],
  );
}
