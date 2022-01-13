import 'package:da_mobile/screens/profile/prrofile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
class passwordScreen extends StatefulWidget {
  @override
  _passwordScreenState createState() => _passwordScreenState();
}

class _passwordScreenState extends State<passwordScreen> {
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
                'đổi mật khẩu ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
            padding: EdgeInsets.only(top: 30.0, right: 100.0,left: 140,),
            child: Text(
                'thông tin mật khẩu ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),
              ),
              
            ),
          oldpassword(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock,color: Colors.black,),
                suffixIcon:Icon(
                  Icons.visibility,
                 color: Colors.black,
                ),
              hintText: "old password ",
              border: InputBorder.none,
              
              ),
              ),
          ),
          newpassword(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock,color: Colors.black,
                ),
                suffixIcon:Icon(
                  Icons.visibility,
                color:Colors.black,
                ),
              hintText: "new password ",
              border: InputBorder.none,
              
              ),
              ),
          ),
          Confirmpassword(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock,
                color: Colors.black,
                ),
                suffixIcon:Icon(
                  Icons.visibility,
                color:Colors.black,
                ),
              hintText: "Confirm password ",
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

class newpassword extends StatelessWidget {
   final Widget child;
  
  const newpassword({
    
    Key key, this.child,
  }) : super(key: key);

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
class oldpassword extends StatelessWidget {
   final String hintText;
   final IconData icon;
   final ValueChanged<String> onChanged;
  final Widget child;
  const oldpassword({
    Key key, this.child,
     this.hintText,
    this.icon,
     this.onChanged,
  }) : super(key: key);

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
class Confirmpassword extends StatelessWidget {
   final Widget child;

  const Confirmpassword({Key key, this.child}) : super(key: key);
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


