// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
//
// class CustomizeKandoraOptions extends StatefulWidget {
//   const CustomizeKandoraOptions({
//     super.key,
//     required this.prefrencesResponseEntities,
//     this.objId = 'qHEe9vM6Hj',
//   });
//
//   final List<PrefrencesResponseEntity> prefrencesResponseEntities;
//   final String objId;
//
//   @override
//   State<CustomizeKandoraOptions> createState() =>
//       _CustomizeKandoraOptionsState();
// }
//
// class _CustomizeKandoraOptionsState extends State<CustomizeKandoraOptions> {
//   int selectedTabIndex = 0;
//   Map<int, bool> state = {};
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: widget.prefrencesResponseEntities.length,
//       // Use the length of the list
//       itemBuilder: (context, index) {
//         final prefrencesResponseEntity =
//             widget.prefrencesResponseEntities[index];
//         // Find the default value entity
//         final defaultValueEntity = prefrencesResponseEntity.values!.firstWhere(
//           (valueEntity) => valueEntity.def == true,
//         );
//         return Card(
//           child: ExpansionTile(
//             onExpansionChanged: (value) {
//               setState(() {
//                 state[index] = value;
//               });
//             },
//             iconColor: const Color(0xff3A685D),
//             title: Text(
//               prefrencesResponseEntity.labelEN ?? '',
//               style: const TextStyle(fontSize: 20),
//             ),
//             backgroundColor: const Color(0xffEBF0EF),
//             trailing: SizedBox(
//               width: 70.w,
//               child: Row(
//                 children: [
//                   Text(
//                     defaultValueEntity.valueAr ?? '',
//                     // Display the default value
//                     style: const TextStyle(fontSize: 18),
//                   ),
//                   if (state[index] ?? false)
//                     const Icon(Icons.arrow_drop_up)
//                   else
//                     const Icon(Icons.arrow_drop_down),
//                 ],
//               ),
//             ),
//             children: [
//               SizedBox(
//                 height: 100,
//                 child: ListView.separated(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: prefrencesResponseEntity.values?.length ?? 0,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedTabIndex = index; // Update selected index
//                         });
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: selectedTabIndex == index
//                                 ? Colors.blue
//                                 : Colors.red,
//                           ),
//                         ),
//                         child: Text(
//                           prefrencesResponseEntity.values?[index].valueAr ?? '',
//                           style: const TextStyle(fontSize: 16),
//                         ),
//                       ),
//                     );
//                   },
//                   separatorBuilder: (BuildContext context, int index) =>
//                       SizedBox(
//                     width: 50.w,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
