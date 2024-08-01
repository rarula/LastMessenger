# LastMessenger

## 開発環境

### バージョン
Minecraft JE 1.20.4

### データパックの読み込み順
1. vanilla (Built-in)
2. LastMessengerCore
3. LastMessengerAsset
4. AnimatedJava
5. StablePlayerDisplay
6. Concat
7. SkinModelDetection
8. WasdDetection

## ライセンスについて
このリポジトリでは、以下のものを除いて [CC0-1.0 License](LICENSE) が適用されます。
- [AnimatedJava](AnimatedJava) ディレクトリ ([MIT License](AnimatedJava/LICENSE))
- [LastMessengerAsset](LastMessengerAsset) ディレクトリ ([MIT License](LastMessengerAsset/LICENSE))
- [Concat](Concat) ディレクトリ ([MIT License](Concat/LICENSE)) - Copyright by mkm75
- [Ai-Akaishi/AiUtil](https://github.com/Ai-Akaishi/AiUtil) に関係するディレクトリまたはファイル ([MIT License](https://github.com/Ai-Akaishi/AiUtil/blob/main/LICENSE)) - Copyright by 赤石愛
  - [LastMessengerCore/.../core/pass_through](LastMessengerCore/data/util/functions/ray/core/pass_through)
  - [LastMessengerCore/.../pass_through.mcfunction](LastMessengerCore/data/util/functions/ray/pass_through.mcfunction)

## ライブラリや技術について
このリポジトリでは、以下のライブラリや技術を使用させていただいております。

- [AiUtil#pass_through](https://github.com/Ai-Akaishi/AiUtil/tree/main/data/util/functions/pass_through) ([Ai-Akaishi](https://github.com/Ai-Akaishi) 様)  
`util:ray/raycast_blocks` 関数で、rayのヒットしたブロックの面を取得するのに使用させていただきました。

- [MCCMD-Base64](https://github.com/ChenCMD/MCCMD-Base64) ([ChenCMD](https://github.com/ChenCMD) 様)  
プレイヤーヘッドのBase64解析に使用させていただきました。

- [concat](https://github.com/crafter1415/concat) ([crafter1415](https://github.com/crafter1415) 様)  
プレイヤーヘッドのBase64を解析した後の文字列の結合に使用させていただきました。

- [animated-java](https://github.com/Animated-Java/animated-java) ([Animated-Java](https://github.com/Animated-Java) 様)  
アクターのアニメーション作成に使用させていただきました。

- [stable_player_display](https://github.com/bradleyq/stable_player_display) ([bradleyq](https://github.com/bradleyq) 様)  
バニラシェーダーによるプレイヤーモデルの描画や、エクスポートされたAnimatedJavaプロジェクトの一部モデルの変換に使用させていただきました。

- [WASD-Detection](https://github.com/CloudWolfYT/WASD-Detection) ([CloudWolfYT](https://github.com/CloudWolfYT) 様)  
プレイヤーによるWASDキー押下の検知に使用させていただきました。
