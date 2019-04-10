import 'package:flutter/material.dart';
import 'package:netflix/Models/download.dart';
import 'package:netflix/Page/download_detail_page.dart';

class DownloadTabPage extends StatefulWidget {
  @override
  _DownloadTabPageState createState() => _DownloadTabPageState();
}

class _DownloadTabPageState extends State<DownloadTabPage> {
  List<DownloadModel> modals = [
    new DownloadModel(
        "Game of Thrones",
        "http://idora.gazetevatan.com/vatanmediafile/Haber598x362/2015/11/23/game-of-thrones-un-yeni-sezon-afisinde-jon-snow-su-1858111.Jpeg",
        "7. Sezon"),
    new DownloadModel(
        "Black Mirror",
        "https://www.wannart.com/wp-content/uploads/2017/11/AAIA_wDGAAAAAQAAAAAAAAp5AAAAJDZkMDgzZWZiLWNlMGYtNGU5MC1iODExLTNmOWRiNDIxYjNmMQ-min-900x580-min-900x580.jpg",
        "4. Sezon")
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Image.network(
                    "https://newvitruvian.com/images/avatar-transparent-female-5.png",
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Ayşe Montre", style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: modals.length,
              itemBuilder: (context, position) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DownloadDetailPage(downloadModel:modals[position])));
                  },
                  child:  ListTile(
                  leading: Image.network(
                    modals[position].imageUrl,
                    width: 100,
                    height: 100,
                  ),
                  title: Text(
                    modals[position].name,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    modals[position].seasonDetail,
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
                );
              },
            )
          ],
        ));
  }
}
