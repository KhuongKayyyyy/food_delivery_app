import 'package:flutter/material.dart';

class HeadingSection extends StatefulWidget{
  @override
  _HeadingSectionState createState() => _HeadingSectionState();
}

class _HeadingSectionState extends State<HeadingSection>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xFFECF0F4),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.restaurant_menu),
          ),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "DELIVER TO",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold
              ),
            ),
            // const DropdownMenu(
            //   width: 200,
            //   dropdownMenuEntries: <DropdownMenuEntry<String>>[
            //     DropdownMenuEntry(value: "Ngoc Phuong Nam", label: "Ngoc Phuong Nam"),
            //     DropdownMenuEntry(value: "Topaz Elite", label: "Topaz Elite"),
            //     DropdownMenuEntry(value: "Pegasuite", label: "Pegasuite"),
            //   ],
            // )
            Row(
              children: [
                Text(
                  "Ngoc Phuong Nam",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
                const Icon(Icons.arrow_drop_down_rounded)
              ],
            ),
          ],
        ),
        const Spacer(),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xFF161C2E),
              ),
              child: const Padding(
                padding: EdgeInsets.all(7),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Positioned(
              right: 2,
              child: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: const Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}