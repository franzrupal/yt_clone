import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:yt_clone/data.dart';
import 'package:yt_clone/widgets/widgets.dart';

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          SliverAnimatedPaintExtent(
            duration: const Duration(milliseconds: 150),
            child: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 2,
                      right: 2,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          margin: const EdgeInsets.symmetric(vertical: 5.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            shape: BoxShape.circle),
                                        margin: const EdgeInsets.only(
                                          left: 7,
                                          right: 7,
                                        ),
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text("Name")
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            shape: BoxShape.circle),
                                        margin: const EdgeInsets.only(
                                          left: 7,
                                          right: 7,
                                        ),
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text("Name")
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            shape: BoxShape.circle),
                                        margin: const EdgeInsets.only(
                                          left: 7,
                                          right: 7,
                                        ),
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text("Name")
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            shape: BoxShape.circle),
                                        margin: const EdgeInsets.only(
                                          left: 7,
                                          right: 7,
                                        ),
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text("Name")
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            shape: BoxShape.circle),
                                        margin: const EdgeInsets.only(
                                          left: 7,
                                          right: 7,
                                        ),
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text("Name")
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            shape: BoxShape.circle),
                                        margin: const EdgeInsets.only(
                                          left: 7,
                                          right: 7,
                                        ),
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text("Name")
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            shape: BoxShape.circle),
                                        margin: const EdgeInsets.only(
                                          left: 7,
                                          right: 7,
                                        ),
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text("Name")
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            shape: BoxShape.circle),
                                        margin: const EdgeInsets.only(
                                          left: 7,
                                          right: 7,
                                        ),
                                        width: 50.0,
                                        height: 50.0,
                                      ),
                                      Text("Name")
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 45,
                          margin: const EdgeInsets.symmetric(vertical: 5.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 67, 67, 67),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    width: 40.0,
                                    height: 30.0,
                                    child: Center(
                                      child: Text(
                                        "All",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 67, 67, 67),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    width: 60.0,
                                    height: 30.0,
                                    child: Center(
                                      child: Text(
                                        "Today",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 67, 67, 67),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    width: 145.0,
                                    height: 30.0,
                                    child: Center(
                                      child: Text(
                                        "Continue Watching",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 67, 67, 67),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    width: 90.0,
                                    height: 30.0,
                                    child: Center(
                                      child: Text(
                                        "Unwatched",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 67, 67, 67),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    width: 50.0,
                                    height: 30.0,
                                    child: Center(
                                      child: Text(
                                        "Live",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 67, 67, 67),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    width: 55.0,
                                    height: 30.0,
                                    child: Center(
                                      child: Text(
                                        "Posts",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Settings",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                // 40 list items
                childCount: 1,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 60.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                },
                childCount: videos.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
