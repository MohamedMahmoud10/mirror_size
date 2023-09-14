import 'package:flutter/material.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';

class CustomizeColorExpansionTile extends StatefulWidget {
  const CustomizeColorExpansionTile({
    Key? key,
    required this.customProductsResponseEntity,
    required this.selectedObjId,
  });

  final CustomProductsResponseEntity customProductsResponseEntity;
  final String selectedObjId;

  @override
  State<CustomizeColorExpansionTile> createState() =>
      _CustomizeColorExpansionTileState();
}

class _CustomizeColorExpansionTileState
    extends State<CustomizeColorExpansionTile> {
  String selectedColor = '';

  @override
  Widget build(BuildContext context) {
    if (widget.customProductsResponseEntity.objectId ==
        widget.selectedObjId) {
      return Card(
        child: ExpansionTile(
          title: const Text('Colors'), // Title for the color ExpansionTile
          children: [
            Wrap(
              spacing: 8,
              children: widget.customProductsResponseEntity.color
                  ?.map((color) {
                final isSelected = color == selectedColor;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                  child: Chip(
                    label: Text(color ?? ''),
                    backgroundColor:
                    isSelected ? Colors.green : Colors.grey,
                  ),
                );
              })
                  .toList() ??
                  [],
            ),
          ],
        ),
      );
    } else {
      return Container(); // Return an empty container if the object IDs don't match
    }
  }
}
