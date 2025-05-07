enum GoldSponsorType {
  flutter(
    name: 'Flutter',
    url: 'https://flutter.dev/',
    logoAssetName: 'resources/images/flutter_white.png',
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
  yumemi(
    name: 'ゆめみ',
    url: 'https://www.yumemi.co.jp/',
    logoAssetName: 'resources/images/yumemi.png',
  ),
  omiai(
    name: 'Omiai',
    url: 'https://enito.co.jp/',
    logoAssetName: 'resources/images/omiai.png',
  ),
  flutterFlow(
    name: 'FlutterFlow',
    url: 'https://flutterflow.io/',
    logoAssetName: 'resources/images/flutterflow.png',
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

enum CommunitySponsorType {
  ibj(
    name: 'IBJ',
    url: 'https://www.ibjapan.jp/',
    logoAssetName: 'resources/images/ibj.png',
  ),
  blendthink(
    name: 'blendthink',
    url: 'https://twitter.com/blendthink',
    logoAssetName: 'resources/images/blendthink.png',
  ),
  shorebird(
    name: 'shorebird',
    url: 'https://shorebird.dev/',
    logoAssetName: 'resources/images/shorebird.png',
  ),
  ;

  const CommunitySponsorType({
    required this.name,
    required this.url,
    required this.logoAssetName,
  });

  final String name;
  final String url;
  final String logoAssetName;
}