enum OrganizerType {
  kboy(
    name: 'Kei Fujikawa',
    xAccountName: 'kboy_silvergym',
    logoAssetName: 'resources/images/kboy.jpeg',
  ),
  majid(
    name: 'Majid Hajian',
    xAccountName: 'mhadaily',
    logoAssetName: 'resources/images/majid_profile.jpg',
  ),
  kosuke(
    name: 'Kosuke Saigusa',
    xAccountName: 'KosukeSaigusa',
    logoAssetName: 'resources/images/kosuke.jpeg',
  ),
  masaki(
    name: 'Masaki Sato',
    xAccountName: 'masaki_hideout',
    logoAssetName: 'resources/images/masaki.jpeg',
  ),
  shohei(
    name: 'Shohei Ogawa',
    xAccountName: 'heyhey1028',
    logoAssetName: 'resources/images/heyhey.jpeg',
  ),
  yanoo(
    name: 'Yushi Nogami',
    xAccountName: 'yanooo_jp',
    logoAssetName: 'resources/images/yanoo.jpeg',
  ),
  kitsu(
    name: 'Kazuki Kitsukawa',
    xAccountName: 'kitsu2_',
    logoAssetName: 'resources/images/kitsu.jpeg',
  ),
  tsuruoka(
    name: 'Hideki Tsuruoka',
    xAccountName: 'h_tsuruo',
    logoAssetName: 'resources/images/tsuruoka.jpeg',
  ),
  ;

  const OrganizerType({
    required this.name,
    required this.xAccountName,
    required this.logoAssetName,
  });

  final String name;
  final String xAccountName;
  final String logoAssetName;
}
