import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../config/font.dart';

//ローディング画面
class TermPage extends StatelessWidget {
  const TermPage({Key? key}) : super(key: key);
  static const String route = '/term';

  static const text = '''
<p>FlutterNinjasは、日本において開催されるFlutterエンジニアの交流、新たなアイデアの発掘、Flutterの技術可能性の探索を目的としたカンファレンスです。我々はすべての参加者にとって安全で歓迎されるような場を作ることに努めます。</p>

<p>そのためには、FlutterNinjasに参加するすべての人は本行動規範を守ることを求められます。聴講者、登壇者、スポンサー、主催スタッフ含めたすべての参加者にご協力をお願いします。下記のような項目は、いずれもハラスメント行為として取り扱われます（ただし、これに限定されません）。</p>

<ol>
<li>宗教活動を含む宗教団体への勧誘</li>
<li>カンファレンスの趣旨と無関係な営業、採用、宣伝、広告、勧誘など、営利目的の活動</li>
<li>性的な意味を含む言動</li>
<li>侮辱的・軽蔑的な印象を与える言動</li>
<li>脅迫、つきまとい、ストーキング</li>
<li>不適切な画像、動画、録音の再生（性的な画像など）</li>
<li>発表や他のイベントに対する妨害行為</li>
<li>不適切な身体的接触</li>
<li>これらに限らない性的嫌がらせ</li>
</ol>

<p>スポンサーや登壇者、ハッカソン参加者、主催スタッフもこのポリシーの対象となります。性的な意味を含む言葉や不適切な画像の使用はいかなる発表やXのようなオンラインメディアにおいても不適切です。</p>


<p>ハラスメント行為をやめるように指示された場合、直ちに従うことが求められます。ルールを守らない参加者は、主催者の判断により、退場処分や今後のイベントに聴講者、登壇者、ハッカソン参加者、スタッフとして関わることを禁止します。</p>

<p>もしハラスメントを受けていると感じたり、他の誰かがハラスメントされていることに気がついた場合、主催スタッフにご連絡いただくか、公式サイトに明記された連絡窓口にご連絡ください。</p>

<p>2023年08月01日策定</p>
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('行動規範'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Html(
            style: {
              'body': Style(
                fontFamily: Font.notoSansJP,
                fontSize: FontSize(18.0),
              ),
            },
            data: text,
          ),
        ),
      ),
    );
  }
}
