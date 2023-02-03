import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String imageUrl;
//const بس بدنا نضيف شي معلومات ومتغيرات بالمستقبل لازم نشيل كونست 
 const  Category(
      {@required this.id, @required this.title,@ required this.imageUrl});
}

