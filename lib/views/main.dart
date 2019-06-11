import 'package:flutter/material.dart';
import 'restaurant_app/restaurant_app_page.dart';
import 'story_list_app/story_list_app_page.dart';
import 'travel_app/travel_app_page.dart';
import 'adidas_shoes_app/adidas_shoes_app_page.dart';
import 'music_player_app/music_player_app_page.dart';
import 'mutiple_navigation_app/mutiple_navigation_app_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class HomeListModel {
  final String title;
  final String subtitle;
  final Widget page;

  HomeListModel(this.title, this.subtitle, this.page);
}

class _MyHomePageState extends State<MyHomePage> {

  final List<HomeListModel> _listModel = [
    HomeListModel("Travel-app", "https://github.com/JoonasN/Flutter-Speed-coding---Travel-app/blob/master/lib/main.dart", TravelAppPage()),
    HomeListModel("Restaurant-app", "https://github.com/JoonasN/Flutter-speed-coding---Restaurant-Mobile-App", RestaurantAppPage()),
    HomeListModel("MusicPlayer-app", "https://github.com/JoonasN/Flutter-Speed-coding---Music-player-app", MusicPlayerAppPage()),
    HomeListModel("AdidasShoes-app", "https://github.com/devefy/Flutter-Adidas-Shoes-Ecommerce-App-UI", AdidasShoesAppPage()),
    HomeListModel("MultipleNavigation-app", "https://github.com/devefy/flutter-multiple-Navigation-Drawers", MultipleNavigationAppPage()),
    HomeListModel("StoryList-app", "https://github.com/devefy/Flutter-Story-App-UI", StoryListAppPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: _listModel.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(_listModel[index].title),
                subtitle: Text(_listModel[index].subtitle),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => _listModel[index].page));
                },
              );
            }),
      ),
    );
  }

}
