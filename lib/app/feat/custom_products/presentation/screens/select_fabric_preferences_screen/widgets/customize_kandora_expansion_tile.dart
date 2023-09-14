import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';

class CustomizeKandoraExpansionTile extends StatefulWidget {
  const CustomizeKandoraExpansionTile({
    super.key,
    required this.customProductsResponseEntity,
    required this.selectedObjId,
  });

  final CustomProductsResponseEntity customProductsResponseEntity;
  final String selectedObjId;

  @override
  State<CustomizeKandoraExpansionTile> createState() =>
      _CustomizeKandoraExpansionTileState();
}

class _CustomizeKandoraExpansionTileState
    extends State<CustomizeKandoraExpansionTile> {
  Map<int, bool> state = {};
  Map<int, int?> selectedValues =
  {}; // Track selected values for each expansion
  Set<String> selectedColors = {};

  @override
  Widget build(BuildContext context) {
    if (widget.customProductsResponseEntity.objectId == widget.selectedObjId) {

      return Card(
        child: Column(
          children: widget.customProductsResponseEntity.prefrences
              ?.asMap() // Use asMap() to get the index of the preference
              .entries
              .map(
                (entry) {
              final int index = entry.key;
              final pref = entry.value;

              // Find the default value for this preference
              final defaultValueEntity = pref.values?.firstWhere(
                    (valueEntity) => valueEntity.def == true,
              );
              final defaultValue = defaultValueEntity?.valueEn ?? '';

              return Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0), // Add margin for spacing
                child: ExpansionTile(
                  onExpansionChanged: (value) {
                    setState(() {
                      state[index] =
                          value; // Update the expansion state for this item
                    });
                  },
                  initiallyExpanded: state[index] ?? false,
                  // Set the initial expansion state
                  iconColor: const Color(0xff3A685D),
                  title: Text(
                    pref.labelEN ?? '',
                    style: const TextStyle(fontSize: 20),
                  ),
                  trailing: SizedBox(
                    width: 70.w,
                    child: Row(
                      children: [
                        Text(
                          defaultValue,
                          style: const TextStyle(fontSize: 18),
                        ),
                        if (state[index] ?? false)
                          const Icon(Icons.arrow_drop_up)
                        else
                          const Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  children: [
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                        itemCount: pref.values?.length ?? 0,
                        itemBuilder: (context, innerIndex) {
                          debugPrint(
                              'The Length Is ${pref.values?.length}',);
                          final value =
                              pref.values?[innerIndex].valueAr ?? '';
                          final isSelected =
                              selectedValues[index] == innerIndex;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedValues[index] = innerIndex;
                                // Update the selected value for this index
                              });
                            },
                            child: Row(
                              children: [
                                Radio<int>(
                                  value: innerIndex,
                                  groupValue: selectedValues[index],
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedValues[index] = value;
                                    });
                                  },
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.red,
                                    ),
                                  ),
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: isSelected
                                            ? Colors.blue
                                            : Colors.black,),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder:
                            (BuildContext context, int index) => SizedBox(
                          width: 50.w,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          )
              .toList() ??
              [],
        ),
      );
    } else {
      return Container(); // Return an empty container if the object IDs don't match
    }
  }
}
