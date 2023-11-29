import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:kepu/generated/l10n.dart';
import 'package:kepu/ui/colors.dart';
import 'package:kepu/ui/text_styles.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).about),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/icon.png',
                      height: 100,
                      width: 100,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: darkGreyColor.withAlpha(50),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ListTile(
                  leading: const Icon(EvaIcons.text),
                  title: Text(
                    S.of(context).name,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: Text(
                    S.of(context).gyawun,
                    style: smallTextStyle(context),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.new_releases),
                  title: Text(
                    S.of(context).version,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: Text(
                    "1.0.0",
                    style: smallTextStyle(context),
                  ),
                ),
                ListTile(
                  leading: const Icon(EvaIcons.person),
                  title: Text(
                    S.of(context).developer,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        S.of(context).sheikhhaziq,
                        style: smallTextStyle(context),
                      ),
                      const Icon(
                        EvaIcons.chevronRight,
                        size: 30,
                      )
                    ],
                  ),
                  onTap: () => launchUrl(
                      Uri.parse('https://github.com/sheikhhaziq'),
                      mode: LaunchMode.externalApplication),
                ),
                ListTile(
                  leading: const Icon(Iconsax.building),
                  title: Text(
                    S.of(context).organisation,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        S.of(context).jhelumCorp,
                        style: smallTextStyle(context),
                      ),
                      const Icon(
                        EvaIcons.chevronRight,
                        size: 30,
                      )
                    ],
                  ),
                  onTap: () => launchUrl(
                      Uri.parse('https://jhelumcorp.github.io'),
                      mode: LaunchMode.externalApplication),
                ),
                ListTile(
                  leading: const Icon(Icons.telegram_outlined),
                  title: Text(
                    S.of(context).telegram,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: const Icon(
                    EvaIcons.chevronRight,
                    size: 30,
                  ),
                  onTap: () => launchUrl(Uri.parse('https://t.me/jhelumcorp'),
                      mode: LaunchMode.externalApplication),
                ),
                ListTile(
                  leading: const Icon(EvaIcons.people),
                  title: Text(
                    S.of(context).contributors,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: const Icon(
                    EvaIcons.chevronRight,
                    size: 30,
                  ),
                  onTap: () => launchUrl(
                      Uri.parse(
                          'https://github.com/jhelumcorp/gyawun/contributors'),
                      mode: LaunchMode.externalApplication),
                ),
                ListTile(
                  leading: const Icon(EvaIcons.code),
                  title: Text(
                    S.of(context).sourceCode,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: const Icon(
                    EvaIcons.chevronRight,
                    size: 30,
                  ),
                  onTap: () => launchUrl(
                      Uri.parse('https://github.com/jhelumcorp/gyawun'),
                      mode: LaunchMode.externalApplication),
                ),
                ListTile(
                  leading: const Icon(Icons.bug_report),
                  title: Text(
                    S.of(context).bugReport,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: const Icon(
                    EvaIcons.chevronRight,
                    size: 30,
                  ),
                  onTap: () => launchUrl(
                      Uri.parse(
                          'https://github.com/jhelumcorp/gyawun/issues/new?assignees=&labels=bug&projects=&template=bug_report.yaml'),
                      mode: LaunchMode.externalApplication),
                ),
                ListTile(
                  leading: const Icon(Icons.request_page),
                  title: Text(
                    S.of(context).featureRequest,
                    style: subtitleTextStyle(context),
                  ),
                  trailing: const Icon(
                    EvaIcons.chevronRight,
                    size: 30,
                  ),
                  onTap: () => launchUrl(
                      Uri.parse(
                          'https://github.com/jhelumcorp/gyawun/issues/new?assignees=sheikhhaziq&labels=enhancement%2CFeature+Request&projects=&template=feature_request.yaml'),
                      mode: LaunchMode.externalApplication),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(S.of(context).madeInKashmir),
            ),
          ),
        ],
      ),
    );
  }
}
