import 'package:flutter/material.dart';
import 'package:single_screens/bookmarks/bookmark_widget.dart';

void onRemoveBookmarkDialog({
  required BuildContext context,
  required Function() onCancelPressed,
  required Function() onYesPressed,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(50.0),
        topLeft: Radius.circular(50.0),
      ),
    ),
    builder: (context) {
      return Container(
        //height: 700,
        decoration: const BoxDecoration(
            // color: Colors.white,
            ),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const BookmarkItem(
              images: [
                "data:image/jpeg;base64,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",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU4g8xUnnDU4kVOp8_-3f3aPDusw_D2AlyXw&usqp=CAU",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyClt09JvP63R40vvrnxNj0d8rCQ-5AvmgFA&usqp=CAU",
              ],
              image: 'images/bk1.png',
              category: 'Art',
              going: '20K+ Going',
              location: 'Grand Avenue, Indonesia',
              name: 'Gala Music International Festival',
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Remove from your bookmark?',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // width: width,
                      //margin: margin,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2,
                              color: Colors.purple,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        //color: Colors.purple,
                        elevation: 0,
                        minWidth: 0,
                        //height: 50,
                        padding: const EdgeInsets.all(14),
                        onPressed: onCancelPressed,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      //width: width,
                      //margin: margin,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Colors.purple,
                        elevation: 0,
                        minWidth: 0,
                        //height: 50,
                        padding: const EdgeInsets.all(14),
                        onPressed: onYesPressed,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        child: const Center(
                          child: Text(
                            'Yes, Remove',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
