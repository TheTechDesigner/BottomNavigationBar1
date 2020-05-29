import 'package:bottom_navigation_bar/cart.dart';
import 'package:bottom_navigation_bar/department.dart';
import 'package:bottom_navigation_bar/home.dart';
import 'package:bottom_navigation_bar/more.dart';
import 'package:bottom_navigation_bar/search.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: TabBarView(
        children: <Widget>[
          Home(),
          Department(),
          Cart(),
          Search(),
          More(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              labelColor: Color(0xFFC41A3B),
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.category,
                    size: 24.0,
                  ),
                  text: 'Department',
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 24.0,
                  ),
                  text: 'Cart',
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 24.0,
                  ),
                  text: 'Search',
                ),
                Tab(
                  icon: Icon(
                    Icons.more,
                    size: 24.0,
                  ),
                  text: 'More',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
