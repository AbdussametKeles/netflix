import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FilmDetailPage extends StatefulWidget {
  @override
  _FilmDetailPageState createState() => _FilmDetailPageState();
}

class _FilmDetailPageState extends State<FilmDetailPage> {
  VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(
        'https://www.youtube.com/watch?v=rlR4PJn8b8I')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        SizedBox(
          height: 70,
        ),
        Image.network(
          "https://www.log.com.tr/wp-content/uploads/2017/06/Game-of-Thrones-Season-7-Poster-Jon-660x978.jpg",
          width: 150,
          height: 150,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "89% match",
                style: TextStyle(color: Colors.green[800], fontSize: 15.0),
              ),
              Text(
                "2018",
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              Text(
                "M18",
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              Text(
                "1h 30m",
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
            ],
          ),
        ),
        RaisedButton.icon(
          color: Colors.red,
          icon: Icon(Icons.play_arrow),
          label: Text("Play", style: TextStyle(color: Colors.white)),
          onPressed: () {},
        ),
        _controller.value.initialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(
                child: Text("Yükleniyor.."),
              ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
        RaisedButton.icon(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    child: new Wrap(
                      children: <Widget>[
                        new ListTile(
                            leading: new Icon(Icons.mail),
                            title: new Text('Gmail'),
                            onTap: () => {}),
                        new ListTile(
                          leading: new Icon(Icons.message),
                          title: new Text('Sms'),
                          onTap: () => {},
                        ),
                      ],
                    ),
                  );
                });
          },
          icon: Icon(
            Icons.share,
          ),
          label: Text("Share"),
        )
      ]),
    );
  }
}
