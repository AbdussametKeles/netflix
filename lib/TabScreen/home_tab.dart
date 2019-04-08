import 'package:flutter/material.dart';
import 'package:netflix/TabScreen/film_detail_page.dart';

class HomeTabPage extends StatefulWidget {
  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(
              "http://tr.web.img4.acsta.net/pictures/18/12/28/13/25/4689890.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Text("Drama . Offbeat . Set in 1980s"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  label: Text(
                    "My List",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.playlist_add, color: Colors.white),
                  label: Text("Play", style: TextStyle(color: Colors.white)),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.info, color: Colors.white),
                  label: Text("Info", style: TextStyle(color: Colors.white)),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text("My List",
                  style: TextStyle(color: Colors.white, fontSize: 25.0)),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                  child: Image.network(
                    "https://www.diziweb.net/img/dizi_afis/black-mirror.jpg",
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FilmDetailPage()));
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                    child: Image.network(
                      "https://www.diziweb.net/img/dizi_afis/black-mirror.jpg",
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                  child: Image.network(
                    "https://www.diziweb.net/img/dizi_afis/black-mirror.jpg",
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
