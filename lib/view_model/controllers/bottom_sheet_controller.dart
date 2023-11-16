import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/bottom_sheet/bottom_sheet_farmclub_exit.dart';
import 'package:mojacknong_android/common/bottom_sheet/bottom_sheet_farmclub_join.dart';
import 'package:mojacknong_android/common/dialog/Dialog_join_farmclub.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view/home/component/register/customs/Dialog_register_vege.dart';

class BottomSheetController extends GetxController {
  void showActionSheetComment(
    BuildContext? context, {
    required String message,
    required String cancelText,
    required String confirmText,
  }) {
    showCupertinoModalPopup<void>(
      context: context!,
      builder: (BuildContext context) => CupertinoActionSheet(
        message: Text(
          message,
          style: const TextStyle(
            color: FarmusThemeData.grey2,
            fontSize: 12,
            fontFamily: "Pretendard",
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              cancelText,
              style: const TextStyle(
                color: FarmusThemeData.dark,
                fontSize: 14,
                fontFamily: "Pretendard",
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              confirmText,
              style: const TextStyle(
                color: FarmusThemeData.dark,
                fontSize: 14,
                fontFamily: "Pretendard",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showCustomCupertinoActionSheet(
    BuildContext? context, {
    String? title,
    required String message,
    required List<String> options,
    required String cancelButtonText,
  }) {}

  void showFarmclubJoinBottomSheet(BuildContext context, String title) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: FarmusThemeData.white,
      builder: (BuildContext context) {
        return BottomSheetFarmclubJoin(
          title: title,
        );
      },
    );
  }

  void showFarmclubExitBottomSheet(BuildContext context, String title) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: FarmusThemeData.white,
      builder: (BuildContext context) {
        return BottomSheetFarmclubExit();
      },
    );
  }

  void showJoinDialog(BuildContext context, String title) {
    showDialog<void>(
      context: context,
      barrierColor: FarmusThemeData.grey2,
      builder: (BuildContext context) {
        return DialogJoinFarmclub(
          title: title,
          content: "팜클럽에 가입했어요",
        );
      },
    );
  }

  void showAuthDialog(BuildContext context, String title, String content) {
    showDialog<void>(
      context: context,
      barrierColor: FarmusThemeData.grey2,
      builder: (BuildContext context) {
        return DialogJoinFarmclub(
          title: title,
          content: content,
        );
      },
    );
  }

  void showRegisterDialog(BuildContext context, String title) {
    showDialog<void>(
      context: context,
      barrierColor: FarmusThemeData.grey2,
      builder: (BuildContext context) {
        return DialogRegisterVege(
          title: title,
        );
      },
    );
  }
}
