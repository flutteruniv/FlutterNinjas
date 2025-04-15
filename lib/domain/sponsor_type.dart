enum GoldSponsorType {
  flutter(
    name: 'Flutter',
    url: 'https://flutter.dev/',
    logoAssetName: 'resources/images/flutter.png',
  ),
  ;

  const GoldSponsorType({
    required this.name,
    required this.url,
    required this.logoAssetName,
  });

  final String name;
  final String url;
  final String logoAssetName;
}

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
    logoAssetName: 'resources/images/teamlab.png',
  ),
  codeMagic(
    name: 'Codemagic',
    url: 'https://codemagic.io/start/',
    logoAssetName: 'resources/images/codemagic.png',
  ),
  ritsuan(
    name: 'リツアンSTC',
    url: 'https://ritsuan.com/',
    logoAssetName: 'resources/images/ritsuan.png',
  ),
  proto(
    name: '株式会社プロトソリューション',
    url: 'https://www.protosolution.co.jp',
    logoAssetName: 'resources/images/proto.png',
  ),
  ivry(
    name: 'アイブリー',
    url: 'https://ivry.jp/',
    logoAssetName: 'resources/images/ivry.png',
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
