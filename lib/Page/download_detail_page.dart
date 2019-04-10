import 'package:flutter/material.dart';
import 'package:netflix/Models/download.dart';

class DownloadDetailPage extends StatefulWidget {
  DownloadModel downloadModel;

  DownloadDetailPage({Key key, DownloadModel downloadModel}) : super(key: key) {
    this.downloadModel = downloadModel;
  }
  @override
  _DownloadDetailPageState createState() => _DownloadDetailPageState();
}

class _DownloadDetailPageState extends State<DownloadDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            FlatButton.icon(
              icon: Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
              label: Text("")
              ,onPressed: (){
                Navigator.pop(context);
              },
            ),
            Text(
              "Bodyguard",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            FlatButton.icon(
              icon: Icon(Icons.edit, color: Colors.white),
              label: Text(""),
            )
          ],
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              this.widget.downloadModel.seasonDetail,
              style: TextStyle(color: Colors.white, fontSize: 13.0),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.network(
                  "https://i.vimeocdn.com/filter/overlay?src0=https%3A%2F%2Fi.vimeocdn.com%2Fvideo%2F678004048_1280x720.jpg&src1=https%3A%2F%2Ff.vimeocdn.com%2Fimages_v6%2Fshare%2Fplay_icon_overlay.png",
                  width: 125,
                  height: 75),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "2. Sezon 2. Bölüm",
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ),
                  Text("45m | 180.2 MB",
                      style: TextStyle(color: Colors.grey, fontSize: 9.0))
                ],
              ),
              FlatButton.icon(
                icon: Icon(
                  Icons.check_circle,
                  color: Colors.blueAccent,
                ),
                label: Text(""),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
              style: TextStyle(color: Colors.grey,fontSize: 13.0),),
        )
      ],
    ));
  }
}
