import 'package:flutter/material.dart';
import 'package:flutter_control/core.dart';
import 'package:flutter_svg/svg.dart';

import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ControlRoot(
      localization: const LocalizationConfig(
        locales: {
          'en': 'assets/localization/en.json',
        },
        defaultLocale: 'en',
      ),
      theme: ThemeConfig<AppTheme>(
        builder: (context) => AppTheme(context),
        themes: {
          Brightness.light: (control) => control.defaultTheme,
          // Brightness.dark: (control) => control.darkTheme,
        },
        initTheme: Brightness.light,
      ),
      states: [
        AppState.init.build(
          (context) => MyHomePage(),
        ),
      ],
      app: (setup, home) => MaterialApp(
        theme: setup.theme,
        locale: setup.locale,
        supportedLocales: setup.supportedLocales,
        home: home,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with ThemeProvider<AppTheme>, LocalizationProvider {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              asset.icon('logo', 'svg'),
            ),
            SizedBox(
              height: theme!.padding,
            ),
            Text(
              localize('hello_worldee')!,
              style: font.headline1,
            ),
          ],
        ),
      ),
    );
  }
}
