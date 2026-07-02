class OnboardingModel {
  final String imagePath;
  final String title;
  final String? description;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    this.description,
  });
  static List<OnboardingModel> getOnboardingList = [
    OnboardingModel(
      imagePath: 'assets/images/onboarding1.png',
      title: 'Protecting Children\n with AI',
      description:
          'Monitor digital behavior and detect potential risks before they become serious threats.',
    ),
    OnboardingModel(
      imagePath: 'assets/images/onboarding2.png',
      title: 'Privacy Comes First',
      description:
          'Baseera analyzes behavioral patterns and network activity without reading messages or accessing personal content.',
    ),
    OnboardingModel(
      imagePath: 'assets/images/onboarding3.png',
      title: 'Smarter Guidance\n for Families',
      description:
          'Baseera analyzes behavioral patterns and network activity without reading messages or accessing personal content.',
    ),
  ];
}
