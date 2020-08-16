import 'package:flutter/material.dart';
import 'package:task_app/commons/commons.dart';
import 'package:task_app/screens/screens.dart';
import 'package:task_app/tabs/tabs.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  int _index = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ThemeColors.background,
      appBar: AppBar(
        backgroundColor: ThemeColors.background,
        elevation: 0.0,
        title: Text(
          'Task App',
          style: TextStyle(color: ThemeColors.textColor),
        ),
        iconTheme: IconThemeData(color: ThemeColors.textColor),
        bottom: TabBar(
          controller: _tabController,
          labelColor: ThemeColors.textColor,
          unselectedLabelColor: Colors.grey,
          indicatorColor: ThemeColors.textColor,
          tabs: [
            Tab(
              text: 'List&Card',
            ),
            Tab(
              text: 'GridView',
            ),
          ],
        ),
      ),
      drawer: DrawerScreen(),
      body: TabBarView(
        controller: _tabController,
        children: [
          FirstTab(),
          SecondTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        selectedItemColor: ThemeColors.primary,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text("Favorite")),
        ],
      ),
    );
  }
}
