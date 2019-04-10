import 'package:flutter/material.dart';
import 'package:netflix/Models/popular.dart';
import 'package:netflix/Page/film_detail_page.dart';

class HomeTabPage extends StatefulWidget {
  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  List<Popular> populars = [
    new Popular(
        "Game of Thrones",
        "http://idora.gazetevatan.com/vatanmediafile/Haber598x362/2015/11/23/game-of-thrones-un-yeni-sezon-afisinde-jon-snow-su-1858111.Jpeg",
        "Savaş",
        "2013"),
    new Popular(
        "Black Mirror",
        "https://www.wannart.com/wp-content/uploads/2017/11/AAIA_wDGAAAAAQAAAAAAAAp5AAAAJDZkMDgzZWZiLWNlMGYtNGU5MC1iODExLTNmOWRiNDIxYjNmMQ-min-900x580-min-900x580.jpg",
        "Gizem",
        "2011")
  ];

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
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Image.network(
                    "http://icons.iconarchive.com/icons/papirus-team/papirus-apps/256/netflix-icon.png",
                    width: 48,
                    height: 48),
                    FlatButton(
                      child: Text("Series",style: TextStyle(color: Colors.white),),
                    ), FlatButton(
                      child: Text("Films",style: TextStyle(color: Colors.white),),
                    ), FlatButton(
                      child: Text("MyList",style: TextStyle(color: Colors.white),),
                    )
              ],
            ),
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FilmDetailPage()));
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
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Popular on Netflix",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemExtent: 100.0,
              itemCount: populars.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: 8.0,
                        right: 8.0,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Image.network(
                        populars[index].image_url,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(populars[index].name,
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(populars[index].type,
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(populars[index].year_of_construction,
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                      ),
                      SizedBox(
                        height: 5.0,
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
