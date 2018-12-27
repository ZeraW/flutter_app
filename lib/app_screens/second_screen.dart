import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/heros.dart';

class ListClass extends StatelessWidget {
  final _backgroundColor = Colors.yellow[300];

  static const _heroesNames = <String>[
    'Mt. Lady',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _heroesImage = <String>[
    'images/Mt._Lady_anime_portrait.png',
    'images/Mt._Lady_anime_portrait.png',
    'images/Mt._Lady_anime_portrait.png',
    'images/Mt._Lady_anime_portrait.png',
    'images/Mt._Lady_anime_portrait.png',
    'images/Mt._Lady_anime_portrait.png',
    'images/Mt._Lady_anime_portrait.png',
    'images/Mt._Lady_anime_portrait.png',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];





  @override
  Widget build(BuildContext context) {
    /**list of Widget*/
    List mList = <Heroes>[];

    /**this is a useless for loop to fill the list*/
    for (var i = 0; i < _heroesNames.length; i++) {
      mList.add(Heroes(
        name: _heroesNames[i],
        color: _baseColors[i],
        imageLocation: AssetImage(_heroesImage[i]),
      ));
    }

    /**list view widget container*/
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildListViewWidgets(mList),
    );

    /**app bar*/
    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Heroes',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    /**display this*/
    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

  Widget _buildListViewWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }
}
