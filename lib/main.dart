import 'package:flutter/material.dart';
import 'package:aras_app/screens/categories_screen.dart';
import './screens/category_trips_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anadolu Universite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //الشاشة الافتراضية يلي بتطلع للمستخدم اول ما يفتح التطبيق
      //home: CategoriesScreen(),


      //لتعيين المسار الرئيسي والافتراضي للتطبيق 
       initialRoute :'/' ,
      //للتنقل بين الصفحات +ضافة مسارات الصفحات +تاخذ القيم على شكل ماب
      //رح تحتوي الراوتس على مسارات صفحاتنا يلي رح تنعرض عالشاشة
      routes: {
        //تم استبدال الهوم بهذا السطر في الاسفل
       
        '/': (ctx) => CategoriesScreen(),
        CategoryTripsScreen.screenRoute: (ctx) => CategoryTripsScreen(),
      },
    );
  }
}
