import 'package:flutter/material.dart';

class SearchTabPage extends StatefulWidget {
  @override
  _SearchTabPageState createState() => _SearchTabPageState();
}

class _SearchTabPageState extends State<SearchTabPage> {
  TextEditingController editingController = TextEditingController();

  List<String> image_urls = [
    "http://tr.web.img4.acsta.net/r_1280_720/medias/nmedia/18/75/09/69/19692838.jpg",
    "http://cdn.collider.com/wp-content/uploads/breaking-bad-season-4-poster-01.jpg",
    "http://tr.web.img4.acsta.net/r_1280_720/pictures/18/12/28/13/25/4689890.jpg",
    "https://www.turkcealtyazi.org/images/poster/2674806.jpg",
    "https://ae01.alicdn.com/kf/HTB103zEOFXXXXcoXVXXq6xXFXXXx/30-Prison-Break-Amerikan-TV-G-ster-Sezon-Sanat-14-x-19-Afi.jpg_640x640.jpg"
  ];

  List<String> responseList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    responseList.addAll(image_urls);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        TextField(
          controller: editingController,
          decoration: InputDecoration(
            labelText: "Search",
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (value){
            searchInList(value);
          },
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
            itemCount: image_urls.length,
            itemBuilder: (context, position) {
              return Container(
                child: Image.network(image_urls[position]),
              );
            },
          ),
        )
      ],
    ));

  }
  void searchInList(String filter){

    List<String> cloneList = [];
    cloneList.addAll(responseList);
    if(!filter.isEmpty){
      List<String> responseData = List<String>();
      cloneList.forEach((item){
        if(item.contains(filter)){
          responseData.add(item);
        }
      });
      setState(() {
       image_urls.clear();
       image_urls.addAll(responseData); 
      });
      return;
    }else{
      setState(() {
        image_urls.clear();
        image_urls.addAll(cloneList);
      });
    }

  }
}
