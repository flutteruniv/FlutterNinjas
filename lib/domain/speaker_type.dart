
enum SpeakerType {
  remi(
    name: 'Remi Rousselet',
    title: 'Macros are gone. What now?',
    xAccountName: 'remi_rousselet',
    logoAssetName: 'resources/images/remi_profile.jpg',
    desc: 'Guest Speaker / The creator of Riverpod',
    day: Day.day1,
    time: '4:35 pm ~ 5:15 pm',
    talkDescription: 'The Dart team announced that Macros will not be coming to Dart.Let\'s chat about how this will impact my packages and the ecosystem as a whole',
  ),
  akansha(
      name: 'Akansha Jain',
      title: 'Offline-First Flutter: Building Resilient Apps for Unreliable Networks',
      xAccountName: 'Akansha2001',
      logoAssetName: 'resources/images/akansha-jain.jpg',
      desc: 'Organizer of Flutter Conf India and Flutter Delhi',
      day: Day.day1,
      time: '2:25 pm ~ 3:05 pm',
      talkDescription: '''Abstract:
Many apps break when the internet does. Users in areas with unstable networks face frustrating experiences, data loss, and app crashes. But what if our Flutter apps could work seamlessly offline and sync automatically when back online?

In this session, I’ll share practical offline-first strategies using Hive, SQLite, and caching techniques to keep apps functional without constant internet. I’ll also discuss syncing data, handling conflicts, and best practices to build apps that stay fast, reliable, and user-friendly—no matter the network conditions.

If you’ve ever struggled with offline support, this talk will give you the tools and patterns to build apps that users can trust—even with zero connectivity.

Description:
A few years ago, I built a Flutter app for users in remote areas, only to realize most of them didn’t have reliable internet. The app failed when users needed it most. That experience taught me a key lesson: Offline support isn’t a feature, it’s a necessity.

Many developers assume users will always be online, but that’s rarely the case. Whether they’re traveling, in low-connectivity zones, or facing network issues, users expect apps to just work. This session will break down how to build an offline-first Flutter app that stays functional even in zero-network conditions.

What we’ll cover:
✅ How to store and manage offline data with Hive, and SQLite.
✅ Caching and background sync techniques to improve performance.
✅ Handling conflicts when offline and online changes collide.
✅ Real-world best practices to build apps that don’t rely on the internet.

By the end of this talk, you’ll have a clear roadmap for making your Flutter apps more resilient, performant, and user-friendly—even when the internet isn’t there to help.

Key Takeaways:
✅ Why offline-first matters and how it improves UX.
✅ Best practices for caching, syncing, and data persistence in Flutter.
✅ How to avoid common pitfalls and handle offline-online data conflicts.
✅ Tools and strategies to make apps more reliable and efficient.'''
  ),
  ashita(
      name: 'Ashita Prasad',
      title: 'Unleashing Peak Performance: Mastering Flutter DevTools for Blazing-Fast Apps',
      xAccountName: 'ashitaprasad',
      logoAssetName: 'resources/images/ashita-prasad.png',
      desc: 'GDE - Dart & Flutter | Founder, API Dash & fluttergems.dev',
      day: Day.day1,
      time: '1:30 pm ~ 2:10 pm',
      talkDescription: '''With more than 10 million apps available across iOS and Android stores, it is difficult to get downloads, but even harder to retain users. Performance of an app plays a key role in retaining users and building a high-performance Flutter app isn’t just about writing clean code—it’s about optimizing every aspect of your app’s performance. In this session, we’ll unlock the full potential of Dart & Flutter DevTools, exploring its powerful features to diagnose bottlenecks, reduce jank, and optimize rendering. You’ll learn how to analyze CPU and memory usage, profile animations, and fine-tune your app for peak efficiency. Whether you’re a beginner or an experienced developer, this talk will equip you with practical techniques to make your Flutter apps smoother, faster, and more efficient. Get ready to unleash peak performance and take your Flutter skills to the next level!

'''
  ),
  festus(
      name: 'Festus Olusegun',
      title: 'Decoding Dart: A Look at the DartVM',
      xAccountName: 'iamjideguru',
      logoAssetName: 'resources/images/festus-olusegun.png',
      desc: 'GDE - Dart & Flutter',
      day: Day.day1,
      time: '4:30 pm ~ 5:10 pm',
      talkDescription: '''Every Dart app runs on the Dart Virtual Machine (DartVM)—but what’s really happening under the hood? This session takes you behind the scenes of DartVM, breaking down how it executes code, optimizes performance, and manages memory. Whether you're just starting or have years of experience, understanding DartVM will help you write better, more efficient apps across mobile, web, and beyond.

In this session, we'll break down DartVM’s architecture, JIT vs. AOT compilation, and garbage collection, giving you practical insights to optimize your Dart apps for performance and scalability—all distilled from my years of experience deploying and fine-tuning Dart/Flutter applications.'''
  ),
  kenichi(
      name: 'Kenichi Kambara',
      title: 'Adapting Flutter App UX for Users Across the World',
      xAccountName: 'korodroid',
      logoAssetName: 'resources/images/kenichi-kambara.jpg',
      desc: 'NTT TechnoCross Corporation Principal Evangelist',
      day: Day.day1,
      time: '5:40 pm ~ 6:20 pm',
      talkDescription: '''Delivering a Flutter app globally means adapting to different languages, cultures, and user behaviors. Ensuring a seamless user experience (UX) for diverse audiences requires thoughtful design and implementation.

Through my journey of visiting over 50 countries, I gathered real user feedback by demonstrating my app in various environments. While some users interacted with the app as expected, others struggled due to differences in language, navigation habits, and device usage patterns. These insights shaped my approach to UX enhancements.

In this session, we'll explore key challenges and practical solutions, including:

- Multilingual Support: Handling multiple languages, including right-to-left (RTL) text
- User Onboarding: Implementing intuitive tutorials and clear instructions
- UI Optimization: Designing adaptive layouts for different screen sizes and devices
- Cultural Considerations: Customizing UX elements to match diverse user expectations

I'll provide real-world code examples in Flutter/Dart, demonstrating concrete steps to enhance your app's UX. Specifically, I will cover:

- Decision-Making Process: How real user feedback influenced design and feature improvements
- Implementation Steps: Practical methods to refine UX for global users
- Key UX Principles: Strategies for making apps more accessible and intuitive
- Code Examples: Hands-on solutions to address the mentioned challenges

By the end of this session, attendees will gain actionable insights and practical techniques to improve their Flutter app’s UX, making it more intuitive and engaging for users worldwide.'''
  ),
  majid(
      name: 'Majid Hajian',
      title: 'Let\'s Talk About Memory Leaks in Dart And Flutter',
      xAccountName: 'mhadaily',
      logoAssetName: 'resources/images/majid-hajian.jpg',
      desc: 'GDE - Dart & Flutter / @Microsoft',
      day: Day.day1,
      time: '10:30 am ~ 11:10 am',
      talkDescription: '''Memory leaks can be annoying as they are hard to spot and recreate compared to syntax errors or logic bugs usually appearing in the development phase. Memory leaks in Flutter applications are getting even more complex with the addition of layers of widgets and controllers combined with listeners over time, which may result in performance issues or unexpected crashes for users after prolonged use.
In this talk, I will explore Dart and Flutter memory leaks and memory bloating, how they occur, their importance in coding practices, solutions to debug memory leaks and identify them, such as DevTools and Leak Tracker, and shifting left by relying on static analyzer tools and how they can prevent such leaks from sneaking into your code base.
This talk includes many examples from real applications I have worked on in the last few years.

'''
  ),
  masahiro(
      name: 'Masahiro Aoki',
      title: 'Mastering Shortcuts in Flutter: Building Desktop and Web Applications with Advanced Keyboard Support',
      xAccountName: 'ma_freud',
      logoAssetName: 'resources/images/masahiro-aoki.jpg',
      desc: 'Founder of OpenCI',
      day: Day.day1,
      time: '11:25 am ~ 12:05 pm',
      talkDescription: '''As Flutter expands beyond mobile to desktop and web platforms, keyboard shortcuts become critical for user experience. While implementing simple global shortcuts is straightforward, creating context-aware keyboard interactions that respect focus state and component hierarchy presents significant challenges for developers.
This session explores Flutter's powerful but often overlooked Actions and Shortcuts system. Whether building a text editor where shortcuts behave differently based on selection state, or creating complex desktop applications with sophisticated keyboard navigation, understanding Flutter's shortcut architecture is essential for delivering professional multi-platform experiences.
Drawing from real-world experience developing macOS applications, this talk will demystify the architecture that enables both simple global shortcuts and complex context-sensitive keyboard interactions.

Key Takeaways from This Session
1. Understand Flutter's Actions and Shortcuts Architecture: Learn how the Intent-Action pattern enables flexible keyboard interactions across different contexts
2. Master Context-Aware Keyboard Shortcuts: Implement shortcuts that behave differently based on focus state (e.g., disabling shortcuts when a TextField has focus)
3.Build Platform-Adaptive Shortcut Systems: Create applications that respect platform conventions for keyboard shortcuts across web, Windows, macOS, and Linux
4. Integrate Shortcuts with Application State: Connect keyboard actions to your state management solution for clean, maintainable code
5. Troubleshoot Common Shortcut Issues: Diagnose and resolve focus, propagation, and collision problems in keyboard shortcuts

Target Audience
This session is ideal for Flutter developers who are:
1. Building applications for desktop (Windows, macOS, Linux) or web platforms
2. Creating professional productivity applications where keyboard interaction is essential
3. Looking to enhance accessibility through comprehensive keyboard support
4. Transitioning from mobile-only to cross-platform Flutter development'''
  ),
  mike(
      name: 'Mike Diarmid',
      title: 'The Human Side of Flutter\'s Success Story',
      xAccountName: 'mikediarmid',
      logoAssetName: 'resources/images/mike-diarmid.png',
      desc: 'GDE - Firebase / @FlutterFlow / Former CTO & Founder of Invertase',
      day: Day.day1,
      time: '2:50 pm ~ 3:10 pm',
      talkDescription: '''Behind every successful technology lies a powerful community. Flutter's rise isn't just a story of excellent cross-platform development—it's a testament to the diverse, vibrant, and inclusive community that powers its growth. This talk takes you beyond the widgets and deep into the human ecosystem that makes Flutter unique in today's tech landscape.

Through real-world stories and community data, we'll explore how Flutter's community has evolved from early adopters to a global force for technological innovation and professional growth. You'll discover how diversity initiatives, education programs, and regional communities have shaped Flutter's development, making it more accessible and powerful for developers worldwide.

Whether you're a Flutter enthusiast, community leader, or curious developer, you'll leave understanding how community-driven development can transform both technology and careers.'''
  ),
  samuel(
      name: 'Samuel Abada',
      title: 'State Restoration – Making The Dead State Live Again',
      xAccountName: 'mastersam_',
      logoAssetName: 'resources/images/samuel-abada.png',
      desc: 'GDE - Dart & Flutter | Co-organizer of the Flutter Lagos & Flutter Akure',
      day: Day.day1,
      time: '1:30 pm ~ 2:10 pm',
      talkDescription: '''Ever closed an app, only to return and find it exactly where you left off? Join me in this session where we'll uncover the secrets behind this magic trick known as state restoration in Flutter. I'll walk you through the essentials of preserving and restoring your app's state, ensuring a seamless experience for your users. We'll explore practical examples and insider tips to implement state restoration using Flutter's RestorationMixin and RestorationBucket classes. By the end of the session, you'll leave equipped with the knowledge and skills to implement state restoration in your Flutter apps.

Key Takeaways:

- Understand the significance of state restoration in mobile apps.
- Learn practical techniques to implement state restoration using Flutter's built-in tools. No magic wand required.
- Gain insights into handling common challenges like navigation history, text fields, scrollables, dialogs/pickers.
- Discover best practices, tips, tricks and plot twists of state restoration.
- Explore advanced strategies to enhance your app's state restoration capabilities.'''
  ),
  sasha(
    name: 'Sasha Denisov',
    title: 'Building Flutter Apps with AI capabilities without Connection, Bills and Privacy Concerns',
    xAccountName: 'ShuregDenisov',
    logoAssetName: 'resources/images/sasha-denisov.jpg',
    desc: 'GDE - Dart & Flutter | EPAM, Chief Software Engineer',
    day: Day.day1,
    time: '11:25 am ~ 12:05 pm',
    talkDescription: '''In this talk, we'll dive into the exciting world of Gemma, a groundbreaking family of open AI models by Google. We'll explore how you can leverage Gemma's capabilities to build innovative Mobile and Web projects using Flutter. One of these capabilities is running on your mobile device or browser locally, without an internet connection, without cloud bills and without privacy concerns

Key takeaway:

- Understand the core functionalities and architectures of Gemma, lightweight, state-of-the-art models
- Discover the advantages of using Gemma, including its open-source nature, versatility across tasks, and on-device/browser capabilities
- Discover practical methods for integrating Gemma into your Flutter Mobile and Web applications, unlocking new possibilities for user interaction and functionality
- Explore different approaches to fine-tuning of Gemma model, that let you achieve better results on a wide number of tasks. Once a model has been fine-tuned, you won't need to provide as many examples in the prompt.
- Explore the different types of Gemma (CodeGemma, PaliGemma, etc.), the purposes for which they can be used, how Gemma differs from Gemini, and explore the distinct characteristics of each model, including size, performance, and optimal use cases
- Discover Gemma alternatives that you can use on-device and in the browser
- As a bonus, we'll take a look at Llama, exploring its features and how it compares to Gemma.''',
  ),
  kyo(
      name: 'Ogawa & Yamamoto',
      title: 'Seamless Passkey Authentication with Flutter x Firebase and our journey on Banking app',
      xAccountName: 'heyhey1028',
      logoAssetName: 'resources/images/heyhey_kyo.png',
      desc: 'Flutter Tech Lead @Money Forward, Inc. & Freelance mobile app developer',
      day: Day.day1,
      time: '10:30 am ~ 11:10 am',
      talkDescription: '''Passwords are out. Passkeys are in. Join us for a deep dive into the cutting-edge world of passwordless authentication as we explore how to implement Passkeys in Flutter apps using Firebase.

In Money Forward, we have implemented a passkey authentication into our Banking app created with Flutter. This session will take you behind the scenes of our real-world journey integrating Passkey authentication into a banking app, balancing security, user experience, and technical complexity.

Session will be divided into three parts.
1. Overview on the Passkey technology and it's requirements
2. Step by step guide on implementing Passkey with Flutter x Firebase
3. Tips and difficulties that we've faced along the way of implementing to our app

We’ll start with a crash course on Passkey technology and its security advantages, then break down the critical requirements for mobile implementation.

You’ll get a step-by-step walkthrough of integrating Passkeys with Flutter, Firebase Functions, Firestore, and Firebase Auth to deeper your understanding on how to implement Passkeys into your app.

But we won’t sugarcoat the challenges: learn from our pitfalls, from platform-specific quirks to biometric edge cases, and discover pro tips for optimizing UX without compromising security.

Whether you’re building fintech apps or consumer products, walk away with actionable insights and the confidence to bring modern authentication to your Flutter projects.

Perfect for: Flutter developers, Firebase enthusiasts, and anyone passionate about secure, frictionless user experiences.'''
  ),
  tsuyoshi(
      name: 'Tsuyoshi Chujo',
      title: 'Haskell: Lead Your Code to the Next Level',
      xAccountName: 'tsuyoshi_chujo',
      logoAssetName: 'resources/images/tsuyoshi-chujo.jpg',
      desc: 'Freelance mobile apps developer',
      day: Day.day1,
      time: '3:40 pm ~ 4:20 pm',
      talkDescription: '''Although Flutter encourages a "declarative style" to build UIs, Dart doesn't strictly enforce the style. We can slip imperative logic and side effects into our build() method without any warning from the compiler, even though build() ideally should be "pure".

This is where Haskell shines. Haskell is a purely functional language that enforces a declarative approach—no imperative steps, no hidden side effects, and all the functions are completely "pure".

So, why not learn Haskell to enhance your Flutter code to be more readable, testable, and robust? In this section, I'll show you how we can translate Haskell's approach into better Flutter app development.'''
  ),
  yugo(
      name: 'Yugo Sugiyama',
      title: 'Exploring Flutter Path Animations',
      xAccountName: 'u5_03',
      logoAssetName: 'resources/images/yugo-sugiyama.png',
      desc: 'DeNA Co., Ltd.',
      day: Day.day1,
      time: '2:25 pm ~ 2:45 pm',
      talkDescription: '''In this talk, I’ll talk about Flutter Path animations. Specifically, you will gain insight into the following topics:

1. How to express complex shape Paths in Flutter
2. How Flutter Path animation works
3. How to animate a path from its start point to its end point

By utilizing these technologies, animations that have been expressed using mp4 or lottie may be completely replaced with Flutter implementations.
I think this is a very challenging attempt for engineers who develop apps for the Flutter, and also an interesting attempt that will pique their technical interest.
And today I would like to demonstrate some content that makes use of this knowledge.'''
  ),
  csongor(
      name: 'Csongor Vogel',
      title: 'KonMari your Flutter code using DCM',
      xAccountName: 'GerfalconVogel',
      logoAssetName: 'resources/images/csongor-vogel.png',
      desc: 'GDE - Dart & Flutter /  Staff Software Engineer @talabat (Delivery hero)',
      day: Day.day1,
      time: '3:35 pm ~ 4:15 pm',
      talkDescription: '''As Flutter projects scale, code clutter increases: unused files, oversized widgets, and spaghetti dependencies slow down development. What if we could organize our codebase like we tidy our homes?

Inspired by Marie Kondo’s KonMari Method, this talk explores organizing and maintaining Flutter codebases using DCM (Design Code Metrics).

We will recap the latest features that DCM provides to eliminate unnecessary code, optimize widgets, manage assets, and address code smells and violations.
By the end of this talk, developers will learn multiple approaches to reducing technical debt, improving code quality, and maintaining a codebase that truly “sparks joy”.

Key Takeaways:
- Showcase cleanup strategies to identify and remove unused code, assets, and inefficient widgets.
- Applying DCM for code health by using static analysis, widget insight to increase quality.
- Using metrics to reveal features that are challenging to scale and modify.

Target Audience:
Flutter developers of all levels who are interested in improving code quality, optimizing performance, and cleaning up their projects, especially those working on large codebases.

Link: https://dcm.dev/'''
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
