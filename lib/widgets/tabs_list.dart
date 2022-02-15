import 'package:bookings/helper.dart';
import 'package:bookings/theme_component.dart';
import 'package:flutter/material.dart';

class TabsList extends StatefulWidget {
  const TabsList({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  State<TabsList> createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {

  int selectedIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: widget.tabs.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
                // showToast(widget.tabs[index] + ' selected');
              },
              child: Column(
                children: [
                  Text(
                      widget.tabs[index], 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: index == selectedIndex ? FontWeight.bold : FontWeight.w600,
                        color: index == selectedIndex ? AppColors.primary : AppColors.lightText,
                      ),
                
                    ),
                  const SizedBox(height: 5),
                  index == selectedIndex ? Container(
                    width: 20,
                    height: 3,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ) : const SizedBox()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
