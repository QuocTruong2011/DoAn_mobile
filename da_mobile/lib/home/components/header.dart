import 'package:da_mobile/screens/profile/prrofile_screen.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          width: size.width * 0.7,
          height: size.height * 0.07,
          child: const TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Đón chờ deal mua 1 tặng 1",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
             context,
               MaterialPageRoute(
                builder: (context) {
                return ProfileScreen();
                },
              ),
          ); 
          },
          icon: const Icon(Icons.account_box),
          color: Colors.white,
        )
      ],
    );
  }
}
