import 'package:between_us/app/dependencies/configure_dependencies.dart';
import 'package:between_us/app/routing/app_router.dart';
import 'package:between_us/app/theme/app_theme.dart';
import 'package:flex_design/engine/flex_theme_engine.dart';
import 'package:flex_design/extensions/extensions.dart';
import 'package:flex_design/flex_design.dart';
import 'package:flex_design/flex_theme_repository.dart';
import 'package:flex_design/models/design_manifest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  final designManifest = await FlexThemeRepository().loadDefaultTheme(
    'assets/data/design-manifest.json',
  );
  runApp(MyApp(designManifest: designManifest));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.designManifest});

  final DesignManifest designManifest;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeEngine = ThemeEngine(designManifest);
    final themeData = themeEngine.applyThemeVariant(
      lightTheme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
    final lightTheme = themeData.light;
    final darkTheme = themeData.dark;

    return ScreenUtil(
      options: const ScreenUtilOptions(
        designSize: Size(375, 812),
        flipSizeWhenLandscape: false,
        minTextScale: 0.6,
        fontScaleStrategy: ScreenUtilScaleStrategy.both,
        paddingScaleStrategy: ScreenUtilScaleStrategy.both,
        widthScaleStrategy: ScreenUtilScaleStrategy.both,
        heightScaleStrategy: ScreenUtilScaleStrategy.both,
      ),
      child: MaterialApp.router(
        title: 'MyApp',
        theme: lightTheme,
        darkTheme: darkTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(context.i(context.padding.comfortable)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: context.i(context.spacing.grouped),
          children: [
            FlexTitleH1.bold('Quicksand'),
            FlexTitleH1('Quicksand'),
            FlexBodyH1.bold('Open Sans'),
            FlexBodyH1.medium('Open Sans'),
            FlexBodyH1('Open Sans'),
            FlexPrimaryButton('Primary', onPressed: () {}),
            FlexSecondaryButton('Secondary', onPressed: () {}),
            FlexTertiaryButton('Tertiary', onPressed: () {}),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
