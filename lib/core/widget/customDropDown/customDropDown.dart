import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/widget/customDropDown/customDropDownController.dart';


import 'customDropDown.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(CustomDropDownlController());
    return GetBuilder<CustomDropDownlController>(
      builder: (controller) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      controller: controller.expandedController,
                      initiallyExpanded: controller.isExpanded,
                      onExpansionChanged: (bool expanded) {
                        controller.onExpansionChanged(expanded);
                      },
                      title: Text(
                        controller.selectedValue ?? 'اختر سيارة',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      children: controller.items.map((item) {
                        return Padding(
                          padding: EdgeInsetsDirectional.only(
                              end: 6.w, start: 2.w, bottom: 1.h),
                          child: InkWell(
                            onTap: () {
                              controller.chooseItem(item);
                            },
                            child: Row(
                              children: [
                                Text(
                                  item,
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
