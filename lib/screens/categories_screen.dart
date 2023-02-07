//import 'package:aras_app/app_data.dart';
//import 'package:aras_app/models/category.dart';
import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anadolu Universite'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        //رح يخلي حجم الكونتنرات مناسب لحجم الشاشة  كلما كبرت الشاشة بيعرض كونتنرات اكتر على نفس المستوى
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //فراغات بين العناصر بشكل عمودي
          crossAxisSpacing: 10,
          //فراغات بين العناصر بشكل افقي
          mainAxisSpacing: 10,
          //رح تحدد ارتفاع الكونتنر بشكل تناسبي الارتفاع ضعف العرض مثلا
          childAspectRatio: 7 / 8,
          maxCrossAxisExtent: 250,
        ),
        children: Categories_data.map(
          (categoryData) => CategoryItem(
              categoryData.id, categoryData.title, categoryData.imageUrl),
        ).toList(),
      ),
    );
  }
}
