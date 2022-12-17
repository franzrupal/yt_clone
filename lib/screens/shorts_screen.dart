import 'package:yt_clone/data.dart';
import 'package:flutter/material.dart';
import 'package:yt_clone/widgets/widgets.dart';

class ShortsScreen extends StatefulWidget {
  static const String id = 'ShortsScreen';
  @override
  _ShortsScreenState createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: shortsList.length,
            itemBuilder: (context, index) {
              return ShortsList(
                name: shortsList.values.elementAt(index).elementAt(0),
                profilePic: shortsList.values.elementAt(index).elementAt(1),
                vid: shortsList.values.elementAt(index).elementAt(2),
                caption: shortsList.values.elementAt(index).elementAt(3),
                likes: shortsList.values.elementAt(index).elementAt(4),
                comments: shortsList.values.elementAt(index).elementAt(5),
              );
            }),
      ),
    );
  }
}

class ShortsList extends StatefulWidget {
  final String name;
  final String profilePic;
  final String vid;
  final String caption;
  final String likes;
  final String comments;
  ShortsList(
      {required this.name,
      required this.caption,
      required this.comments,
      required this.likes,
      required this.vid,
      required this.profilePic});

  @override
  _ShortsListState createState() => _ShortsListState();
}

class _ShortsListState extends State<ShortsList> {
  bool isLike = false;
  bool isDislike = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          width: w,
          height: h * .925,
          child: Image.asset(
            widget.vid,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      showSearch(
                        context: context,
                        delegate: MySearch(),
                      );
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 32,
                  )
                ],
              ),
              SizedBox(
                height: h * 0.300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLike = !isLike;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: isLike ? Colors.blue : Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.likes,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDislike = !isDislike;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.thumb_down,
                            color: isDislike ? Colors.blue : Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Dislike',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.message_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.comments,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: w * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.caption,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 12.5,
                                backgroundImage: AssetImage(widget.profilePic),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                                height: 24,
                                width: 75,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 175, 31, 21),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3))),
                                alignment: Alignment.center,
                                child: Text(
                                  '  Subscribe  ',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 36,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 32,
                            width: 32,
                            child: Image.asset(
                              'images/music_bar.gif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
