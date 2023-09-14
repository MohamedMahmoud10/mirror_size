import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirror_size/app/feat/body_measurement/upload_user_measurement/presentation/screens/upload_user_measurement/upload_user_measurement.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/cubits/custom_product/custom_product_cubit.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/select_fabric_preferences_screen/widgets/customize_kandora_expansion_tile.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/select_fabric_preferences_screen/widgets/select_brand_of_kandora.dart';
import 'package:mirror_size/app/feat/custom_products/presentation/screens/select_fabric_preferences_screen/widgets/select_color_expansion_tile.dart';
import 'package:mirror_size/core/common_widgets/custom_elevated_button.dart';

class SelectFabricPreferencesView extends StatelessWidget {
  const SelectFabricPreferencesView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomProductCubit, CustomProductState>(
      builder: (context, state) {
        if (state is CustomProductSuccessState) {
          final cubit = BlocProvider.of<CustomProductCubit>(context);
          return ListView(

            // shrinkWrap: true,
            children: [
              SizedBox(
                height: 20.h,
              ),
              ...state.customerProductList.map(
                (e) => CustomizeBrandExpansionTile(
                  customProductsResponseEntity: e,
                  selectedObjId: cubit.fetchKandoraObjectId,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ...state.customerProductList.map(
                (e) => CustomizeColorExpansionTile(
                  customProductsResponseEntity: e,
                  selectedObjId: cubit.fetchKandoraObjectId,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ...state.customerProductList.map(
                (e) => CustomizeKandoraExpansionTile(
                  customProductsResponseEntity: e,
                  selectedObjId: cubit.fetchKandoraObjectId,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomElevatedButton(
                  text: 'Measurement',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UploadUserMeasurement(),
                    ),
                  ),
                  color: Colors.green,
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
