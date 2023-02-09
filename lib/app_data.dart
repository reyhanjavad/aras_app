//import './models/trip.dart';
import 'package:flutter/material.dart';
import './models/category.dart';
import './models/trip.dart';

//const بس بدنا نضيف شي معلومات ومتغيرات بالمستقبل لازم نشيل كونست
const Categories_data = const [
  Category(
    id: 'c1',
    title: '',
    imageUrl:
        'https://cdn0.iconfinder.com/data/icons/social-network-7/50/22-1024.png',
  ),
  Category(
    id: 'c2',
    title: '',
    imageUrl:
        'https://is4-ssl.mzstatic.com/image/thumb/Purple128/v4/20/66/53/2066535d-3cb7-b487-3056-69a7152d3504/source/512x512bb.jpg',
  ),
  Category(
    id: 'c3',
    title: '',
    imageUrl:
        'https://cdn2.iconfinder.com/data/icons/social-icon-3/512/social_style_3_css3-512.png',
  ),
  Category(
    id: 'c4',
    title: '',
    imageUrl:
        'https://raw.githubusercontent.com/voodootikigod/logo.js/master/js.png',
  ),
  Category(
    id: 'c5',
    title: '',
    imageUrl:
        'https://i1.wp.com/www.bhutanio.com/wp-content/uploads/2017/10/bootstrap-social.png?resize=458%2C350&ssl=1',
  ),
  Category(
    id: 'c6',
    title: '',
    imageUrl:
        'https://cdn0.iconfinder.com/data/icons/long-shadow-web-icons/512/python-512.png',
  ),
];

const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'لغة ترميز النص التشعبي ',
    imageUrl: 'https://images.unsplash.com/photo-1583339793403-3d9b001b6008?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fGh0bWwlMjBjb2RlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60',
    duration: 20,
    activities: [
      '<html> وسم بداية صفحة الويب ع',
      '</html>  وسم النهاية لصفحة الويب ',
      ' <body>وسم جسم الموقع ',


    ],
    program: [
      'تعريف لغة الترميذ التشعبي ',
      'تعريف وسم البداية للموقع',
      'خواص وسم البداية ',

    ],

  ),
  Trip(id: 'm2',
    categories: [
      'c2',
    ],
    title: 'لغة تنسيق صفحة الويب',
    imageUrl: 'https://images.unsplash.com/photo-1524666643752-b381eb00effb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNvZGUlMjBjc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=1400&q=60',
    duration: 20,
    activities: [
     '',
      ' id تعريف وسم ',
      ' class تعريف وسم',

    ],
    program: [
     '  تعريف لغة تنسيق صفحة الويب',
      'تعريف وسم البداية للموقع',
      'خواص وسم البداية ',

    ],
),
  //Trip(),
  //Trip(),
];
