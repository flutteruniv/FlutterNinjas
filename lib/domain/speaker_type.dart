enum SpeakerType {
  remi(
    name: 'Remi Rousselet',
    title: '',
    xAccountName: 'remi_rousselet',
    logoAssetName: 'resources/images/remi_profile.jpg',
    desc: 'Guest Speaker / The creator of Riverpod',
    day: Day.day1,
    time: '',
    talkDescription: '',
  ),
  akanksha(
    name: 'Akansha Jain',
    title: '',
    xAccountName: 'Akansha2001',
    logoAssetName: 'resources/images/akansha-jain.jpg',
    desc: 'Organizer of Flutter Conf India and Flutter Delhi',
    day: Day.day1,
    time: '',
    talkDescription: ''
  ),
  ashita(
      name: 'Ashita Prasad',
      title: '',
      xAccountName: 'ashitaprasad',
      logoAssetName: 'resources/images/ashita-prasad.png',
      desc: 'GDE - Dart & Flutter | Founder, API Dash & fluttergems.dev',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  festus(
      name: 'Festus Olusegun',
      title: '',
      xAccountName: 'iamjideguru',
      logoAssetName: 'resources/images/festus-olusegun.png',
      desc: 'GDE - Dart & Flutter',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  kenichi(
      name: 'Kenichi Kambara',
      title: '',
      xAccountName: 'korodroid',
      logoAssetName: 'resources/images/kenichi-kambara.jpg',
      desc: 'NTT TechnoCross Corporation Principal Evangelist',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  majid(
      name: 'Majid Hajian',
      title: '',
      xAccountName: 'mhadaily',
      logoAssetName: 'resources/images/majid-hajian.jpg',
      desc: 'GDE - Dart & Flutter / @Microsoft',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  masahiro(
      name: 'Masahiro Aoki',
      title: '',
      xAccountName: 'ma_freud',
      logoAssetName: 'resources/images/masahiro-aoki.jpg',
      desc: 'Founder of OpenCI',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  mike(
      name: 'Mike Diarmid',
      title: '',
      xAccountName: 'mikediarmid',
      logoAssetName: 'resources/images/mike-diarmid.png',
      desc: 'GDE - Firebase / @FlutterFlow / Former CTO & Founder of Invertase',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  samuel(
      name: 'Samuel Abada',
      title: '',
      xAccountName: 'mastersam_',
      logoAssetName: 'resources/images/samuel-abada.png',
      desc: 'GDE - Dart & Flutter | Co-organizer of the Flutter Lagos & Flutter Akure',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  sasha(
    name: 'Sasha Denisov',
    title: '',
    xAccountName: 'ShuregDenisov',
    logoAssetName: 'resources/images/sasha-denisov.jpg',
    desc: 'GDE - Dart & Flutter | EPAM, Chief Software Engineer',
    day: Day.day1,
    time: '',
    talkDescription: '',
  ),
  kyo(
      name: 'Shohei Ogawa & Kyo Yamamoto',
      title: '',
      xAccountName: 'heyhey1028',
      logoAssetName: 'resources/images/heyhey_kyo.png',
      desc: 'Flutter Tech Lead @Money Forward, Inc. & Freelance mobile app developer',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  tsuyoshi(
      name: 'Tsuyoshi Chujo',
      title:
      '',
      xAccountName: 'tsuyoshi_chujo',
      logoAssetName: 'resources/images/tsuyoshi-chujo.jpg',
      desc: 'Freelance mobile apps developer',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  yugo(
      name: 'Yugo Sugiyama',
      title: '',
      xAccountName: 'u5_03',
      logoAssetName: 'resources/images/yugo-sugiyama.png',
      desc: 'DeNA Co., Ltd.',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  csongor(
      name: 'Csongor Vogel',
      title: '',
      xAccountName: 'GerfalconVogel',
      logoAssetName: 'resources/images/csongor-vogel.png',
      desc: 'GDE - Dart & Flutter /  Staff Software Engineer @talabat (Delivery hero)',
      day: Day.day1,
      time: '',
      talkDescription: ''
  ),
  ;

  const SpeakerType({
    required this.name,
    required this.title,
    required this.xAccountName,
    required this.logoAssetName,
    required this.desc,
    required this.day,
    required this.time,
    required this.talkDescription,
  });

  final String name;
  final String title;
  final String xAccountName;
  final String logoAssetName;
  final String desc;
  final Day day;
  final String time;
  final String talkDescription;
}

enum Day {
  day1,
  day2;
}
