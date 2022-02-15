import 'package:bookings/helper.dart';
import 'package:bookings/models/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceTile extends StatelessWidget {
  const PlaceTile({
    Key? key,
    required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 10.0),
      child: GestureDetector(
        onTap: (){
          showToast(place.name + ' selected');
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 240,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(place.image), fit: BoxFit.cover),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // stops: [0,0.9],
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: GestureDetector(
                        onTap: (){
                          showToast(place.name + ' saved');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Icon(Icons.bookmark_border,size: 20,),
                        ),
                      )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(child: Center()),
                          Row(
                            children: [
                              RatingBar(
                                initialRating: 3.1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: 17,
                                itemCount: 5,
                                updateOnDrag: false,
                                ignoreGestures: true,
                                ratingWidget: RatingWidget(
                                  full: const Icon(Icons.star,color: Colors.yellow,),
                                  half: const  Icon(Icons.star_half, color: Colors.yellow,),
                                  empty: const  Icon(Icons.star_border,color: Colors.yellow),
                                ),
                                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                onRatingUpdate: (_) {},
                              ),
                              const SizedBox(width: 5),
                              Text(place.rating.toString(), style: const TextStyle(color: Colors.white),)
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            place.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            place.country,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 10,)
                        ],
                    ),
                
                  ],
                ),
              ),
            )
          ),
        ),
      ),
    );
  }
}