import 'bloc/refer_and_earn_bloc.dart';
import 'models/refer_and_earn_model.dart';
import 'package:flutter/material.dart';
import 'package:refer_and_earn/core/app_export.dart';
import 'package:refer_and_earn/widgets/app_bar/appbar_leading_image.dart';
import 'package:refer_and_earn/widgets/app_bar/custom_app_bar.dart';
import 'package:refer_and_earn/widgets/custom_elevated_button.dart';

class ReferAndEarnScreen extends StatelessWidget {
  const ReferAndEarnScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReferAndEarnBloc>(
        create: (context) => ReferAndEarnBloc(
            ReferAndEarnState(referAndEarnModelObj: ReferAndEarnModel()))
          ..add(ReferAndEarnInitialEvent()),
        child: ReferAndEarnScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReferAndEarnBloc, ReferAndEarnState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 25.v),
                  child: Column(children: [
                    SizedBox(height: 22.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                margin: EdgeInsets.only(bottom: 5.v),
                                padding: EdgeInsets.symmetric(horizontal: 26.h),
                                child: Column(children: [
                                  _buildNotificationPanel(context),
                                  SizedBox(height: 10.v),
                                  _buildFrame1(context),
                                  SizedBox(height: 37.v),
                                  Container(
                                      margin: EdgeInsets.only(left: 2.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 15.v),
                                      decoration: AppDecoration
                                          .fillPrimaryContainer
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder22),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.h, right: 3.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Opacity(
                                                            opacity: 0.5,
                                                            child: Text(
                                                                "lbl_how_to_earn"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: CustomTextStyles
                                                                    .titleMediumPoppinsPrimary)),
                                                      ),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowUp,
                                                          height: 24.v,
                                                          width: 22.h)
                                                    ])),
                                            SizedBox(height: 19.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.h, right: 12.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: _buildFrame(
                                                            context,
                                                            stepText:
                                                                "lbl_step_1".tr,
                                                            inviteeText:
                                                                "lbl_you".tr),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 13.v),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_share_link_to_friends"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium),
                                                                SizedBox(
                                                                    height:
                                                                        1.v),
                                                                SizedBox(
                                                                    width:
                                                                        174.h,
                                                                    child: Text(
                                                                        "msg_tips_share_to_any"
                                                                            .tr,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall!
                                                                            .copyWith(height: 1.50)))
                                                              ]))
                                                    ])),
                                            SizedBox(height: 18.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.h, right: 11.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        23.v),
                                                            child: _buildFrame(
                                                                context,
                                                                stepText:
                                                                    "lbl_step_2"
                                                                        .tr,
                                                                inviteeText:
                                                                    "lbl_invitee"
                                                                        .tr)),
                                                      ),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                                width: 168.h,
                                                                child: Text(
                                                                    "msg_fill_mobile_phone"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium!
                                                                        .copyWith(
                                                                            height:
                                                                                1.50))),
                                                            SizedBox(
                                                                width: 176.h,
                                                                child: Text(
                                                                    "msg_one_inviter_can"
                                                                        .tr,
                                                                    maxLines: 3,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall!
                                                                        .copyWith(
                                                                            height:
                                                                                1.50)))
                                                          ])
                                                    ])),
                                            SizedBox(height: 17.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.h, right: 21.h),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: _buildFrame(
                                                            context,
                                                            stepText:
                                                                "lbl_step_3".tr,
                                                            inviteeText:
                                                                "lbl_invitees"
                                                                    .tr),
                                                      ),
                                                      Container(
                                                          width: 166.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 15.h,
                                                                  bottom: 26.v),
                                                          child: Text(
                                                              "msg_sign_up_for_palmpay_get"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium!
                                                                  .copyWith(
                                                                      height:
                                                                          1.50)))
                                                    ])),
                                            SizedBox(height: 18.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.h, right: 65.h),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      _buildFrame(context,
                                                          stepText:
                                                              "lbl_step_4".tr,
                                                          inviteeText:
                                                              "lbl_you".tr),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15.h,
                                                                  top: 3.v,
                                                                  bottom: 48.v),
                                                          child: Text(
                                                              "msg_get_great_rewards"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium))
                                                    ])),
                                            SizedBox(height: 9.v),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "lbl_rules"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: CustomTextStyles
                                                        .titleMediumPlusJakartaSansBluegray400)),
                                            SizedBox(height: 4.v),
                                            Divider(),
                                            SizedBox(height: 4.v),
                                            SizedBox(
                                                width: 269.h,
                                                child: Text(
                                                    "msg_1_each_round_of".tr,
                                                    maxLines: 14,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodySmallPlusJakartaSansBluegray300
                                                        .copyWith(
                                                            height: 1.21))),
                                            SizedBox(height: 31.v)
                                          ]))
                                ]))))
                  ])),
              bottomNavigationBar: _buildReferAndEarn(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 359.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgCoolicon,
            margin: EdgeInsets.fromLTRB(30.h, 16.v, 316.h, 17.v),
            onTap: () {
              onTapCoolicon(context);
            }));
  }

  /// Section Widget
  Widget _buildNotificationPanel(BuildContext context) {
    return SizedBox(
        height: 78.v,
        width: 306.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 34.v),
                  padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 7.v),
                  decoration: AppDecoration.fillOnPrimary
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 30.adaptSize,
                        width: 30.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 8.h, top: 5.v, bottom: 5.v),
                        child: Text("msg_xxxxxxxxxxxxxxx".tr,
                            style: CustomTextStyles.bodySmallPrimary))
                  ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text("lbl_refer_earn".tr,
                      style: theme.textTheme.headlineLarge)))
        ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v),
        decoration: AppDecoration.outlineGrayA
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, right: 5.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 7.v),
                        child: Text("lbl_my_coins".tr,
                            style: theme.textTheme.titleSmall)),
                    CustomElevatedButton(
                        height: 28.v,
                        width: 90.h,
                        text: "lbl_withdraw".tr.toUpperCase(),
                        buttonStyle: CustomButtonStyles.fillTealA,
                        buttonTextStyle: CustomTextStyles.labelLargeOnPrimary)
                  ])),
          SizedBox(height: 24.v),
          SizedBox(
              height: 47.v,
              width: 269.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 101.h),
                        child: Text("lbl_1000".tr,
                            style: theme.textTheme.labelLarge))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 46.h),
                        child: Text("lbl_500".tr,
                            style: theme.textTheme.labelLarge))),
                Align(
                    alignment: Alignment.bottomRight,
                    child:
                        Text("lbl_2000".tr, style: theme.textTheme.labelLarge)),
                Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        height: 30.v,
                        width: 269.h,
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 10.v,
                                  width: 269.h,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primaryContainer,
                                      borderRadius: BorderRadius.circular(5.h)),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.h),
                                      child: LinearProgressIndicator(
                                          value: 0.14,
                                          backgroundColor: theme
                                              .colorScheme.primaryContainer,
                                          valueColor: AlwaysStoppedAnimation<
                                                  Color>(
                                              theme.colorScheme.primary))))),
                          CustomImageView(
                              imagePath: ImageConstant.imgFrame17661,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              alignment: Alignment.centerRight),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 46.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFrame17659,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFrame17659,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(left: 72.h))
                                  ])))
                        ])))
              ])),
          SizedBox(height: 29.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "msg_invite_3_new_users2".tr,
                    style: CustomTextStyles.bodySmallff9ca2aa),
                TextSpan(
                    text: "lbl_n500".tr,
                    style: CustomTextStyles.labelLargeff9ca2aa)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 5.v),
          Divider(indent: 4.h, endIndent: 5.h),
          SizedBox(height: 6.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "msg_cash_will_expire2".tr,
                    style: CustomTextStyles.bodySmallff9ca2aa),
                TextSpan(
                    text: "msg_6day_13h_59min_34s".tr,
                    style: CustomTextStyles.labelLargeff9ca2aa)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 23.v),
          CustomElevatedButton(text: "lbl_invite".tr),
          SizedBox(height: 8.v)
        ]));
  }

  /// Section Widget
  Widget _buildReferAndEarn(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_refer_and_earn".tr,
        margin: EdgeInsets.only(left: 42.h, right: 42.h, bottom: 39.v));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String stepText,
    required String inviteeText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 3.v),
        decoration: AppDecoration.fillOnPrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(stepText,
              style: theme.textTheme.labelLarge!
                  .copyWith(color: appTheme.blueGray300)),
          CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Text(inviteeText,
              style: theme.textTheme.labelLarge!
                  .copyWith(color: appTheme.blueGray300))
        ]));
  }

  /// Navigates to the previous screen.
  onTapCoolicon(BuildContext context) {
    NavigatorService.goBack();
  }
}
