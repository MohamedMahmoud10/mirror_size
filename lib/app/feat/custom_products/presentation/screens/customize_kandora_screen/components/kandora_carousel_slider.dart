import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
import 'package:mirror_size/core/common_widgets/carosuel_slider.dart';
import 'package:mirror_size/core/extensions/custom_padding.dart';

class FabricCarouselSlider extends StatelessWidget {
  const FabricCarouselSlider({
    super.key,
    required this.fabricResponseEntity,
    required this.selectedObjectId,
  });

  final List<CustomProductsResponseEntity> fabricResponseEntity;
  final String selectedObjectId;

  @override
  Widget build(BuildContext context) {
    final filteredData = fabricResponseEntity
        .where((item) => item.objectId == selectedObjectId)
        .expand((e) => e.fabric!)
        .toList();
    return ReusableCarouselSlider(
      viewportFraction: 0.5,
      items: fabricResponseEntity
          .expand(
            (e) => e.fabric!.map((items) {
              return Container(
                width: 163.w,
                height: 235.h,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(58, 104, 93, 0.05),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      items.image ?? '',
                    ),
                    alignment: const Alignment(0.0, -0.5),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 163.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(4.r),
                          bottomRight: Radius.circular(4.r),
                        ),
                      ),
                      child: Text(
                        items.name ?? '',
                        style: Theme.of(context).textTheme.labelSmall,
                      ).center(),
                    ),
                  ],
                ),
              );
            }),
          )
          .toList(),
    );
  }
}
