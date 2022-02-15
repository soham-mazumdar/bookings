import 'package:bookings/models/category.dart';
import 'package:bookings/models/place.dart';
import 'package:bookings/theme_component.dart';
import 'package:bookings/widgets/buttom_nav_bar.dart';
import 'package:bookings/widgets/category_list.dart';
import 'package:bookings/widgets/heading_widget.dart';
import 'package:bookings/widgets/new_app_bar.dart';
import 'package:bookings/widgets/place_tile.dart';
import 'package:bookings/widgets/tabs_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> tabs = ['Packages','Flights','Places','Hotes','Destinations'];

  List<Category> cats = [
    Category(
      name: 'All',
      icon: 'assets/icon/icon1w.png', 
      selectedIcon: 'assets/icon/icon1.png',
      // status: true
    ),
    Category(
      name: 'Beach',
      icon: 'assets/icon/icon2w.png', 
      selectedIcon: 'assets/icon/icon2.png',
      // status: false
    ),
    Category(
      name: 'Forest',
      icon: 'assets/icon/icon3w.png', 
      selectedIcon: 'assets/icon/icon3.png',
      // status: false
    ),
    Category(
      name: 'Mountains',
      icon: 'assets/icon/icon4w.png', 
      selectedIcon: 'assets/icon/icon4.png',
      // status: false
    ),
    Category(
      name: 'Cruise',
      icon: 'assets/icon/icon5w.png', 
      selectedIcon: 'assets/icon/icon5.png',
      // status: false
    ),
  ];


  List<Place> popularPlaces = [
    Place(name: 'Phuket',country: 'Thailand', image: 'assets/images/1.jpg', rating: 4.2),
    Place(name: 'Istanbul',country: 'Turkey', image: 'assets/images/2.jpg', rating: 4.8),
    Place(name: 'Bali',country: 'Indonesia', image: 'assets/images/3.jpg', rating: 4.8),
    Place(name: 'Rome',country: 'Italy', image: 'assets/images/4.jpg', rating: 4.8),
    Place(name: 'Andaman',country: 'India', image: 'assets/images/5.jpg', rating: 4.8),
    Place(name: 'Venice', country: 'Italy', image: 'assets/images/6.jpg', rating: 4.8),
  ];

  List<Place> recomendedPlaces = [
    Place(name: 'Venice', country: 'Italy', image: 'assets/images/6.jpg', rating: 4.8),
    Place(name: 'Rome', country: 'Italy', image: 'assets/images/4.jpg', rating: 4.8),
    Place(name: 'Andaman', country: 'India', image: 'assets/images/5.jpg', rating: 4.8),
    Place(name: 'Istanbul', country: 'Turkey', image: 'assets/images/2.jpg', rating: 4.8),
    Place(name: 'Phuket', country: 'Thailand', image: 'assets/images/1.jpg', rating: 4.8),
    Place(name: 'Bali', country: 'Indonesia', image: 'assets/images/3.jpg', rating: 4.8),
    
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ButtomNavBar(),
      body: ListView(
        children: [
          const NewAppBar(),
          const SizedBox(height: 20),
          
          TabsList(tabs: tabs),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Text('Categories', style: AppTextStyle.heading),
          ),
          
          const SizedBox(height: 10),
          
          CategoryList(cats: cats),
          
          const SizedBox(height: 20),
          
          const HeadingWidget(text: 'Popular Places',seeAllMsg: 'Popular See All Tapped',),

          const SizedBox(height: 10),
          
          
          
          
          // =====
          // CategoryList(cats: popularPlaces),
          SizedBox(
            height: 240,
            child: ListView.builder(
              itemCount: popularPlaces.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return PlaceTile(place: popularPlaces[index]);
              },
            ),
          ),
          
          
          
          
          
          const SizedBox(height: 20),
          // const HeadingWidget(text: 'Recomended For You'),
          const HeadingWidget(text: 'Recomended For You',seeAllMsg: 'Recomended See All Tapped',),

          const SizedBox(height: 10),
          SizedBox(
            height: 240,
            child: ListView.builder(
              itemCount: recomendedPlaces.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return PlaceTile(place: recomendedPlaces[index]);
              },
            ),
          ),

          const SizedBox(height: 20),
        ],
      )
    );
  }
}







