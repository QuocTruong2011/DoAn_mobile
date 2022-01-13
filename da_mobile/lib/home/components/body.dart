import 'package:da_mobile/Models/products.dart';
import 'package:da_mobile/home/components/categories.dart';
import 'package:da_mobile/home/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:da_mobile/details/detail_screen.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Container(
            margin: const EdgeInsets.all(20),
            width: size.width,
            height: size.height * 0.2,
            child: Image.asset(
              "assets/images/Banner.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Categories(),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Gợi ý hôm nay",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                mainAxisSpacing: 24,
                crossAxisSpacing: 0,
                physics: const BouncingScrollPhysics(),
                itemCount: products.length,
                staggeredTileBuilder: (int index) {
                  return const StaggeredTile.fit(2);
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                   MaterialPageRoute(
                     builder: (context) {
                       return DetailsScreen();
                    },
                   ), );
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: size.width * 0.4,
                          height: size.height * 0.3,
                          child: Image.asset(
                            products[index].img,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          products[index].title,
                          style:
                              const TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  );
                }
                ),
          ),
        ],
      ),
    );
  }
}
