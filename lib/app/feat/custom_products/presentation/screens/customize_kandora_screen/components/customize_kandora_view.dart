import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/cubits/custom_product/custom_product_cubit.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/customize_kandora_screen/components/brand_carousel.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/customize_kandora_screen/components/kandora_carousel_slider.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/customize_kandora_screen/components/kandora_style_carousel.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/select_fabric_preferences_screen/select_fabric_preferences_screen.dart';
import 'package:mirror_size/core/common_widgets/custom_elevated_button.dart';
import 'package:mirror_size/core/const/color_constants.dart';
import 'package:mirror_size/core/extensions/custom_padding.dart';

class CustomizeKandoraView extends StatelessWidget {
  const CustomizeKandoraView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomProductCubit, CustomProductState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<CustomProductCubit>(context);
        if (state is CustomProductSuccessState) {

          return ListView(
            children: [
              SizedBox(
                height: 20.h,
              ),
               Text('select kandora style',style: Theme.of(context).textTheme.headlineMedium,).center(),
              SizedBox(
                height: 15.h,
              ),
              KandoraStyleCarousel(
                customKandoraList: state.customerProductList,
              ),
              SizedBox(
                height: 20.h,
              ),
               Text('select Fabric type',style: Theme.of(context).textTheme.headlineMedium,).center(),
              SizedBox(
                height: 15.h,
              ),
              FabricCarouselSlider(
                fabricResponseEntity: state.customerProductList,
                selectedObjectId: cubit.fetchKandoraObjectId,
              ),
              BrandCarousel(
                customProductsResponseEntity: state.customerProductList,
                // selectedObjectId: cubit.fetchKandoraObjectId,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomElevatedButton(
                  text: 'Continue',
                  color: ColorConstants.primaryColor,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const SelectFabricPreferencesScreen(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
