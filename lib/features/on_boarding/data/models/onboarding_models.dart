import 'package:daleel/core/utils/app_assets.dart';

class OnBoardingModels {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModels(
      {required this.image, required this.title, required this.subTitle});
}

List<OnBoardingModels> onBoardingData = [
  OnBoardingModels(
      image: Assets.assetsImagesOnBoarding,
      title: 'Explore The history with Dalel in a smart way',
      subTitle:
          'Using our app’s history libraries you can find many historical periods'),
  OnBoardingModels(
      image: Assets.assetsImagesOnBoarding1,
      title: 'From every place on earth',
      subTitle: 'A big variety of ancient places from all over the world'),
  OnBoardingModels(
      image: Assets.assetsImagesOnBoarding2,
      title: 'Using modern AI technology for better user experience',
      subTitle:
          'AI provide recommendations and helps you to continue the search journey'),
];
