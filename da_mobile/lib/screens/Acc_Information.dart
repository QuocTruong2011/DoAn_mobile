import 'package:da_mobile/screens/profile/prrofile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
class accountInformationScreen extends StatefulWidget {
  @override
  _accountInformationScreenState createState() => _accountInformationScreenState();
}

class _accountInformationScreenState extends State<accountInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 60.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
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
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 40,
                          color: Colors.black,
                        ),
                    ),
              Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Text(
                'Thông tin tài khoản',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),
              ),
            ),

                  Icon(
                    Icons.menu,
                    size: 30.0,
                     color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),

          Padding(
            padding: EdgeInsets.only(top: 30.0, right: 100.0,left: 200,),
            child: Text(
                'thông tin ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),
              ),
              
            ),
            name(
              child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                   color: Colors.black,
                ),
              hintText: "enter your first and last name" ,
              border: InputBorder.none,
              
              ),
              ), 
            ),
            birthday(
              child: TextField(
              
              decoration: InputDecoration(
                icon: Icon(
                  Icons.date_range,
                   color: Colors.black,
                ),
              hintText: "dd/mm/yy" ,
              border: InputBorder.none,
              
              ),
              ), 
            ),
            email(
              child: TextField(
              
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                   color: Colors.black,
                ),
              hintText: "****@gmail.com" ,
              border: InputBorder.none,
              
              ),
              ), 
            ),
            sex(
              child: TextField(
              
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              hintText: "nữ or nam" ,
              border: InputBorder.none,
              
              ),
              ), 
            ),


           ] 
        )

        ) 
          
    );
  }
}
class name extends StatelessWidget {
  final Widget child;

  const name({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical:10),
      padding:EdgeInsets.symmetric(horizontal:100,vertical:4),
      decoration: BoxDecoration(
        color:Color(0xFFF1E6FF),
        borderRadius: BorderRadius.circular(20.0),
        ), 
      width:size.width*0.8,
      child: child,
      );

  }
}
class birthday extends StatelessWidget {
  final Widget child;

  const birthday({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical:10),
      padding:EdgeInsets.symmetric(horizontal:100,vertical:4),
      decoration: BoxDecoration(
        color:Color(0xFFF1E6FF),
        borderRadius: BorderRadius.circular(20.0),
        ), 
      width:size.width*0.8,
      child: child,
      );

  }
}
class email extends StatelessWidget {
  final Widget child;

  const email({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical:10),
      padding:EdgeInsets.symmetric(horizontal:100,vertical:4),
      decoration: BoxDecoration(
        color: Color(0xFFF1E6FF),
        borderRadius: BorderRadius.circular(20.0),
        ), 
      width:size.width*0.8,
      child: child,
      );

  }
}
class sex extends StatelessWidget {
  final Widget child;

  const sex({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical:10),
      padding:EdgeInsets.symmetric(horizontal:100,vertical:4),
      decoration: BoxDecoration(
        color: Color(0xFFF1E6FF),
        borderRadius: BorderRadius.circular(20.0),
        ), 
      width:size.width*0.8,
      child: child,
      );

  }
}