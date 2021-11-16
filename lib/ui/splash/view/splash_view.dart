import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/src/provider.dart';
import 'package:with_retro_firebase/core/init/lang/change/change_theme.dart';
import 'package:with_retro_firebase/core/init/network/interface/api_client.dart';
import 'package:with_retro_firebase/core/init/network/response/response_model.dart';
import 'package:with_retro_firebase/core/init/theme/theme_change_provider.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/splash/model/user.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool loading = false;
  late List<User> users = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: theme.primaryColor),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: theme.scaffoldBackgroundColor,
          child: Column(
            children: [
              Text(S.of(context).welcome),
              TextButton(
                  onPressed: () => ChangeTheme(context, "tr").changes(),
                  child: const Text("TR")),
              TextButton(
                  onPressed: () => context.read<ThemeProvider>().toggleTheme(),
                  child: const Text("Theme")),
              !loading
                  ? Text(users[0].name ?? "")
                  : const CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }

  Future<void> fetchData() async {
    setState(() {
      loading = true;
    });
    final client = ApiClient(
        Dio(BaseOptions(contentType: "application/json")));
    ResponseData<List<User>> res = await client.getUsers();
    log(res.data!.toString());

    setState(() {
      loading = false;
    });
  }
}
