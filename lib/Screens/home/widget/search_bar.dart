// import 'package:e_commerce/constants.dart';
// import 'package:flutter/material.dart';
//
// class SearchBar extends StatefulWidget {
//   const SearchBar({super.key});
//
//   @override
//   State<SearchBar> createState() => _SearchBarState();
// }
//
// class _SearchBarState extends State<SearchBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 55,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: kcontentColor,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
//       child: Row(
//         children: [
//           const Icon(
//             Icons.search,
//             color: Colors.grey,
//             size: 30,
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           const Flexible(
//             flex: 4,
//             child: TextField(
//               decoration: InputDecoration(
//                   hintText: "Search...", border: InputBorder.none),
//             ),
//           ),
//           Container(
//             height: 25,
//             width: 1.5,
//             color: Colors.grey,
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.tune,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:e_commerce/Screens/constants.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: kprimaryColor,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 4,
            child: TextFormField(
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kprimaryColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  hintText: "Search...",
                  border: InputBorder.none),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              color: kprimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
