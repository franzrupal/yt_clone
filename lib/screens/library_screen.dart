import 'package:flutter/material.dart';
import 'package:yt_clone/data.dart';
import 'package:yt_clone/widgets/widgets.dart';
import 'package:sliver_tools/sliver_tools.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      CustomSliverAppBar(),
      SliverAnimatedPaintExtent(
        duration: const Duration(milliseconds: 150),
        child: SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                height: 224,
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.history,
                              ),
                            ),
                            TextSpan(
                                text: '   History',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                          Text(
                            "View all",
                            style: const TextStyle(
                                fontSize: 13, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      height: 150.0,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 150,
                                  child: Column(children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                videos[1].thumbnailUrl,
                                                height: 80,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 8.0,
                                              right: 8.0,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                color: Colors.black,
                                                child: Text(
                                                  videos[1].duration,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[1].title,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                  Icon(
                                                    Icons.more_vert,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[1].author.username,
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          SizedBox(
                            width: 150,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 150,
                                  child: Column(children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                videos[1].thumbnailUrl,
                                                height: 80,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 8.0,
                                              right: 8.0,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                color: Colors.black,
                                                child: Text(
                                                  videos[1].duration,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[1].title,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                  Icon(
                                                    Icons.more_vert,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[1].author.username,
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          SizedBox(
                            width: 150,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 150,
                                  child: Column(children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                videos[1].thumbnailUrl,
                                                height: 80,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 8.0,
                                              right: 8.0,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                color: Colors.black,
                                                child: Text(
                                                  videos[1].duration,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[1].title,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                  Icon(
                                                    Icons.more_vert,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[1].author.username,
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          SizedBox(
                            width: 150,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 150,
                                  child: Column(children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                videos[0].thumbnailUrl,
                                                height: 80,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 8.0,
                                              right: 8.0,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                color: Colors.black,
                                                child: Text(
                                                  videos[0].duration,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[0].title,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                  Icon(
                                                    Icons.more_vert,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[0].author.username,
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          SizedBox(
                            width: 150,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 150,
                                  child: Column(children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                videos[2].thumbnailUrl,
                                                height: 80,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 8.0,
                                              right: 8.0,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                color: Colors.black,
                                                child: Text(
                                                  videos[2].duration,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[2].title,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                  Icon(
                                                    Icons.more_vert,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Text(
                                                    videos[2].author.username,
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ),
      SliverAnimatedPaintExtent(
        duration: const Duration(milliseconds: 150),
        child: SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 5),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Color.fromARGB(255, 60, 60, 60),
                    width: 0,
                  )),
                  height: 150,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.0),
                        child: RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.play_circle_outline_sharp,
                            ),
                          ),
                          TextSpan(
                              text: '  Your videos',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ])),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.file_download_outlined,
                            ),
                          ),
                          TextSpan(
                              text: '   Downloads',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          WidgetSpan(
                            child: Icon(
                              Icons.check_circle,
                            ),
                          ),
                        ])),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.local_movies_outlined,
                            ),
                          ),
                          TextSpan(
                              text: '   Your movies',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ])),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ),
      SliverAnimatedPaintExtent(
        duration: const Duration(milliseconds: 150),
        child: SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 5, top: 5, bottom: 5),
                child: Container(
                  height: 450,
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Playlists",
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Recently added  ',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                            ),
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.add_outlined,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                                text: '   New playlist',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue))
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.access_time,
                              ),
                            ),
                            TextSpan(
                                text: '   Watch later',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.thumb_up_off_alt,
                              ),
                            ),
                            TextSpan(
                                text: '   Liked videos',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.thumb_up_off_alt,
                              ),
                            ),
                            TextSpan(
                                text: '   Playlist 1',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.thumb_up_off_alt,
                              ),
                            ),
                            TextSpan(
                                text: '   Playlist 2',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.thumb_up_off_alt,
                              ),
                            ),
                            TextSpan(
                                text: '   Playlist 3',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.thumb_up_off_alt,
                              ),
                            ),
                            TextSpan(
                                text: '   Playlist 4',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.thumb_up_off_alt,
                              ),
                            ),
                            TextSpan(
                                text: '   Playlist 5',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.thumb_up_off_alt,
                              ),
                            ),
                            TextSpan(
                                text: '   Playlist 6',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            // 40 list items
            childCount: 1,
          ),
        ),
      ),
    ]));
  }
}
