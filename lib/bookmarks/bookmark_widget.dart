import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class BookmarkItem extends StatelessWidget {
  final String image;
  final String category;
  final String location;
  final String going;
  final String name;
  final List<String> images;
  const BookmarkItem({
    Key? key,
    required this.image,
    required this.category,
    required this.location,
    required this.going,
    required this.name,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.grey.shade200, width: 2),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15.0),
                ),
                child: Image.asset(
                  image,
                  //height: 200,
                  //width: 200,
                ),
              ),
              Positioned(
                top: 10.0,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: const Text(
                    '27 April',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        category,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ImageStack(
                      showTotalCount: false,
                      imageList: images,
                      imageRadius: 35, // Radius of each images
                      imageCount: 3, // Maximum number of images to be shown
                      imageBorderWidth: 3,
                      imageBorderColor: Colors.white,
                      totalCount: 3, // Border width around the images
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      going,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.bookmark,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
