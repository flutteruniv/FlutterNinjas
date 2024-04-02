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
<h3>電話番号</h3>
<p>07037953029</p>
<h3>メールアドレス</h3>
<p>flutterninjas@flutteruniv.com</p>
<h3>運営統括責任者	</h3>
<p>藤川慶</p>
<h3>追加手数料等の追加料金</h3>
<p>イベント参加に伴う交通費や宿泊費等</p>
<h3>返金ポリシー</h3>
<p>誤って購入してしまった場合は flutterninjas@flutteruniv.com にお問い合わせください。購入後7日未満であれば返金対応が可能です。</p>
<h3>引渡時期</h3>
<p>即時</p>
<h3>受け付け可能な決済手段</h3>
<p>クレジットカード決済、Paypal決済</p>
<h3>決済期間</h3>
<p>即時</p>
<h3>販売価格</h3>
<p>・Early bird：10,000円<br>
・Regular 20,000円<br>
・Late bird 30,000円
</p>
<h3>商品引渡し方法</h3>
<p>EmailにてQRコード付きのチケットを送付</p>
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
