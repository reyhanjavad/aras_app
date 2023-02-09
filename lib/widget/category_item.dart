import 'package:flutter/material.dart';
import '../screens/category_trips_screen.dart';

//طريقة عرض الكونتنرات مع شكلها وتصميمهاوووبعدين رح نستتدعيها بالصفحة السكرين داخل الكريد فيو
//رح يعرض بطاقة وحدة من البطاقات الكونتينر
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  CategoryItem(this.id, this.title, this.imageUrl);

  void selectCategory(BuildContext ctx) {
    //..كلاس مبني للتنقل بين الصفحات.. يلي بين الاقواس لربطها بالويدجت
    //رح ياخد قيمة مسار الصفحة يلي رح يفتحهاى ويعملها بوش يعني فتح+
    Navigator.of(ctx).pushNamed(
      CategoryTripsScreen.screenRoute,
       arguments: {
      'id': id,
      'title': title,
    },
    );
    /*MaterialPageRoute(
        builder: (c) => CategoryTripsScreen(id,title),
      ),*/
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //لعمل تاثير على الكونتينر عند الضغط عليه
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),

            //انحناء لاطراف الكونتينر
            decoration: BoxDecoration(
                // ب اللون الاسود خلف صور الكونتينر
                color: Colors.black.withOpacity(0),
                borderRadius: BorderRadius.circular(15)),
          ), //تاخد قيمة من صصفر حتى واحد شففافية
        ],
      ),
    );
  }
}
