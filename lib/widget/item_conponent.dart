import 'package:flutter/material.dart';
import 'package:single_screens/models/movie_model.dart';

class ItemComponent extends StatelessWidget {
  final Movie item;
  final Function() onDelete;
  final Function() onEdit;
  const ItemComponent({
    Key? key,
    required this.item,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      //height: 201,
      margin: const EdgeInsets.fromLTRB(32.0, 23.0, 32.0, 23),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26, //New
            blurRadius: 5.0,
            offset: Offset(0, 9),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            item.url,
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: onDelete,
                    child: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: onEdit,
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
