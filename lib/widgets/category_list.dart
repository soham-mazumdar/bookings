import 'package:bookings/helper.dart';
import 'package:bookings/models/category.dart';
import 'package:bookings/theme_component.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
    required this.cats,
  }) : super(key: key);

  final List<Category> cats;

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemCount: widget.cats.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      color: index == selectedIndex ? AppColors.primary : Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 1,
                        color: index == selectedIndex ? AppColors.primary : AppColors.lightText.withOpacity(0.2),
                      )
                    ),
                    child: Center(
                      child: Image.asset(
                        index != selectedIndex ? widget.cats[index].selectedIcon : widget.cats[index].icon,
                        width: 30,
                      ),
                    )
                  ),
                  const SizedBox(height: 10),
                  Text(widget.cats[index].name, style: AppTextStyle.lightText,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
