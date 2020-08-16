import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top:150.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Denise Vargas'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){},
            ),
            ListTile(
              title: Text('Shannon Davidson'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){},
            ),
            ListTile(
              title: Text('Donna Adams'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){},
            ),
            ListTile(
              title: Text('Tylor Greene'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){},
            ),
            ListTile(
              title: Text('Harry Daniel'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
