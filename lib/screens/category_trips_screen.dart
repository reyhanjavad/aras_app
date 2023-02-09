//import 'dart:html';
import '../app_data.dart';
import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
  //لحفظ مسار الصفح الرئيسية واستدعائها بكامل صفحات التطبيق
  static const screenRoute = 'category-trips';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryTripsScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];

    //لفلترة الصفحة المبحوث عنها واضافتها لقائمة جانبية
    final filterdTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),

      //للتحكم بالعناصر يلي رح يتم  عرضها بعد فتح الكونتينر الخاص بالمادة
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(filterdTrips[index].title);
        },
        //عدد العناصر يلي رح تنعرض 
        itemCount: filterdTrips.length ,
      ),
    );
  }
}
