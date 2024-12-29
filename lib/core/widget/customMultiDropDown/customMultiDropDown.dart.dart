import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:washme/core/style/style.dart';
import 'package:washme/core/widget/customMultiDropDown/customMultiDropDownController.dart';


import '../customDropDown/customDropDown.dart';
import '../customRowCheckBox.dart';

class CustomMultiDropDown extends StatelessWidget {
  const CustomMultiDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(CustomMultiDropDownController());
    return GetBuilder<CustomMultiDropDownController>(
      builder: (controller) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
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
                      title: controller.selectedItems.isEmpty
                          ? Text('اختر سيارة',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                          : wrapPart(controller),
                      children: List.generate(
                        controller.items.length,
                        (index) {
                          return Padding(
                            padding: EdgeInsetsDirectional.only(
                                end: 6.w, start: 2.w, bottom: 1.h),
                            child: CustomRowcheckbox(
                              text: controller.items[index],
                              isChecked: controller.isCheckItem[index],
                              onTap: () {
                                controller.addItem(index);
                              },
                            ),
                          );
                        },
                      ),
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

Widget wrapPart(CustomMultiDropDownController controller) {
  return Wrap(
      children: List.generate(controller.selectedItems.length, (index) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 1.5.w),
      child: Chip(
        label: Text(controller.selectedItems[index]),
        deleteIcon: Icon(Icons.close),
        onDeleted: () {
          controller.removeItemfromSelected(index);
        },
      ),
    );
  }));
}
