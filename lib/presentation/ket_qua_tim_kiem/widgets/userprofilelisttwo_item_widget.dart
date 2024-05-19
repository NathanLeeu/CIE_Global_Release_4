import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofilelisttwoItemWidget extends StatelessWidget {
  const UserprofilelisttwoItemWidget({Key? key})
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
            left: 10.h,
            right: 2.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 17.v),
                child: Text(
                  "3",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  bottom: 17.v,
                ),
                child: Text(
                  "Louksone Sihalath",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Container(
                width: 63.h,
                margin: EdgeInsets.only(left: 24.h),
                child: Text(
                  "B23DCCN989",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 16.v),
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
