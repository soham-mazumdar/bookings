import 'package:bookings/theme_component.dart';
import 'package:flutter/material.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      unselectedFontSize: 14,
      selectedItemColor: AppColors.linkButtonColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              // Center(),
              Positioned(
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(width: 17,height: 17,color: AppColors.linkButtonColor.withOpacity(0.5),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:2.0,vertical: 2),
                child: Image.asset('assets/icon/homeS.png',width: 25,),
              ),
            ],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 5),
                child: Image.asset('assets/icon/trip.png',width: 25,),
              ),
            ],
          ),
          label: 'My Trips'
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 5),
                child: Image.asset('assets/icon/search.png',width: 25,),
              ),
            ],
          ),
          label: 'Search'
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 5),
                child: Image.asset('assets/icon/bookmark.png',width: 25,),
              ),
            ],
          ),
          label: 'Saved'
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 5),
                child: Image.asset('assets/icon/setting.png',width: 25,),
              ),
            ],
          ),
          label: 'Settings'
        ),
      ]
    );
  }
}