import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher_string.dart';

//ローディング画面
class TokushoPage extends StatelessWidget {
  static const String route = '/tokusho';

  static const text = '''
<h3>サービス名</h3>
<p>FlutterNinjas</p>
<h3>事業者</h3>
<p>株式会社KBOY</p>
<h3>所在地</h3>
<p>東京都渋谷区幡ヶ谷1丁目2番2号京王幡ヶ谷ビルMIDPOINT幡ヶ谷4－41</p>
<h3>連絡先</h3>
<p>flutterninjas@flutteruniv.com</p>
<h3>販売価格</h3>
<p>Early bird：100 USD<br>
Regular 200 USD<br>
Late bird 300 USD
</p>
<h3>支払い方法</h3>
<p>支払い方法：Stripe決済</p>
<h3>商品引渡し方法</h3>
<p>Emailにてチケットを送付</p>
<h3>返品・返金について</h3>
<p>flutterninjas@flutteruniv.com にお問い合わせください</p>
''';

  const TokushoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('特定商取引法に基づく表示'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Html(
            data: text,
            onLinkTap: (
              url,
              attributes,
              element,
            ) {
              if (url == null) {
                return;
              }
              launchUrlString(url);
            },
          ),
        ),
      ),
    );
  }
}
