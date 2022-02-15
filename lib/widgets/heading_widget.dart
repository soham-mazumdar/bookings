import 'package:bookings/helper.dart';
import 'package:bookings/theme_component.dart';
import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    Key? key,
    required this.text,
    required this.seeAllMsg,
  }) : super(key: key);

  final String text;
  final String seeAllMsg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: AppTextStyle.heading,),
          GestureDetector(
            onTap: (){
              showToast(seeAllMsg);
            },
            child: Text('See all', style: AppTextStyle.linkText,)
          )
        
        ],
      ),
    );
  }
}
