
import 'package:flutter/material.dart';

class ContentDetails extends StatelessWidget {
  const ContentDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Thông tin sản phẩm",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          builInfo(size: size, title: "Kho", value: "89"),
          builInfo(size: size, title: "Thương hiệu", value: "Miêu công tử"),
          builInfo(size: size, title: "Ngon ngữ", value: "Tiếng việt"),
          builInfo(size: size, title: "Ngày xuất bản", value: "01-2019"),
          const Text(
            "Mô tả sản phẩm",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Sách này rất hay và tuyeetk . Mọi người nên thấy nó có ích như thế nào với mình aSách này rất hay và tuyeetk . Mọi người nên thấy nó có ích như thế nào với mình aSách này rất hay và tuyeetk . Mọi người nên thấy nó có ích như thế nào với mình aSách này rất hay và tuyeetk . Mọi người nên thấy nó có ích như thế nào với mình aSách này rất hay và tuyeetk . Mọi người nên thấy nó có ích như thế nào với mình a",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],

              
                  
              
             
        
      ),
    );
  }

  SizedBox builInfo({Size size, String title, String value}) {
    return SizedBox(
      width: size.width * 0.7,
      height: size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
