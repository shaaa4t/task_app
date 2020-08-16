import 'package:flutter/material.dart';
import 'package:task_app/commons/commons.dart';

class GridScreen extends StatefulWidget {
  final String name;
  final String email;

  const GridScreen({@required this.name, @required this.email});

  @override
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.background,
        appBar: AppBar(
          backgroundColor: ThemeColors.background,
          elevation: 0.0,
          title: Text(
            'Grid Screen',
            style: TextStyle(color: ThemeColors.textColor),
          ),
          iconTheme: IconThemeData(color: ThemeColors.textColor),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 10,
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
                    Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Text(widget.email),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
