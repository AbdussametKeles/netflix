import 'package:flutter/material.dart';
import 'package:netflix/TabScreen/home_tab.dart';
import 'package:netflix/TabScreen/films_tab.dart';
import 'package:netflix/TabScreen/mylist_tab.dart';
import 'package:netflix/TabScreen/search_tab.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  var _currentIndex = 0;

  List<Widget> _bottomList = [
    HomeTabPage(),
    SearchTabPage(),
    FilmsTabPage(),
    MyListTabPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.network(
              "http://icons.iconarchive.com/icons/papirus-team/papirus-apps/256/netflix-icon.png",
              width: 48,
              height: 48),
          title: Row(
            children: <Widget>[
              FlatButton(
                  child: Text(
                "Series",
                style: TextStyle(color: Colors.grey),
              )),
              FlatButton(
                  child: Text(
                "Films",
                style: TextStyle(color: Colors.grey),
              )),
              FlatButton(
                  child: Text(
                "My List",
                style: TextStyle(color: Colors.grey),
              ))
            ],
          ),
        ),
        body: _bottomList[_currentIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.black,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.white,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.grey))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                title: Text("Home"),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  title: Text("Search"), icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  title: Text("Downloads"), icon: Icon(Icons.file_download)),
              BottomNavigationBarItem(
                  title: Text("More"), icon: Icon(Icons.menu))
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ));
  }
}
