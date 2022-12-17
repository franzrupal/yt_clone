import 'package:flutter/material.dart';
import 'package:yt_clone/data.dart';

class CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset('assets/yt_logo_dark.png'),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.cast),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(
              context: context,
              delegate: MySearch(),
            );
          },
        ),
        IconButton(
          iconSize: 25.0,
          icon: CircleAvatar(
            foregroundImage: NetworkImage(userFranz.profileImageUrl),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class MySearch extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: const Icon(Icons.arrow_back_ios_new),
      onPressed: () {
        close(context, null);
      },
    );
  }

  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      icon: const Icon(Icons.mic_sharp),
      onPressed: () {},
    );
  }

  // @override
  // Widget buildResults(BuildContext context) {
  //   Center(
  //     child: Text(
  //       query,
  //       style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
  //     ),
  //   );
  // }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      'What',
      'What',
      'What',
      'What',
      'What',
      'What',
      'What',
      'What',
    ];

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}
