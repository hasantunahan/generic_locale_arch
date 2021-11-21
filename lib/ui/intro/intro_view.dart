import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  List<PageViewModel> getPackages(context, ThemeData theme) {
    return [
      PageViewModel(
          decoration: PageDecoration(
              pageColor: theme.backgroundColor,
              titleTextStyle: theme.textTheme.headline5!
                  .copyWith(color: theme.colorScheme.primary),
              bodyTextStyle: theme.textTheme.bodyText1!),
          title: S.of(context).what,
          body: S.of(context).intro1Body,
          image: Image.asset('intro1'.toImagePng)),
      PageViewModel(
        decoration: PageDecoration(
            pageColor: theme.backgroundColor,
            titleTextStyle: theme.textTheme.headline5!
                .copyWith(color: theme.colorScheme.primary),
            bodyTextStyle: theme.textTheme.bodyText1!),
        title: S.of(context).what,
        body: S.of(context).intro2Body,
        image: Image.asset('intro2'.toImagePng),
      ),
      PageViewModel(
        decoration: PageDecoration(
            pageColor: theme.backgroundColor,
            titleTextStyle: theme.textTheme.headline5!
                .copyWith(color: theme.colorScheme.primary),
            bodyTextStyle: theme.textTheme.bodyText1!),
        title: S.of(context).what,
        body: S.of(context).intro3Body,
        image: Image.asset('intro3'.toImagePng),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return renderScaffold(context);
  }

  renderScaffold(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        backgroundColor: theme.backgroundColor,
        appBar: AppBar(
          backgroundColor: theme.backgroundColor,
          elevation: 0,
        ),
        body: IntroductionScreen(
          dotsContainerDecorator: ShapeDecoration(
            color: theme.backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
          ),
          done: Text(
            S.of(context).start,
            style: const TextStyle(fontFamily: 'Comfortaa'),
          ),
          onDone: () {},
          pages: getPackages(context, theme),
          skip: Text(
            S.of(context).skip_intro,
            style: const TextStyle(fontFamily: 'Comfortaa'),
          ),
          showSkipButton: true,
          skipFlex: 0,
          nextFlex: 0,
          globalBackgroundColor: theme.backgroundColor,
          next: Text(S.of(context).next),
          dotsDecorator: DotsDecorator(
            color: theme.secondaryHeaderColor,
            activeColor: theme.colorScheme.primary,
          ),
        ));
  }
}
