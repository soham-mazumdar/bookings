import 'package:flutter/material.dart';

class NewAppBar extends StatelessWidget {
  const NewAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Row(
        children: [
          const Icon(Icons.location_on),
          const Expanded(child: Text('New York,USA', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/images/user.jpg', width: 50,),
          )
        ],
      ),
    );
  }
}
