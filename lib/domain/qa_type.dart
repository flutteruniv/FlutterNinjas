enum QAType {
  translation(
    question: '英語が得意ではないのですが、日本語への翻訳はございますか？',
    answer:
        '日本語字幕を生成AIでリアルタイム生成した映像へのリンクを提供し、必要な方はご自身のPCで見れるようにする方向性で調整中です。ただ、通信と翻訳のレイテンシを踏まえるとラグが5秒程度発生すると考えられます。あくまでも補助的な位置付けとお考えください。',
  ),
  live(
    question: 'Do you have live streaming?',
    answer:
        'No, we don\'t have live streaming. We\'re focusing on the in-person experience.',
  ),
  visa(
    question: 'Do you have visa support?',
    answer: 'Yes, we have visa support. Please contact us',
  ),
  food(
    question: 'Do you have vegetarian, vegan and halal food?',
    answer:
        'Yes, we\'re taking care of it. There is a form in the ticket purchase process to ask for your dietary requirements. Please fill it out.',
  ),
  ;

  const QAType({
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;
}
