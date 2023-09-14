import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
import 'package:mirror_size/core/common_widgets/cached_image.dart';
import 'package:mirror_size/core/common_widgets/carosuel_slider.dart';

class BrandCarousel extends StatelessWidget {
  const BrandCarousel({
    super.key,
    required this.customProductsResponseEntity,
    // required this.selectedObjectId,
  });

  final List<CustomProductsResponseEntity> customProductsResponseEntity;

  // final String selectedObjectId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 162.h,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(250, 240, 215, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ReusableCarouselSlider(
        items: customProductsResponseEntity
            .expand(
              (element) => element.material!.map((materialEntity) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                     Text('select brand',style: Theme.of(context).textTheme.headlineMedium,),
                    SizedBox(height: 20.h,),
                    CachedImageFromApi(
                      height: 63.h,
                      image: materialEntity.image ?? '',
                    ),
                  ],
                );
              }),
            )
            .toList(),
      ),
    );
  }
}
