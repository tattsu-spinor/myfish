# myfish

## fishについて

- the **f**riendly **i**nteractive **sh**ell
- シンタックスハイライトや補完機能などが標準で備わっていて使いやすい。
- [公式ドキュメント](https://fishshell.com/docs/current/index.html)

## fisherについて

- fishのプラグインマネージャー
- [GitHub](https://github.com/jorgebucaran/fisher)

## 初期設定

1. Homebrewで以下のパッケージをインストールする:
    - fisher (プラグインマネージャ)
    - oh-my-posh (プロンプトマネージャ)
    - fzf (曖昧検索)
    - bat (高級なcat)
    - fd (高級なfind)
2. このレポジトリを任意の場所にcloneする。
3. `./install.fish`を実行する。
4. `exec fish`でシェルを再起動すれば完了。

## カスタム設定

- ~/.config/fish/conf.d以下にpath.fishやjava.fishなどを作成して、各種設定を行う。

## よく使うコマンド

- `fisher update`: プラグインの更新

## キーバインド

- `^ + R`: コマンド履歴を検索
- `^ + F`: カレントディレクトリ以下にあるファイルを検索
- `^ + S`: (Gitレポジトリ以下で) Git Statusを検索
- `^ + L`: (Gitレポジトリ以下で) Git Logを検索
- `^ + Z`: 頻繁に訪れるディレクトリに移動
