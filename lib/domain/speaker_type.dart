enum SpeakerType {
  remi(
    name: 'Remi Rousselet',
    title: 'Riverpod 3.0, the preview',
    xAccountName: 'remi_rousselet',
    logoAssetName: 'resources/images/remi_profile.jpg',
    desc:
        'The creator of the Flutter packages provider, flutter_hooks, riverpod, and freezed.',
  ),
  majid(
    name: 'Majid Hajian',
    title: 'TBD',
    xAccountName: 'mhadaily',
    logoAssetName: 'resources/images/majid_profile.jpg',
    desc:
        'Flutter / Dart GDE, Organizer of Flutter Vikings, the author of flutterengineering.io',
  ),
  abdelrahman(
    name: 'Abdelrahman Eba',
    title:
        'Building SimCity 2000: Unleashing the Power of Flame Engine and Flutter',
    xAccountName: 'rahman_aymen',
    logoAssetName: 'resources/images/abdelrahman-eba.jpg',
    desc: 'CTO, Kwayes Information Technology',
  ),
  akanksha(
    name: 'Akanksha Singh',
    title: 'Automating Accessibility Adoption in Flutter with Gemini AI',
    xAccountName: 'coder_jedi',
    logoAssetName: 'resources/images/akanksha-singh.jpg',
    desc: 'SWE at JP Morgan Chase & Co.',
  ),
  aoi(
    name: 'Aoi Umigishi',
    title: 'My challenge to add Vision OS support in Flutter',
    xAccountName: 'Aoi_Umigishi',
    logoAssetName: 'resources/images/aoi-umigishi.png',
    desc: 'Freelance Flutter engineer',
  ),
  ethiel(
    name: 'Ethiel Adiassa',
    title: 'Dart Isolates: every frame counts for a Performant all',
    xAccountName: 'enthusiastDev',
    logoAssetName: 'resources/images/ethiel-adiassa.png',
    desc:
        'Flutter/Dart GDE, Senior Software Engineer at Djamo, a YC backed startup',
  ),
  kakeru(
    name: 'Kakeru Nakabachi',
    title: 'Inside Flutter Text',
    xAccountName: 'b4tchkn',
    logoAssetName: 'resources/images/kakeru-nakabachi.png',
    desc: 'Flutter Engineer at WinTicket, CyberAgent Inc.',
  ),
  kosuke(
    name: 'Kosuke Saigusa',
    title: 'Exploring Full-Stack Dart for Firebase Server-Side Development',
    xAccountName: 'kosukesaigusa',
    logoAssetName: 'resources/images/kosuke-saigusa.jpg',
    desc: 'Flutter Engineer at Omiai, Inc.',
  ),
  manuela(
    name: 'Manuela Sakura Rommel',
    title:
        'Stop Treating Accessibility as an Afterthought: Concrete Steps to Build Inclusive Apps',
    xAccountName: 'ManuSakuraRo',
    logoAssetName: 'resources/images/manuela-sakura-rommel.jpg',
    desc: 'Co-organizer Flutter Berlin',
  ),
  marcin(
    name: 'Marcin Chudy',
    title: 'Flutter Add-to-App: The Good, the Bad and the Ugly',
    xAccountName: 'mchudy_',
    logoAssetName: 'resources/images/marcin-chudy.jpeg',
    desc: 'Senior Flutter Developer at LeanCode',
  ),
  moritz(
    name: 'Moritz Theis',
    title: 'Beyond Mobile: Powering Embedded Devices with Flutter ',
    xAccountName: 'MoritzTheis',
    logoAssetName: 'resources/images/moritz-theis.png',
    desc: 'CEO at Snapp X',
  ),
  park(
    name: 'Park JaiChang',
    title: 'Implementing a RAG (Retrieval-Augmented Generation) System in Dart',
    xAccountName: 'jaichangpark',
    logoAssetName: 'resources/images/park-jaichang.jpeg',
    desc: 'Flutter Seoul Organizer | GDG Golang Korea Organizer',
  ),
  parth(
    name: 'Parth Joshi',
    title: 'Rive Animations with Flutter',
    xAccountName: 'RotenKiwi',
    logoAssetName: 'resources/images/parth-joshi.jpg',
    desc: 'Mobile Dev Freelancer',
  ),
  renuka(
    name: 'Renuka Kelkar',
    title:
        'Building a Gemini AI-Powered Emoji Movie-Guessing Feature in a Production-Ready App with Flutter',
    xAccountName: 'KelkarRenuka',
    logoAssetName: 'resources/images/renuka-kelkar.png',
    desc: 'Field Marketing Specialist at Codemagic | Flutter GDE',
  ),
  sasha(
    name: 'Sasha Denisov',
    title: 'Workshop: Flutter for Android TV and Apple TV',
    xAccountName: 'ShuregDenisov',
    logoAssetName: 'resources/images/sasha-denisov.jpg',
    desc: 'EPAM, Chief Software Engineer, Flutter and Dart GDE',
  ),
  takuma(
    name: 'Takuma Osada',
    title: 'Monitoring user experience of flutter apps with SLI/SLO',
    xAccountName: 'ostk0069',
    logoAssetName: 'resources/images/takuma-osada.jpg',
    desc: 'Lead Mobile App Engineer at WinTicket, CyberAgent Inc.',
  ),
  tsuyoshi(
    name: 'Tsuyoshi Chujo',
    title:
        'Maximizing the Power of the Widget Tree: Enhance Your Flutter Apps Without Packages',
    xAccountName: 'tsuyoshi_chujo',
    logoAssetName: 'resources/images/tsuyoshi-chujo.jpg',
    desc: 'Freelance mobile apps developer',
  ),
  itome(
    name: '糸目',
    title: 'Introducing flx: A New TUI DevTool for Flutter on the Terminal',
    xAccountName: 'itometeam',
    logoAssetName: 'resources/images/mi-mu-na.png',
    desc: 'Software engineer at woodstock inc.',
  ),
  ;

  const SpeakerType({
    required this.name,
    required this.title,
    required this.xAccountName,
    required this.logoAssetName,
    required this.desc,
  });

  final String name;
  final String title;
  final String xAccountName;
  final String logoAssetName;
  final String desc;
}
