import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class RestaurantAppPage extends StatelessWidget {
  final String _meatImage =
      'https://images.unsplash.com/photo-1532597311687-5c2dc87fff52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
  final String _foodImage =
      'https://images.unsplash.com/photo-1520218508822-998633d997e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';

  final String _burgerImage =
      'https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
  final String _chickenImage =
      'https://images.unsplash.com/photo-1532550907401-a500c9a57435?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

// COLORS
  final Color _iconYellow = Color(0xFFf4bf47);

  final Color _green = Color(0xFF4caf6a);
  final Color _greenLight = Color(0xFFd8ebde);

  final Color _red = Color(0xFFf36169);
  final Color _redLight = Color(0xFFf2dcdf);

  final Color _blue = Color(0xFF398bcf);
  final Color _blueLight = Color(0xFFc1dbee);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: RestaurantMyActionButton(_iconYellow),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: RestaurantMyAppbar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),

            // 최상단 메뉴
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.grid_on,
                    color: Colors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Location",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Text(
                        "West bay, Qatar",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 160.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    RestaurantItemCard(_meatImage),
                    RestaurantItemCard(_foodImage),
                    RestaurantItemCard(_meatImage),
                    RestaurantItemCard(_foodImage),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 92.0,
                    width: MediaQuery.of(context).size.width / 3 - 12,
                    color: _greenLight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.footballBall,
                          color: _green,
                        ),
                        SizedBox(height: 4.0,),
                        Text("Sports store", style: TextStyle(color: _green, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  Container(
                    height: 92.0,
                    width: MediaQuery.of(context).size.width / 3 - 12,
                    color: _redLight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.solidClock,
                          color: _red,
                        ),
                        SizedBox(height: 4.0,),
                        Text("Book a Table", style: TextStyle(color: _red, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  Container(
                    height: 92.0,
                    width: MediaQuery.of(context).size.width / 3 - 12,
                    color: _blueLight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.solidLaugh,
                          color: _blue,
                        ),
                        SizedBox(height: 4.0,),
                        Text("Caterings", style: TextStyle(color: _blue, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 16.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Popular Dishes", style: TextStyle(fontSize: 22.0, color: Colors.black54),),
                  SizedBox(height: 16.0,),
                  RestaurantMenuItem(_burgerImage),
                  RestaurantMenuItem(_chickenImage),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RestaurantMyAppbar extends StatelessWidget {
  const RestaurantMyAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.shop,
                    color: Colors.black45,
                  ),
                  Text(
                    "WishList",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantMyActionButton extends StatelessWidget {
  final Color iconColor;

  const RestaurantMyActionButton(
    this.iconColor, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
        sides: 6,
        child: Container(
          color: iconColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantItemCard extends StatelessWidget {

  final String imageStr;

  const RestaurantItemCard(
    this.imageStr, {
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160.0,
        width: 300.0,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(imageStr),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: <Widget>[
            Container(
              height: 160.0,
              width: 300.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.1), Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Text(
                    "25% OFF",
                    style: TextStyle(
                      color: Color(0xFFf6c24d),
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      letterSpacing: 1.1,
                    ),
                  ),
                  Text(
                    "ON FIRST 3 ORDERS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1.1,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class RestaurantMenuItem extends StatelessWidget {

  final String imageStr;
  const RestaurantMenuItem(this.imageStr, {Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(imageStr, fit: BoxFit.cover,),
          ),
          SizedBox(width: 16.0,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFf4bf47),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 15.0,
                        ),
                        Text("4.5"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.0,),
                Text("Special Chicken Burger", style: TextStyle(fontWeight: FontWeight.w600),),
                Container(
                  width: 200.0,
                  child: Text(
                    "Chicken, Yogurt, Red chilli, Ginger paste, Carlic paste, ...",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}