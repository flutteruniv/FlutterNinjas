
enum SpeakerType {
  remi(
    name: 'Remi Rousselet',
    title: 'Macros are gone. What now?',
    xAccountName: 'remi_rousselet',
    logoAssetName: 'resources/images/remi_profile.jpg',
    desc: 'Guest Speaker / The creator of Riverpod',
    day: Day.day1,
    time: '4:35 pm ~ 5:15 pm',
    talkDescription: '',
  ),
  akansha(
      name: 'Akansha Jain',
      title: 'Offline-First Flutter: Building Resilient Apps for Unreliable Networks',
      xAccountName: 'Akansha2001',
      logoAssetName: 'resources/images/akansha-jain.jpg',
      desc: 'Organizer of Flutter Conf India and Flutter Delhi',
      day: Day.day1,
      time: '2:25 pm ~ 3:05 pm',
      talkDescription: ''
  ),
  ashita(
      name: 'Ashita Prasad',
      title: 'Unleashing Peak Performance: Mastering Flutter DevTools for Blazing-Fast Apps',
      xAccountName: 'ashitaprasad',
      logoAssetName: 'resources/images/ashita-prasad.png',
      desc: 'GDE - Dart & Flutter | Founder, API Dash & fluttergems.dev',
      day: Day.day1,
      time: '1:30 pm ~ 2:10 pm',
      talkDescription: ''
  ),
  festus(
      name: 'Festus Olusegun',
      title: 'Decoding Dart: A Look at the DartVM',
      xAccountName: 'iamjideguru',
      logoAssetName: 'resources/images/festus-olusegun.png',
      desc: 'GDE - Dart & Flutter',
      day: Day.day1,
      time: '4:30 pm ~ 5:10 pm',
      talkDescription: ''
  ),
  kenichi(
      name: 'Kenichi Kambara',
      title: 'Adapting Flutter App UX for Users Across the World',
      xAccountName: 'korodroid',
      logoAssetName: 'resources/images/kenichi-kambara.jpg',
      desc: 'NTT TechnoCross Corporation Principal Evangelist',
      day: Day.day1,
      time: '5:40 pm ~ 6:20 pm',
      talkDescription: ''
  ),
  majid(
      name: 'Majid Hajian',
      title: 'Let\'s Talk About Memory Leaks in Dart And Flutter',
      xAccountName: 'mhadaily',
      logoAssetName: 'resources/images/majid-hajian.jpg',
      desc: 'GDE - Dart & Flutter / @Microsoft',
      day: Day.day1,
      time: '10:30 am ~ 11:10 am',
      talkDescription: ''
  ),
  masahiro(
      name: 'Masahiro Aoki',
      title: 'Mastering Shortcuts in Flutter: Building Desktop and Web Applications with Advanced Keyboard Support',
      xAccountName: 'ma_freud',
      logoAssetName: 'resources/images/masahiro-aoki.jpg',
      desc: 'Founder of OpenCI',
      day: Day.day1,
      time: '11:25 am ~ 12:05 pm',
      talkDescription: ''
  ),
  mike(
      name: 'Mike Diarmid',
      title: 'The Human Side of Flutter\'s Success Story',
      xAccountName: 'mikediarmid',
      logoAssetName: 'resources/images/mike-diarmid.png',
      desc: 'GDE - Firebase / @FlutterFlow / Former CTO & Founder of Invertase',
      day: Day.day1,
      time: '2:50 pm ~ 3:10 pm',
      talkDescription: ''
  ),
  samuel(
      name: 'Samuel Abada',
      title: 'State Restoration – Making The Dead State Live Again',
      xAccountName: 'mastersam_',
      logoAssetName: 'resources/images/samuel-abada.png',
      desc: 'GDE - Dart & Flutter | Co-organizer of the Flutter Lagos & Flutter Akure',
      day: Day.day1,
      time: '1:30 pm ~ 2:10 pm',
      talkDescription: ''
  ),
  sasha(
    name: 'Sasha Denisov',
    title: 'Building Flutter Apps with AI capabilities without Connection, Bills and Privacy Concerns',
    xAccountName: 'ShuregDenisov',
    logoAssetName: 'resources/images/sasha-denisov.jpg',
    desc: 'GDE - Dart & Flutter | EPAM, Chief Software Engineer',
    day: Day.day1,
    time: '11:25 am ~ 12:05 pm',
    talkDescription: '',
  ),
  kyo(
      name: 'Ogawa & Yamamoto',
      title: 'Seamless Passkey Authentication with Flutter x Firebase and our journey on Banking app',
      xAccountName: 'heyhey1028',
      logoAssetName: 'resources/images/heyhey_kyo.png',
      desc: 'Flutter Tech Lead @Money Forward, Inc. & Freelance mobile app developer',
      day: Day.day1,
      time: '10:30 am ~ 11:10 am',
      talkDescription: ''
  ),
  tsuyoshi(
      name: 'Tsuyoshi Chujo',
      title: 'Haskell: Lead Your Code to the Next Level',
      xAccountName: 'tsuyoshi_chujo',
      logoAssetName: 'resources/images/tsuyoshi-chujo.jpg',
      desc: 'Freelance mobile apps developer',
      day: Day.day1,
      time: '3:40 pm ~ 4:20 pm',
      talkDescription: ''
  ),
  yugo(
      name: 'Yugo Sugiyama',
      title: 'Exploring Flutter Path Animations',
      xAccountName: 'u5_03',
      logoAssetName: 'resources/images/yugo-sugiyama.png',
      desc: 'DeNA Co., Ltd.',
      day: Day.day1,
      time: '2:25 pm ~ 2:45 pm',
      talkDescription: ''
  ),
  csongor(
      name: 'Csongor Vogel',
      title: 'KonMari your Flutter code using DCM',
      xAccountName: 'GerfalconVogel',
      logoAssetName: 'resources/images/csongor-vogel.png',
      desc: 'GDE - Dart & Flutter /  Staff Software Engineer @talabat (Delivery hero)',
      day: Day.day1,
      time: '3:35 pm ~ 4:15 pm',
      talkDescription: ''
  );

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
