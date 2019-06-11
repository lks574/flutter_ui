import 'package:flutter/material.dart';

class MusicPlayerDetailPage extends StatelessWidget {

  final String title;
  final String artist;
  final String image;

  MusicPlayerDetailPage(this.title, this.artist, this.image);

  final Color _blueColor = Color(0xFF090e42);
  final Color _pinkColor = Color(0xFFff6b80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _blueColor,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 320,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [_blueColor.withOpacity(0.4), _blueColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 52.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "PLAYLIST",
                                style: TextStyle(color: Colors.white.withOpacity(0.6),),
                              ),
                              Text(
                                "Best Vibes of the Week",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.playlist_add,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                        ),
                      ),
                      SizedBox(height: 6.0,),
                      Text(
                        artist,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 16.0,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 42.0,),
          Slider(
            onChanged: (double value){},
            value: 0.2,
            activeColor: _pinkColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("02:10", style: TextStyle(color: Colors.white.withOpacity(0.7)),),
                Text("-03:56", style: TextStyle(color: Colors.white.withOpacity(0.7)),),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.fast_rewind,
                color: Colors.white54,
                size: 42.0,
              ),
              SizedBox(width: 32.0,),
              Container(
                decoration: BoxDecoration(
                  color: _pinkColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.play_arrow,
                    size: 58.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 32.0,),
              Icon(
                Icons.fast_forward,
                color: Colors.white54,
                size: 42.0,
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: _pinkColor,
              ),
              Icon(
                Icons.shuffle,
                color: _pinkColor,
              ),
              Icon(
                Icons.repeat,
                color: _pinkColor,
              ),
            ],
          ),
          SizedBox(height: 58.0,),
        ],
      ),
    );
  }
}
