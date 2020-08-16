import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Lorem Ipsum',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                const SizedBox(
                  height: 8,
                ),
                Text("is simply"),
              ],
            ),
          );
        },
      ),
    );
  }
}
