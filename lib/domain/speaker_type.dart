enum SpeakerType {
  remi(
    name: 'Remi Rousselet',
    title: 'Riverpod 3.0, the preview',
    xAccountName: 'remi_rousselet',
    logoAssetName: 'resources/images/remi_profile.jpg',
    desc:
        'The creator of the Flutter packages provider, flutter_hooks, riverpod, and freezed.',
    day: Day.day1,
    time: '10:30 am ~ 11:10 am',
    talkDescription:
        'Let\'s have a sneak peek into what Riverpod 3.0 will be about.',
  ),
  majid(
    name: 'Majid Hajian',
    title: 'A great Flutter session',
    xAccountName: 'mhadaily',
    logoAssetName: 'resources/images/majid_profile.jpg',
    desc:
        'Flutter / Dart GDE, Organizer of Flutter Vikings, the author of flutterengineering.io',
    day: Day.day2,
    time: '6:20 pm ~ 7:00 pm',
    talkDescription: 'TBA',
  ),
  abdelrahman(
    name: 'Abdelrahman Eba',
    title:
        'Building SimCity 2000: Unleashing the Power of Flame Engine and Flutter',
    xAccountName: 'rahman_aymen',
    logoAssetName: 'resources/images/abdelrahman-eba.jpg',
    desc: 'CTO, Kwayes Information Technology',
    day: Day.day2,
    time: '4:35 pm ~ 5:15 pm',
    talkDescription:
        '''In this talk, we'll embark on a journey through the development process of recreating the beloved classic game, SimCity 2000, using Flutter & Flame. We'll dive into the core mechanics and interface elements of the game, exploring how Flutter's powerful toolkit along with Flame can be utilized to replicate its functionality and design. From pixelated landscapes to dynamic city simulations, we'll uncover the secrets behind building a game that captivated audiences decades ago, now reimagined with modern technology.''',
  ),
  akanksha(
    name: 'Akanksha Singh',
    title: 'Automating Accessibility Adoption in Flutter with Gemini AI',
    xAccountName: 'coder_jedi',
    logoAssetName: 'resources/images/akanksha-singh.jpg',
    desc: 'SWE at JP Morgan Chase & Co.',
    day: Day.day1,
    time: '02:05 pm ~ 02:25 pm',
    talkDescription:
        '''For years, accessibility features and experiences were seen as nice to have when it came to app development. Shockingly, many developers overlook this vital aspect, inadvertently excluding a significant user base. The World Health Organization reveals that about 15% of the global population, over a billion people, live with disabilities. In a digital age, it's unjust to marginalize this substantial demographic based on abilities.

This talk emphasizes the critical role of accessibility in mobile apps. By introducing the innovative use of Gemini AI as an AI-powered code assistance tool in IDEs, we can address these issues head-on, ensuring that apps are accessible from the outset. Gemini AI serves as a game-changer, automating the detection and correction of accessibility issues in Flutter apps. This talk will empower developers to build apps that are inclusive and universally accessible, transforming the way we approach app design and development.''',
  ),
  aoi(
    name: 'Aoi Umigishi',
    title: 'My challenge to add Vision OS support in Flutter',
    xAccountName: 'Aoi_Umigishi',
    logoAssetName: 'resources/images/aoi-umigishi.png',
    desc: 'Freelance Flutter engineer',
    day: Day.day1,
    time: '3:50 pm ~ 4:10 pm',
    talkDescription: '''It's been a year since Apple Vision Pro was announced.
      It is possible to run iOS/IPadOS apps created with Flutter on Apple Vision Pro / Vision OS.
      However, there are restrictions, such as the aspect ratio being fixed.
  Flutter is good at creating responsive apps that allow you to freely change the aspect ratio like a web browser.
  If this limitation can be removed, Flutter will be a very good option as a tool for creating Vision OS applications.
  The way to get rid of this limitation is to run Flutter apps as Vision OS apps instead of iOS/IPadOS apps, in other words, add Vision OS support to Flutter.
      There are currently issues regarding this issue, but no progress has been made toward a resolution.
  So I decided to try this problem.
  In this session, I will present the current state of Flutter for Vision OS, the issues that need to be solved in order to add support for Vision OS to Flutter, and my efforts to solve the issues.
  ''',
  ),
  ethiel(
    name: 'Ethiel Adiassa',
    title: 'Dart Isolates: every frame counts for a Performant all',
    xAccountName: 'enthusiastDev',
    logoAssetName: 'resources/images/ethiel-adiassa.png',
    desc:
        'Flutter/Dart GDE, Senior Software Engineer at Djamo, a YC backed startup',
    day: Day.day2,
    time: '2:40 pm ~ 3:20 pm',
    talkDescription:
        '''In today's mobile landscape, users expect apps to adapt seamlessly across different devices and screen sizes. Building responsive apps can be challenging, especially when dealing with performance and resource limitations. This talk explores how Isolates in Dart can be leveraged to create highly responsive mobile applications.

This talk will delve into the concept of Isolates in Dart and their role in building responsive apps. We'll cover:

The Fundamentals of Isolates: Understand how Isolates work, their benefits for concurrency, and memory management.
Building Responsive UIs with Isolates: Explore techniques for offloading UI tasks to Isolates, improving responsiveness and fluidity.
Isolates for Background Processing: Utilize Isolates for computationally intensive tasks without compromising the main UI thread's performance.
Communication between Isolates: Learn effective strategies for data exchange and communication between the main isolate and worker isolates.
Real-World Examples: Discover practical use cases demonstrating how Isolates can enhance app responsiveness in various scenarios.
Performance Considerations: Discuss best practices for optimizing Isolate usage to maintain smooth application performance.

I'm a Flutter/Dart GDE, Senior Software at a Fintech company backed by YC. We process thousands of transactions every day and I do have experience in improving mobile apps' performance.''',
  ),
  kakeru(
    name: 'Kakeru Nakabachi',
    title: 'Inside Flutter Text',
    xAccountName: 'b4tchkn',
    logoAssetName: 'resources/images/kakeru-nakabachi.png',
    desc: 'Flutter Engineer at WinTicket, CyberAgent Inc.',
    day: Day.day1,
    time: '6:10 pm ~ 6:30 pm',
    talkDescription:
        '''In app development using Flutter, Text is heavily used in every app, but the behavior is slightly different between iOS and Android, and it doesn't look exactly the same on both platforms as is. Android tends to take up more widget height than iOS, among other differences. While using the same font on iOS and Android can eliminate design differences when placing Text across platforms, it's not user-friendly if the system font chosen by the OS the user usually sees is different. In this session, we will introduce the components of Text, make the audience aware that the execution results of Text are slightly different for each platform, and aim to be able to create Text that looks the same on iOS and Android.''',
  ),
  kosuke(
    name: 'Kosuke Saigusa',
    title: 'Exploring Full-Stack Dart for Firebase Server-Side Development',
    xAccountName: 'kosukesaigusa',
    logoAssetName: 'resources/images/kosuke-saigusa.jpg',
    desc: 'Flutter Engineer at Omiai, Inc.',
    day: Day.day2,
    time: '10:30 am ~ 11:00 am',
    talkDescription:
        '''Flutter has revolutionized the way we build client-side applications, allowing us to create cross-platform apps swiftly with just Dart. Moreover, leveraging Firebase enables us to effortlessly utilize features like databases, authentication, and push notifications without delving into server-side development. However, when it comes to Firebase server-side processing, particularly Cloud Functions, Dart is often left out of the picture.

In this session, we will explore how to bridge this gap by utilizing various Google Cloud Platform services and tools, such as Cloud Run, Eventarc, Secret Manager, Workload Identity, and the gcloud CLI, along with the functions_framework and dart_firebase_admin packages. By doing so, we will demonstrate how Firebase server-side processing can be elegantly written in Dart, paving the way for a cohesive full-stack Dart development experience.

Join us as we delve into this exciting journey of expanding the Dart ecosystem beyond the client side, enabling Flutter developers to seamlessly integrate server-side functionalities and truly embrace the full potential of Dart in their applications.''',
  ),
  manuela(
    name: 'Manuela Sakura Rommel',
    title:
        'Stop Treating Accessibility as an Afterthought: Concrete Steps to Build Inclusive Apps',
    xAccountName: 'ManuSakuraRo',
    logoAssetName: 'resources/images/manuela-sakura-rommel.jpg',
    desc: 'Co-organizer Flutter Berlin',
    day: Day.day1,
    time: '1:30 pm ~ 1:50 pm',
    talkDescription:
        '''In today's digital world, Accessibility is more important than ever. However, Accessibility is often treated as an afterthought in the development process, which can lead to exclusion and frustration for users with disabilities. This talk aims to change that by discussing how to make Accessibility a core part of your development workflow. We will cover topics such as collaboration within your team, available tools and when it makes sense to use them, and modifications to your project to ensure adding Accessibility is a pain-free experience for feature development and testing. By implementing these strategies, you can create a more inclusive product and provide a better user experience for all.
''',
  ),
  marcin(
    name: 'Marcin Chudy',
    title: 'Flutter Add-to-App: The Good, the Bad and the Ugly',
    xAccountName: 'mchudy_',
    logoAssetName: 'resources/images/marcin-chudy.jpeg',
    desc: 'Senior Flutter Developer at LeanCode',
    day: Day.day1,
    time: '4:25 pm ~ 4:55 pm',
    talkDescription:
        '''Flutter add-to-app can be a very tempting way to introduce Flutter in an organization that is maintaining native apps. How easy it is, though, to just put Flutter inside a large iOS or Android application? Is it as straightforward as starting a new Flutter project? What are possible approaches that we can take when considering such integration?

In this talk, we’ll take a look at some challenges that appeared during the development of a proof-of-concept Flutter project by LeanCode for one of the clients from the banking sector. We’ll go through all important parts of mobile app development and see how add-to-app compares to standalone Flutter development. We’ll touch on such topics as UI, navigation, networking, DX, native libraries, background processing, app size, performance, and CI.''',
  ),
  moritz(
    name: 'Moritz Theis',
    title: 'Beyond Mobile: Powering Embedded Devices with Flutter ',
    xAccountName: 'MoritzTheis',
    logoAssetName: 'resources/images/moritz-theis.png',
    desc: 'CEO at Snapp X',
    day: Day.day2,
    time: '5:45 pm ~ 6:05 pm',
    talkDescription: '''The future of embedded development is Flutter!
This talk dives into running Flutter on embedded devices, specifically setting it up on the brand new Raspberry Pi 5.

We'll explore the differences between mobile/desktop and embedded Flutter development, and why custom embedders like Flutter-Pi, the Sony-Embedder, and the Toyota-Embedder exist. Learn how to communicate with hardware—read sensors and integrate them into your Flutter app!

This session is ideal for developers interested in exploring Flutter for embedded systems. We'll provide a hands-on guide, run code live on a Raspberry Pi 5, and share all code examples for you to download and build your own embedded Flutter app!''',
  ),
  park(
    name: 'Park JaiChang',
    title: 'Implementing a RAG (Retrieval-Augmented Generation) System in Dart',
    xAccountName: 'jaichangpark',
    logoAssetName: 'resources/images/park-jaichang.jpeg',
    desc: 'Flutter Seoul Organizer | GDG Golang Korea Organizer',
    day: Day.day2,
    time: '1:30 pm ~ 1:50 pm',
    talkDescription: '''Abstract:
This presentation will discuss the implementation of a RAG (Retrieval-Augmented Generation) system in Dart. RAG systems are a type of generative AI model that combines retrieval and generation techniques to produce more informative and relevant outputs.

Key topics:
1. Overview of RAG systems
2. Benefits of using dart in RAG systems
3. Implementing a RAG system in LangChain Dart
4. Retrieval-Augmented Generation
5. Real-world examples of RAG systems
6. Q&A''',
  ),
  parth(
    name: 'Parth Joshi',
    title: 'Rive Animations with Flutter',
    xAccountName: 'RotenKiwi',
    logoAssetName: 'resources/images/parth-joshi.jpg',
    desc: 'Mobile Dev Freelancer',
    day: Day.day1,
    time: '11:25 am ~ 11:55 am',
    talkDescription:
        '''Dive deep into the world of Rive Animations with Flutter—a powerful combination for creating stunning, interactive user interfaces. Rive (formerly known as Flare) revolutionises the way developers integrate animations into Flutter apps, offering a robust toolkit for crafting engaging motion graphics and seamless transitions.
Will cover practical techniques and best practices for incorporating Rive animations into your Flutter projects. Learn how to synchronise animations with user gestures, implement complex state transitions, and enhance app aesthetics with visually appealing motion graphics.''',
  ),
  renuka(
    name: 'Renuka Kelkar',
    title:
        'Building a Gemini AI-Powered Emoji Movie-Guessing Feature in a Production-Ready App with Flutter',
    xAccountName: 'KelkarRenuka',
    logoAssetName: 'resources/images/renuka-kelkar.png',
    desc: 'Field Marketing Specialist at Codemagic | Flutter GDE',
    day: Day.day2,
    time: '3:50 pm ~ 4:20 pm',
    talkDescription:
        '''In this talk, we'll explore the integration of Gemini AI into a production-ready mobile app, focusing on a creative emoji movie-guessing feature built using Flutter and Firebase. Attendees will discover how to enhance their applications with AI-driven functionality, making them more engaging and interactive for users.

Key Topics Covered:
1.Introduction to Flutter: We'll start by introducing Flutter, Google's UI toolkit for building natively compiled applications for mobile, web, and desktop. Attendees will learn how to set up a Flutter project and understand its basic structure.

2.Firebase Integration including Firebase Extensions: Next, we'll dive into Firebase, Google's platform for mobile and web application development. We'll explore how to integrate Firebase services such as Firestore for real-time database functionality and Firebase Authentication for user management.

3.Adding Gemini AI to the Mix: Attendees will discover Gemini AI, a powerful artificial intelligence platform. We'll discuss how to integrate Gemini AI into a Flutter app, leveraging its capabilities to analyze and generate insights from text, including emoji sequences.

4.Building the Emoji Movie-Guessing Feature: With Flutter, Firebase, and Gemini AI at our disposal, we'll embark on the development journey of creating the emoji movie-guessing feature. Attendees will learn how to design the user interface, implement game logic, and integrate Firebase for storing game data and user progress.

5.Taking It to Production: We'll wrap up by discussing the steps needed to take the app from development to production. Attendees will learn best practices for testing their app on various devices, deploying it to app stores, and ensuring post-launch maintenance.

6.Integrating Gemini AI into a Production-Ready App: Lastly, we'll delve into the considerations and challenges of integrating Gemini AI into a production-ready app. Attendees will gain insights into optimizing performance, handling user data securely, and scaling their application effectively.

By the end of the talk, attendees will have a comprehensive understanding of how to integrate Gemini AI into a production-ready mobile app, along with practical tips for building engaging features using Flutter and Firebase. They'll be equipped to enhance their own applications with AI-driven functionality, providing users with a unique and immersive experience.

''',
  ),
  sasha(
    name: 'Sasha Denisov',
    title: 'Workshop: Flutter for Android TV and Apple TV',
    xAccountName: 'ShuregDenisov',
    logoAssetName: 'resources/images/sasha-denisov.jpg',
    desc: 'EPAM, Chief Software Engineer, Flutter and Dart GDE',
    day: Day.day1,
    time: '2:40 pm ~ 3:20 pm',
    talkDescription:
        '''Get ready to explore TV app development using Flutter. While Flutter officially supports various platforms, TV platforms like Android TV and Apple TV have been overlooked. But fear not! In this workshop, we'll show you how to bring your Flutter apps to the big screen.

In this workshop, we will go through all the steps of porting your mobile app to the big screen, discuss all the nuances of TV apps, such as controlling the app with a remote control, and finally launch the app on a TV platform, not only on Android TV, but also on Apple TV''',
  ),
  takuma(
    name: 'Takuma Osada',
    title: 'Monitoring user experience of flutter apps with SLI/SLO',
    xAccountName: 'ostk0069',
    logoAssetName: 'resources/images/takuma-osada.jpg',
    desc: 'Lead Mobile App Engineer at WinTicket, CyberAgent Inc.',
    day: Day.day2,
    time: '11:15 am ~ 11:45 am',
    talkDescription:
        '''SLI/SLO is often heard as a SRE word, but it is not familiar to mobile app development. In my product, the failure rate is high, and I needed a mechanism to detect and solve the problems as early as possible. So I adapted the SLI/SLO mechanism to fit mobile apps and created a mechanism to detect poor user experience. This mechanism allows for immediate detection of the following.
- Failure rate (cases where a certain number of users fail to use a feature due to an error or other occurrence)
- Cancellation rate (cases where a certain number of users cancel for some reason when using a feature)
- Suspension rate (cases where a certain number of users kill the app for some reason when using a feature)

Our app has now been embedded in more than 40 features for this monitoring.
In this session, we will discuss the following.
- What is SLI/SLO
- The difference between SLI/SLO in general and SLI/SLO for user experience detection
- How to measure cases where a user stops using a feature or crashes in the middle of a feature
- How to set the sampling rate
- How to create a user experience alerting infrastructure How to combat noise alerts when creating them
- How to embed the measurement infrastructure with as little impact on the main code as possible
- How to involve members of the business in detecting and preventing poor user experience''',
  ),
  tsuyoshi(
    name: 'Tsuyoshi Chujo',
    title:
        'Maximizing the Power of the Widget Tree: Enhance Your Flutter Apps Without Packages',
    xAccountName: 'tsuyoshi_chujo',
    logoAssetName: 'resources/images/tsuyoshi-chujo.jpg',
    desc: 'Freelance mobile apps developer',
    day: Day.day1,
    time: '6:45 pm ~ 7:15 pm',
    talkDescription:
        '''One of the most important concepts of Flutter is the “Widget tree.” Widgets’ styles are provided through the widget tree, the widget tree manages states, and rebuilds are optimized based on the mechanism of the widget tree. Understanding how widget tree works is crucial to enhancing the quality of our apps.

Yet, developers often explore options beyond the widget tree, such as using packages for state management, to address the challenges in development. While depending on external packages quickly solves our problems, it also introduces risks or costs of complexity and fear of breaking changes.

This session aims to demystify the widget tree's capabilities, revealing how it can solve everyday challenges.

I will start by taking a closer look at the widget tree's mechanism. After that, I will explain how the Flutter framework and each widget use it internally. Finally, the session will end with the main discussion of how we can maximize the mechanism's potential.

After listening to this session, you will be able to

- Efficiently manage styling and state
- Design your widgets to be more portable and testable
- Reduce needless dependencies on packages
- Easily understand Flutter docs

Although this session doesn't introduce unique technologies or trendy packages, this section equips you with fundamental knowledge that will empower your projects across the board.''',
  ),
  itome(
    name: 'Takeshi Tsukamoto',
    title: 'Introducing flx: A New TUI DevTool for Flutter on the Terminal',
    xAccountName: 'itometeam',
    logoAssetName: 'resources/images/mi-mu-na.png',
    desc: 'Software engineer at woodstock inc.',
    day: Day.day2,
    time: '2:05 pm ~ 2:25 pm',
    talkDescription:
        '''Join us for an exciting session where we unveil 'flx', our latest Text-based User Interface (TUI) tool designed specifically for Flutter developers. With flx, you can now leverage some of the core functionalities of Flutter's DevTools directly from your terminal, enhancing your development workflow and efficiency.

In this presentation, we will explore the capabilities of flx, providing a detailed walkthrough of its features and the user experience it offers. We will also dive deep into the Flutter developer APIs, such as flutter daemon and vm_service, which are crucial for developing and utilizing tools like flx.

Additionally, attendees will gain insights into the development process behind flx, including challenges faced and solutions implemented. Whether you're a seasoned Flutter developer or just starting out, this session will equip you with the knowledge to utilize and contribute to flx.''',
  ),
  kevin(
    name: 'Kevin Suhajda',
    title: 'White labeling at scale using CI/CD',
    xAccountName: 'kevsuda',
    logoAssetName: 'resources/images/kevin.png',
    desc: 'Senior Solutions Engineer, Codemagic(Plutinum Sponsor)',
    day: Day.day1,
    time: '5:10 pm ~ 5:40 pm',
    talkDescription:
        'Kevin Suhajda is a Senior Solutions Engineer at Codemagic with over a decade of experience working in the mobile applications space. Using his background in mobile application development he has helped hundreds of mobile development teams set up efficient CI/CD pipelines to build, test, and publish their apps to app stores.',
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
