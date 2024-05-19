import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // ignore_for_file: must_be_immutable

class TNgQuanLhsPage extends StatefulWidget {
  const TNgQuanLhsPage({Key? key})
      : super(
          key: key,
        );

  @override
  TNgQuanLhsPageState createState() => TNgQuanLhsPageState();
}

class TNgQuanLhsPageState extends State<TNgQuanLhsPage>
    with AutomaticKeepAliveClientMixin<TNgQuanLhsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        body: _buildScrollview(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumntt(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 16.h,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 14.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TT",
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Họ & tên",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 60,
                ),
                Text(
                  "Giấy tờ",
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 39,
                ),
                Text(
                  "Tình trạng",
                  style: theme.textTheme.titleSmall,
                )
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                endIndent: 17.h,
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 19.v),
                      child: Text(
                        "1",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Container(
                      width: 88.h,
                      margin: EdgeInsets.only(left: 13.h),
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
                      flex: 41,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 19.v),
                      child: Text(
                        "BHYT",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Spacer(
                      flex: 58,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 17.v),
                      child: Column(
                        children: [
                          Container(
                            width: 81.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 19.h,
                              vertical: 1.v,
                            ),
                            decoration:
                                AppDecoration.fillDeeporange100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: Text(
                              "Quá hạn",
                              style:
                                  CustomTextStyles.bodySmallSFProDisplayRed700,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildUserProfile(
              context,
              dynamicText: "2",
              dynamicText1: "Phonemany Sisouvanthong",
              dynamicText2: "Hộ chiếu",
              dynamicText3: "Sắp đến hạn",
            ),
          ),
          SizedBox(height: 6.v),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                endIndent: 17.h,
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: _buildRecentOrders(
                  context,
                  textFour: "3",
                  textPhonemanyThree: "Phonemany Sisouvanthong",
                  textBohim: "Thị thực",
                  textQuaHan: "Quá hạn",
                ),
              ),
              SizedBox(height: 6.v),
              Divider(
                endIndent: 17.h,
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: _buildRecentOrders(
                  context,
                  textFour: "4",
                  textPhonemanyThree: "Phonemany Sisouvanthong",
                  textBohim: "Bảo hiểm",
                  textQuaHan: "Quá hạn",
                ),
              ),
              SizedBox(height: 5.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    endIndent: 17.h,
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: _buildRecentOrders(
                      context,
                      textFour: "5",
                      textPhonemanyThree: "Phonemany Sisouvanthong",
                      textBohim: "BHYT",
                      textQuaHan: "Quá hạn",
                    ),
                  )
                ],
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: _buildUserProfile(
                  context,
                  dynamicText: "6",
                  dynamicText1: "Phonemany Sisouvanthong",
                  dynamicText2: "BHYT",
                  dynamicText3: "Sắp đến hạn",
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: _buildUserProfile(
                  context,
                  dynamicText: "7",
                  dynamicText1: "Phonemany Sisouvanthong",
                  dynamicText2: "Thị thực",
                  dynamicText3: "Sắp đến hạn",
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: _buildUserProfile(
                  context,
                  dynamicText: "8",
                  dynamicText1: "Phonemany Sisouvanthong",
                  dynamicText2: "Thị thực",
                  dynamicText3: "Sắp đến hạn",
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollview(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [SizedBox(height: 22.v), _buildColumntt(context)],
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String textFour,
    required String textPhonemanyThree,
    required String textBohim,
    required String textQuaHan,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 19.v),
          child: Text(
            textFour,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        Container(
          width: 88.h,
          margin: EdgeInsets.only(left: 10.h),
          child: Text(
            textPhonemanyThree,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black90001,
              height: 1.25,
            ),
          ),
        ),
        Spacer(
          flex: 52,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 21.v),
          child: Text(
            textBohim,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        Spacer(
          flex: 47,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 17.v),
          child: Column(
            children: [
              Container(
                width: 81.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.fillDeeporange100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Text(
                  textQuaHan,
                  style: CustomTextStyles.bodySmallSFProDisplayRed700.copyWith(
                    color: appTheme.red700,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 19.v),
          child: Text(
            dynamicText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        Container(
          width: 88.h,
          margin: EdgeInsets.only(left: 10.h),
          child: Text(
            dynamicText1,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black90001,
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
            dynamicText2,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        Spacer(
          flex: 58,
        ),
        Container(
          width: 81.h,
          margin: EdgeInsets.only(bottom: 17.v),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillYellow400.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Text(
            dynamicText3,
            style: CustomTextStyles.bodySmallSFProDisplayRed700.copyWith(
              color: appTheme.red700,
            ),
          ),
        )
      ],
    );
  }
}
