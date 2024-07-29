import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersonalArtPage(),
    );
  }
}

class PersonalArtPage extends StatefulWidget {
  @override
  _PersonalArtPageState createState() => _PersonalArtPageState();
}

class _PersonalArtPageState extends State<PersonalArtPage> {
  String? selectedColor;
  String? selectedEmotion;
  String? selectedArtStyle;
  String? selectedPriority;
  String? selectedBackground;

  bool showRecommendation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'パーソナルアート',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '「パーソナルアート」とは、絵画を欲しいけれど具体的なイメージが浮かばない方や、どのように絵画を選べばよいかわからない方に向けたサービスです。',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'お客様一人ひとりの好みや感情、アートスタイルに対する嗜好を細かく分析し、最適な絵画を提案いたします。',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    '私たちは、お客様が理想のアート作品と出会う手助けをいたします。質問にお答えいただくことで、',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'あなたの個性や感性にぴったりの絵画を見つけ出し、生活空間に彩りと癒しをもたらすお手伝いをいたします。',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'ぜひ、パーソナルアートを通じて、あなただけの特別な一枚を見つけてください。',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: '名前',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: '年齢',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'あなたが好む色はどれですか？',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      ChoiceChip(
                        label: const Text('青とその派生色'),
                        selected: selectedColor == '青とその派生色',
                        onSelected: (selected) {
                          setState(() {
                            selectedColor = selected ? '青とその派生色' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedColor == '青とその派生色' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('赤とその派生色'),
                        selected: selectedColor == '赤とその派生色',
                        onSelected: (selected) {
                          setState(() {
                            selectedColor = selected ? '赤とその派生色' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedColor == '赤とその派生色' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('黄色とその派生色'),
                        selected: selectedColor == '黄色とその派生色',
                        onSelected: (selected) {
                          setState(() {
                            selectedColor = selected ? '黄色とその派生色' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedColor == '黄色とその派生色' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('緑とその派生色'),
                        selected: selectedColor == '緑とその派生色',
                        onSelected: (selected) {
                          setState(() {
                            selectedColor = selected ? '緑とその派生色' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedColor == '緑とその派生色' ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'アート作品からどのような感情を受け取りたいですか？',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      ChoiceChip(
                        label: const Text('安心感と穏やかさ'),
                        selected: selectedEmotion == '安心感と穏やかさ',
                        onSelected: (selected) {
                          setState(() {
                            selectedEmotion = selected ? '安心感と穏やかさ' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedEmotion == '安心感と穏やかさ' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('活力とエネルギー'),
                        selected: selectedEmotion == '活力とエネルギー',
                        onSelected: (selected) {
                          setState(() {
                            selectedEmotion = selected ? '活力とエネルギー' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedEmotion == '活力とエネルギー' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('深い感動と共感'),
                        selected: selectedEmotion == '深い感動と共感',
                        onSelected: (selected) {
                          setState(() {
                            selectedEmotion = selected ? '深い感動と共感' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedEmotion == '深い感動と共感' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('知的な刺激と考察'),
                        selected: selectedEmotion == '知的な刺激と考察',
                        onSelected: (selected) {
                          setState(() {
                            selectedEmotion = selected ? '知的な刺激と考察' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedEmotion == '知的な刺激と考察' ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'どのタイプのアートスタイルが好きですか？',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      ChoiceChip(
                        label: const Text('印象派の柔らかくて感情的なスタイル'),
                        selected: selectedArtStyle == '印象派の柔らかくて感情的なスタイル',
                        onSelected: (selected) {
                          setState(() {
                            selectedArtStyle = selected ? '印象派の柔らかくて感情的なスタイル' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedArtStyle == '印象派の柔らかくて感情的なスタイル' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('抽象芸術の大胆で形式を超えたスタイル'),
                        selected: selectedArtStyle == '抽象芸術の大胆で形式を超えたスタイル',
                        onSelected: (selected) {
                          setState(() {
                            selectedArtStyle = selected ? '抽象芸術の大胆で形式を超えたスタイル' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedArtStyle == '抽象芸術の大胆で形式を超えたスタイル' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('リアリズムの詳細でリアルな表現'),
                        selected: selectedArtStyle == 'リアリズムの詳細でリアルな表現',
                        onSelected: (selected) {
                          setState(() {
                            selectedArtStyle = selected ? 'リアリズムの詳細でリアルな表現' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedArtStyle == 'リアリズムの詳細でリアルな表現' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('キュビズムの幾何学的な形状と革新'),
                        selected: selectedArtStyle == 'キュビズムの幾何学的な形状と革新',
                        onSelected: (selected) {
                          setState(() {
                            selectedArtStyle = selected ? 'キュビズムの幾何学的な形状と革新' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedArtStyle == 'キュビズムの幾何学的な形状と革新' ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'アート作品を選ぶとき、何を最も重視しますか？',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      ChoiceChip(
                        label: const Text('色彩の美しさと調和'),
                        selected: selectedPriority == '色彩の美しさと調和',
                        onSelected: (selected) {
                          setState(() {
                            selectedPriority = selected ? '色彩の美しさと調和' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedPriority == '色彩の美しさと調和' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('線の流れと形の構成'),
                        selected: selectedPriority == '線の流れと形の構成',
                        onSelected: (selected) {
                          setState(() {
                            selectedPriority = selected ? '線の流れと形の構成' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedPriority == '線の流れと形の構成' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('情熱的な表現とアーティストの感情'),
                        selected: selectedPriority == '情熱的な表現とアーティストの感情',
                        onSelected: (selected) {
                          setState(() {
                            selectedPriority = selected ? '情熱的な表現とアーティストの感情' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedPriority == '情熱的な表現とアーティストの感情' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('技術的な完成度とディテール'),
                        selected: selectedPriority == '技術的な完成度とディテール',
                        onSelected: (selected) {
                          setState(() {
                            selectedPriority = selected ? '技術的な完成度とディテール' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedPriority == '技術的な完成度とディテール' ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'アート作品の背景に興味がありますか？',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      ChoiceChip(
                        label: const Text('アーティストの生涯や思想を知ることが重要'),
                        selected: selectedBackground == 'アーティストの生涯や思想を知ることが重要',
                        onSelected: (selected) {
                          setState(() {
                            selectedBackground = selected ? 'アーティストの生涯や思想を知ることが重要' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedBackground == 'アーティストの生涯や思想を知ることが重要' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('作品自体の美しさが最も重要'),
                        selected: selectedBackground == '作品自体の美しさが最も重要',
                        onSelected: (selected) {
                          setState(() {
                            selectedBackground = selected ? '作品自体の美しさが最も重要' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedBackground == '作品自体の美しさが最も重要' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('作品が作られた歴史的文脈を理解することが好き'),
                        selected: selectedBackground == '作品が作られた歴史的文脈を理解することが好き',
                        onSelected: (selected) {
                          setState(() {
                            selectedBackground = selected ? '作品が作られた歴史的文脈を理解することが好き' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedBackground == '作品が作られた歴史的文脈を理解することが好き' ? Colors.white : Colors.black),
                      ),
                      ChoiceChip(
                        label: const Text('興味はあるが、それは作品を選ぶ上での主な要因ではない'),
                        selected: selectedBackground == '興味はあるが、それは作品を選ぶ上での主な要因ではない',
                        onSelected: (selected) {
                          setState(() {
                            selectedBackground = selected ? '興味はあるが、それは作品を選ぶ上での主な要因ではない' : null;
                          });
                        },
                        selectedColor: Colors.blue,
                        labelStyle: TextStyle(color: selectedBackground == '興味はあるが、それは作品を選ぶ上での主な要因ではない' ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showRecommendation = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('送信'),
                  ),
                  if (showRecommendation) ...[
                    const SizedBox(height: 20),
                    const Text(
                      'あなたにおすすめの絵画はこちら:',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    Image.asset('assets/images/Gogh.jpg'),
                    const SizedBox(height: 20),
                    const Text(
                      '提案理由\n\nあなたは色彩に対する明確な好みとアート作品から得たい感情が見えます。特に黄色とその派生色を好むあなたは、暖かくて元気を与える色を好む傾向があります。また、安心感と穏やかさを求めるあなたの性格には、落ち着いた感情表現が魅力的です。\n\nあなたが印象派のスタイルを好むという点も、ヴィンセント・ヴァン・ゴッホの「ひまわり」が適している理由です。この作品は、鮮やかな黄色が豊富に使われ、視覚的にも心理的にも温かみを感じさせます。また、ゴッホの感情豊かな筆使いが、印象派の特徴である感情の表現を際立たせています。\n\nさらに、アーティストの生涯や思想に興味があるというあなたにとって、ゴッホの「ひまわり」は特に意味深い選択となるでしょう。この絵はゴッホの情熱的な芸術観と彼の生涯を象徴する作品であり、見る者に深い共感を呼び起こします。\n\n以上の点から、「ひまわり」はあなたにとって最適なアート作品です。この絵はあなたの好みや価値観を反映し、同時にゴッホの独特な世界観をあなたに提供することでしょう。',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ]
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
