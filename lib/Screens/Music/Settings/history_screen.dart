import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kepu/components/color_icon.dart';
import 'package:kepu/screens/music/settings/data_lists.dart';
import 'package:kepu/ui/text_styles.dart';
import 'package:kepu/generated/l10n.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).history,
            style: mediumTextStyle(context, bold: false)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...historySettingDatalist(context).map((e) {
            return ListTile(
              title: Text(
                e.title,
                style: textStyle(context, bold: false).copyWith(fontSize: 16),
              ),
              leading: (e.color != null && e.icon != null)
                  ? ColorIcon(
                      color: e.color!,
                      icon: e.icon!,
                    )
                  : null,
              trailing: e.trailing != null
                  ? e.trailing!(context)
                  : (e.hasNavigation
                      ? const Icon(
                          EvaIcons.chevronRight,
                          size: 30,
                        )
                      : null),
              onTap: () {
                if (e.hasNavigation && e.location != null) {
                  context.go(e.location!);
                } else if (e.onTap != null) {
                  e.onTap!(context);
                }
              },
              subtitle: e.subtitle != null
                  ? Text(
                      e.subtitle!,
                      style: tinyTextStyle(context),
                      maxLines: 2,
                    )
                  : null,
            );
          }),
        ],
      ),
    );
  }
}
