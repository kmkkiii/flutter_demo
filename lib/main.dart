// MaterialパッケージにはWidgetsパッケージも含まれている
import 'package:flutter/material.dart';
// iOSの標準的なUIを再現することが可能(Widgetsパッケージも含まれている)
import 'package:flutter/cupertino.dart';
// 特定のプラットフォームに依存しないブランドドリブンなデザインの重要性が高まっている

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Note'),
          ),
          //children引数で受け取ったWidgetの配列を縦に並べるWidget
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Spacer(),
                const TextField(),
                const SizedBox(
                    height:
                        32), //コンストラクタの引数に渡せる値は文字列や数値など、処理を実行しなくても決定できる値に限られる
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('保存'),
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}
