import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:libadwaita_bitsdojo/libadwaita_bitsdojo.dart';

import 'package:appimagepool/utils/utils.dart';
import 'package:libadwaita/libadwaita.dart';

class RoundedDialog extends HookConsumerWidget {
  final List<Widget> children;
  final double height;
  final double width;
  final List<Widget>? start;
  final Widget? title;
  final List<Widget>? end;

  const RoundedDialog({
    Key? key,
    required this.children,
    this.height = 310,
    this.width = 310,
    this.start,
    this.title,
    this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              AdwHeaderBar(
                actions: AdwActions(
                  onDoubleTap: appWindow?.maximizeOrRestore,
                  onHeaderDrag: appWindow?.startDragging,
                  onClose: context.back,
                ),
                start: start ?? [],
                title: title,
                end: end ?? [],
                style: const HeaderBarStyle(
                  isTransparent: true,
                ),
              ),
              Flexible(
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  children: children,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
