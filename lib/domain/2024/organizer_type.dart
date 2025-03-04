enum OrganizerType {
  kboy(
    name: 'Kei Fujikawa',
    xAccountName: 'kboy_silvergym',
    logoAssetName: 'resources/images/kboy.jpg',
  ),
  kosuke(
    name: 'Kosuke Saigusa',
    xAccountName: 'KosukeSaigusa',
    logoAssetName: 'resources/images/kosuke.jpeg',
  ),
  masaki(
    name: 'Masaki Sato',
    xAccountName: 'masak1sat0',
    logoAssetName: 'resources/images/masaki.jpeg',
  ),
  yanoo(
    name: 'Yushi Nogami',
    xAccountName: 'yanooo_jp',
    logoAssetName: 'resources/images/yanoo.jpg',
  ),
  kitsu(
    name: 'Kazuki Kitsukawa',
    xAccountName: 'kitsu2_',
    logoAssetName: 'resources/images/kitsu.jpg',
  ),
  yuto(
    name: 'Yuto Kimura',
    xAccountName: 'yutoakaut',
    logoAssetName: 'resources/images/yutoakaut.jpg',
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
