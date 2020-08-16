import 'package:flutter/material.dart';
import 'package:task_app/screens/screens.dart';
import 'package:task_app/commons/commons.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {

  List<String> _nameList = [
    'John Stone',
    'Ponnappa Priya',
    'Mia Wong',
    'Peter Stanbridge',
    'Natalie Lee-Walsh',
    'Ang Li',
    'Nguta Ithya',
    'Tamzyn French',
    'Salome Simoes',
    'Trevor Virtue',
  ];

  List<String> _emailList = [
    'John@Stone.com',
    'Ponnappa@Priya.com',
    'Mia@Wong.com',
    'Peter@Stanbridge.com',
    'Natalie@Lee-Walsh.com',
    'Ang@Li.com',
    'Nguta@Ithya.com',
    'Tamzyn@French.com',
    'Salome@Simoes.com',
    'Trevor@Virtue.com',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24,top: 24),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: _nameList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GridScreen(name: _nameList[index],email: _emailList[index],)));
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 0.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_nameList[index]),
                        const SizedBox(height: 4,),
                        Text(_emailList[index],style: TextStyle(color: Colors.grey[600]),),
                      ],
                    ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
