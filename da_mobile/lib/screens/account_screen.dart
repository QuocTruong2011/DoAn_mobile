import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
class accountScreen extends StatefulWidget {
  @override
  _accountScreenState createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
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
                  Icon(
                    Icons.arrow_back,
                    size: 30.0,
                    color: Color(0xFF6F35A5),
                  ),
              Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Text(
                'Tài khoản',
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
                    color:  Color(0xFF6F35A5),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            accountInformation(
              

              child: Row(
                children:<Widget> [
                  RichText(text: TextSpan(
                    text: " thong tin tài khoản",
                    style: TextStyle(
                      fontSize: 20,
                    )
                    
                    )
                    )
                ],
              
              ), 
            ),
            changePassword(

            ),

           ]
          
        )

        ) 
          
    );
  }
}
class accountInformation extends StatelessWidget {
   final Widget child;

  const accountInformation({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical:10),
      padding:EdgeInsets.symmetric(horizontal:100,vertical:4),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20.0),
        ), 
      width:size.width*0.8,
      child: child,
      
    );
  }
}
class changePassword extends StatelessWidget {
   final Widget child;

  const changePassword({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical:10),
      padding:EdgeInsets.symmetric(horizontal:100,vertical:4),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20.0),
        ), 
      width:size.width*0.8,
      child: child,
      
    );
  }
}




