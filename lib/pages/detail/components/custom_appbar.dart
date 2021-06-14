import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

// class CustomBar extends StatelessWidget {
//   const CustomBar({Key? key, this.rating}) : super(key: key);
//   final Product? rating;
//   @override
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding:
//             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//         child: Row(
//           children: [
//             SizedBox(
//               height: getProportionateScreenWidth(40),
//               width: getProportionateScreenWidth(40),
//               child: TextButton(
//                 style: TextButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(60),
//                   ),
//                   backgroundColor: Colors.white,
//                   padding: EdgeInsets.zero,
//                 ),
//                 onPressed: () => Get.back(),
//                 child: SvgPicture.asset(
//                   "assets/icons/Back ICon.svg",
//                   height: 15,
//                 ),
//               ),
//             ),
//             Spacer(),
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(14),
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     rating!.toString(),
//                     style: const TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(width: 5),
//                   SvgPicture.asset("assets/icons/Star Icon.svg"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomAppBar extends StatelessWidget {
//   // final Product rating;

//   CustomAppBar({Key? key, ) : super(key: key);

//   @override
//   // AppBar().preferredSize.height provide us the height that appy on our app bar
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding:
//             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//         child: Row(
//           children: [
//             SizedBox(
//               height: getProportionateScreenWidth(40),
//               width: getProportionateScreenWidth(40),
//               child: TextButton(
//                 style: TextButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(60),
//                   ),
//                   backgroundColor: Colors.white,
//                   padding: EdgeInsets.zero,
//                 ),
//                 onPressed: () => Get.back(),
//                 child: SvgPicture.asset(
//                   "assets/icons/Back ICon.svg",
//                   height: 15,
//                 ),
//               ),
//             ),
//             Spacer(),
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(14),
//               ),
//               child: Row(
//                 children: [
//                   // Text(
//                   //   "${rating}",
//                   //   style: const TextStyle(
//                   //     fontSize: 14,
//                   //     fontWeight: FontWeight.w600,
//                   //   ),
//                   // ),
//                   const SizedBox(width: 5),
//                   SvgPicture.asset("assets/icons/Star Icon.svg"),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
