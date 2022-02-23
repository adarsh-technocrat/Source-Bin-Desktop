import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:source_bin/bloc/code_post_cubit.dart';
import 'package:source_bin/pages/SplashScreen/splash_screen.dart';
import 'package:win_toast/win_toast.dart';

Future<void> main() async {
  runApp(const MyApp());
  await WinToast.instance().initialize(
      appName: "source_bin",
      companyName: "technoctat",
      productName: "source_bin_app");
  doWhenWindowReady(() {
    const initialSize = Size(1000, 600);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<CodePostCubit>(create: (_) => CodePostCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Source Bin',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
