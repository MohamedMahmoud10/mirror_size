import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/custom_products/domain/entity/custom_products_response_entity.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/cubits/custom_product/custom_product_cubit.dart';
import 'package:mirror_size/core/common_widgets/carosuel_slider.dart';
import 'package:mirror_size/core/extensions/custom_padding.dart';
import 'dart:async';

class KandoraStyleCarousel extends StatefulWidget {
  const KandoraStyleCarousel({super.key, required this.customKandoraList});

  final List<CustomProductsResponseEntity> customKandoraList;

  @override
  State<KandoraStyleCarousel> createState() => _KandoraStyleCarouselState();
}

class _KandoraStyleCarouselState extends State<KandoraStyleCarousel> {
  bool userScrolled = false;
  String selectedObjectId = '';

  @override
  void initState() {
    super.initState();
    // Start a timer to check if the user has scrolled after a delay
    Timer(const Duration(seconds: 2), () {
      if (!userScrolled) {
        // If the user has not scrolled, set the selectedObjectId to the first item's objectId
        setState(() {
          selectedObjectId = widget.customKandoraList.first.objectId ?? '';
        });
        debugPrint('User did not scroll. Selected ObjectId: $selectedObjectId');
        // Now you can send the selectedObjectId to your Bloc or handle it as needed
        BlocProvider.of<CustomProductCubit>(context)
            .fetchKandoraObjectIdAndUpdateUi(objectId: selectedObjectId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReusableCarouselSlider(
      onPageChanged: (pageIndex, reason) {
        if (reason == CarouselPageChangedReason.manual) {
          setState(() {
            userScrolled = true;
          });
          final String selectedId = widget.customKandoraList[pageIndex].objectId ?? '';
          debugPrint('Current ObjectId: $selectedId');
          BlocProvider.of<CustomProductCubit>(context)
              .fetchKandoraObjectIdAndUpdateUi(objectId: selectedId);
        }
      },
      viewportFraction: 0.5,
      items: widget.customKandoraList.map(
            (items) {
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
        },
      ).toList(),
    );
  }
}
