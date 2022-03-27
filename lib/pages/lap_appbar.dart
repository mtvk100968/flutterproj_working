
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(LapAppBar());
}

class LapAppBar extends StatelessWidget {
  static const String title = 'landandplot';

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 5,
    child: Scaffold(
      appBar: AppBar(
        title: Text('landandplot'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
        //backgroundColor: Colors.green,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.green],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.home), text: 'Feed'),
            Tab(icon: Icon(Icons.home), text: 'Profile'),
            Tab(icon: Icon(Icons.home), text: 'Settings'),
            Tab(icon: Icon(Icons.home), text: 'Settings2'),
          ],
        ),
        elevation: 20,
        titleSpacing: 0,
      ),
      body: Container(),
    ),
  );
}