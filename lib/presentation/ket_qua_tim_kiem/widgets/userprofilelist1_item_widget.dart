import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class Userprofilelist1ItemWidget extends StatelessWidget {
  const Userprofilelist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        SizedBox(height: 8.v),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            right: 2.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20.v),
                child: Text(
                  "1",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Container(
                width: 88.h,
                margin: EdgeInsets.only(left: 18.h),
                child: Text(
                  "Phonemany Sisouvanthong",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              Spacer(
                flex: 58,
              ),
              Container(
                width: 63.h,
                margin: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  "B23DCCN989",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              Spacer(
                flex: 41,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 19.v),
                child: Text(
                  "3.2/4.0",
                  style: theme.textTheme.bodyMedium,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
