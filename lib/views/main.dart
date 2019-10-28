import 'package:flutter/material.dart';
import 'package:flutter_ui/views/version2/video_game/video_landing_page.dart';
import 'package:flutter_ui/views/version3/chat_ui/chat_home_screen.dart';
import 'package:flutter_ui/views/version3/instagram_feed_ui/instagram_feed_screen.dart';
import 'package:flutter_ui/views/version3/netflix_ui/netflix_screen.dart';
import 'package:flutter_ui/views/version3/onboarding/onboarding_screen.dart';
import 'restaurant_app/restaurant_app_page.dart';
import 'story_list_app/story_list_app_page.dart';
import 'travel_app/travel_app_page.dart';
import 'adidas_shoes_app/adidas_shoes_app_page.dart';
import 'music_player_app/music_player_app_page.dart';
import 'mutiple_navigation_app/mutiple_navigation_app_page.dart';
import 'version2/account_chart/account_chart.dart';
import 'version2/clock_app/clock_page.dart';
import 'version2/rent_car/rent_car_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Color(0xFFFEF9EB),
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
    HomeListModel("RentCar", "https://github.com/Ronak99/RentCar-App-UI", RentCarPage()),
    HomeListModel("AccountChart", "https://github.com/Gazer/como-gasto/tree/s01e08", AccountChartPage()),
    HomeListModel("ClockPage", "https://github.com/Ronak99/ClockApp", ClockPage()),
    HomeListModel("VideoGema", "https://github.com/TechieBlossom/video_game_messaging_app (branches)", VideoLandingPage()),
    HomeListModel("Netfix", "https://github.com/MarcusNg/flutter_netflix_ui_redesign/blob/master/lib/screens/chat_home_screen.dart", NetflixScreen()),
    HomeListModel("Chats","https://github.com/MarcusNg/flutter_chat_ui", ChatHomeScreen()),
    HomeListModel("Onboarding", "https://github.com/MarcusNg/flutter_onboarding_ui", OnboardingScreen()),
    HomeListModel("Instagram", "https://github.com/MarcusNg/flutter_instagram_feed_ui_redesign", InstagramFeedScreen()),
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
