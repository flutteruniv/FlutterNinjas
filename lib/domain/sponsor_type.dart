enum SilverSponsorType {
  revenueCat(
    name: 'RevenueCat, Inc.',
    url: 'https://www.revenuecat.com/jp/',
    logoAssetName: 'resources/images/revenuecat.png',
  ),
  studyPlus(
    name: 'Studyplus Inc',
    url: 'https://info.studyplus.co.jp/recruit',
    logoAssetName: 'resources/images/studyplus.png',
  ),
  teamLab(
    name: 'teamLab',
    url: 'https://www.team-lab.com/',
    logoAssetName: 'resources/images/teamLab_logo.png',
  ),
  ;

  const SilverSponsorType({
    required this.name,
    required this.url,
    required this.logoAssetName,
  });

  final String name;
  final String url;
  final String logoAssetName;
}
