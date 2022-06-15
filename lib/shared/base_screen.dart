import 'package:flutter/material.dart';
import 'package:hodi/core/constant/constant.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen(
      {Key? key,
      this.title,
      this.leading,
      this.trailing,
      required this.child,
      this.elevation = 0.5,
      this.onPress,
      this.titleWidget,
      this.floatingActionButton,
      this.backgroundColor,
      this.isBottom = true})
      : super(key: key);

  final String? title;
  final List<Widget>? trailing;
  final Widget? leading;
  final Widget child;
  final double? elevation;
  final Function()? onPress;
  final Widget? titleWidget;
  final Color? backgroundColor;
  final Widget? floatingActionButton;
  final bool isBottom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      key: key,
      floatingActionButton: floatingActionButton,
      appBar: title != null
          ? AppBar(
              backgroundColor: secondaryColor,
              actions: trailing,
              leading: leading,
              automaticallyImplyLeading: leading != null ? true : false,
              elevation: elevation,
              centerTitle: true,
              title: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .6,
                child: Text(title!,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white, overflow: TextOverflow.ellipsis)),
              ))
          : null,
      body: SafeArea(
        bottom: isBottom,
        child: GestureDetector(
          child: child,
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
        ),
      ),
    );
  }
}
