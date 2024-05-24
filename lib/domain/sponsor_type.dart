enum PlatinumSponsorType {
  codeMagic(
    name: 'Codemagic',
    url: 'https://codemagic.io/start/',
    logoAssetName: 'resources/images/codemagic.png',
  ),
  ;

  const PlatinumSponsorType({
    required this.name,
    required this.url,
    required this.logoAssetName,
  });

  final String name;
  final String url;
  final String logoAssetName;
}

enum GoldSponsorType {
  moneyForward(
    name: 'Money Forward',
    url: 'https://corp.moneyforward.com',
    logoAssetName: 'resources/images/moneyforward.png',
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

enum CommunitySponsorType {
  blendthink(
    name: 'blendthink',
    url: 'https://twitter.com/blendthink',
    logoAssetName: 'resources/images/blendthink.png',
  ),
  studyPlus(
    name: 'スタディプラス株式会社',
    url: 'https://info.studyplus.co.jp/recruit',
    logoAssetName: 'resources/images/studyplus.png',
  ),
  magicPod(
    name: 'MagicPod',
    url: 'https://magicpod.com/',
    logoAssetName: 'resources/images/magicpod.png',
  ),
  ritsuan(
    name: 'リツアンSTC',
    url: 'https://ritsuan.com/',
    logoAssetName: 'resources/images/ritsuan.png',
  ),
  zeroPlus(
    name: '株式会社ZeroPlus',
    url: 'https://0plus.jp/',
    logoAssetName: 'resources/images/zeroplus.png',
  ),
  flutterDaigaku(
    name: 'Flutter大学',
    url: 'https://flutteruniv.com',
    logoAssetName: 'resources/images/flutterdaigaku.jpg',
  ),
  kyudo(
    name: '弓道のアプリ 採点簿',
    url: 'https://kyudo-bowyer.com/',
    logoAssetName: 'resources/images/kyudo-bowyer.png',
  ),
  proto(
    name: '株式会社プロトソリューション',
    url: 'https://www.protosolution.co.jp',
    logoAssetName: 'resources/images/proto.png',
  ),
  DCM(
    name: 'DCM',
    url: 'https://dcm.dev',
    logoAssetName: 'resources/images/dcm.png',
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
