import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';

class CustomizeBrandExpansionTile extends StatefulWidget {
  const CustomizeBrandExpansionTile({
    required this.customProductsResponseEntity,
    required this.selectedObjId,
  });

  final CustomProductsResponseEntity customProductsResponseEntity;
  final String selectedObjId;

  @override
  State<CustomizeBrandExpansionTile> createState() =>
      _CustomizeBrandExpansionTileState();
}

class _CustomizeBrandExpansionTileState
    extends State<CustomizeBrandExpansionTile> {
  String? selectedColor; // Changed to nullable String

  @override
  Widget build(BuildContext context) {
    if (widget.customProductsResponseEntity.objectId == widget.selectedObjId) {
      // final fabricNames = widget.customProductsResponseEntity.material
      //     ?.map((fabric) => fabric.name)
      //     .join(', ');
      return Card(
        child: ExpansionTile(
          title: Text(widget.customProductsResponseEntity.name ?? ''),
          // trailing:Text(fabricNames??''),
          children: [
            SizedBox(
              height: 50.h,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                scrollDirection: Axis.horizontal,
                itemCount: widget.customProductsResponseEntity.material!.length,
                itemBuilder: (context, index) {
                  final kota =
                      widget.customProductsResponseEntity.material![index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = kota.name;
                      });
                    },
                    child: Chip(
                      label: Text(kota.name ?? ''),
                      // backgroundColor:
                      // isSelected ? Colors.green : Colors.grey,
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const SizedBox(
                  width: 50,
                ),
              ),
            ),
            // Wrap(
            //   spacing: 8,
            //   children:
            //       widget.customProductsResponseEntity.material?.map((fabric) {
            //             final isSelected = fabric.name == selectedColor;
            //             return GestureDetector(
            //               onTap: () {
            //                 setState(() {
            //                   selectedColor = fabric.name;
            //                 });
            //               },
            //               child: Chip(
            //                 label: Text(fabric.name ?? ''),
            //                 backgroundColor:
            //                     isSelected ? Colors.green : Colors.grey,
            //               ),
            //             );
            //           }).toList() ??
            //           [],
            // ),
          ],
        ),
      );
    } else {
      return Container(); // Return an empty container if the object IDs don't match
    }
  }
}
