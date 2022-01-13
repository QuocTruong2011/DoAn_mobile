import 'package:da_mobile/screens/Cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:da_mobile/home/home_screen.dart';

class ImgDetailsWithIcon extends StatelessWidget {
  const ImgDetailsWithIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width,
      color: Colors.white,
      child: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset(
              "assets/images/details.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: size.height * 0.08,
            width: size.width,
            child: Row(
              children: [
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                           MaterialPageRoute(
                           builder: (context) {
                            return HomeScreen();
                           },
                          ),
                        ); 
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                  width: size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                           MaterialPageRoute(
                           builder: (context) {
                           return CartScreen();
                            },
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.shopping_cart,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ],
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
