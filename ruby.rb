
= Rubyで\n喋らせてみよう。

: author
	@akira345

: institution
	Hiroshima.rb

: theme
    rabbit

: allotted-time
   4.5m

= ((*注意*))
\n
\n
(('tag:center'))時間の都合上今回技術的な内容は説明しません。\n
（本人も実はよく分かっていません）


= 自己紹介

* 広島の某中小企業に勤めるシステム屋さん。
* 好きな言語はPHP、SQL。もちろん((*Ruby*))も。
* 旧MS-DOS(PC98)使いだった。(自称)

== プロパティ

: background-image
   bakeneko.png

: background-image-relative-width
   50


= 　

\n\n\n
(('tag:center'))で、OSCですよ。


= 　
\n\n\n
(('tag:center'))今年も何か出すかなー

= 某WTM懇親会にて
\n
(('tag:center'))((*ハード*))やろうよハード By @WoTani

    # image
    # src =neko-__-20100907___normal.png

= ハードかぁ。
丁度Arduinoで遊んでいるから、\n
((*Arduino+Ruby*))で何かできないかなぁ。
\n(一応オープンソースだし)
* Arduinoってなに？
    *((*8bitなマイコン*))です。(('note:詳細はぐぐってね'))
    # image
    # src = arduino.jpg
    # width = 200
    # height = 150

= RADというのがあるらしい。
\n\n
* Arduinoの開発をRubyで出来るものです。(但しまだベータ版。)\n
(('note:http://rad.rubyforge.org/'))


= 安易な発想・・
\n
(('tag:small'))以前Arduinoで簡易MP3Player作ったし、\n
これでMP3Playerつくろう！\n
Arduinoのスケッチを焼き変えれば\n((*余裕*))でしょ。\n
(('note:https://github.com/akira345/EasyMP3_For_Arduino'))

= 　
\n\n\n
(('tag:center'))・・・

= 　
\n\n\n
(('tag:center'))((*私の実力では無理でした！*))


= マズイ！
\n
(('tag:center'))((*この時既に９月・・・*))

= そうだ！
(('tag:center'))たまたま入手した((*詳細不明*))大型液晶に\n
文字を出して((*お茶を濁そう！*))\n

(('note:液晶に文字を出すくらいなら・・・'))
    # image
    # src = LCD.jpg
    # width = 350
    # height = 200

= 　
\n\n\n
(('tag:center'))・・・

= 　
\n\n\n
(('tag:center'))((*私の実力では無理でした！*))
\n
(('note:液晶自体の解析に思ったより時間が・・・'))


= マズイ！
\n
(('tag:center'))((*この時既に１０月に突入・・・*))

= 　
\n\n\n
(('tag:center'))((*なにか無いか。（焦）*))

= ここは先生に助けを・・・
\n
(('tag:center'))Ruby+Arduinoで((*ググる*))
\n\n

* Arduinoのシリアル出力をRubyで処理してみた\n
(('note:http://goodsite.cocolog-nifty.com/uessay/2009/07/arduinoruby-3a1.html'))


= 　
\n\n\n
(('tag:center'))((*！　！　！*))

= 悪魔のささやきが聞こえる・・
\n\n\n
(('tag:center'))そうだ！これを((*パクろうw*))

= 　
\n\n\n
(('tag:center'))ここからが((*本題*))

= 某ツイ○です。
\n
* シリアル通信でローマ字を送ると喋るLSIが手元にある。
* こいつになにか喋らせたら面白くね？
  * そうだ！TwitterのTLを喋らせよう！

= どうやる？
* (('tag:x-small'))日本語を喋らせるのは\n((*以外に大変！！*))
  * (('tag:x-small'))文章を単語に区切る。(MeCabによる形態素解析)
  * (('tag:x-small'))数字やアルファベットどうする？(AquesTalkの専用タグで対応）
  * (('tag:x-small'))アルファベットでも固有名詞があるよね？>Rubyとか
  * (('tag:x-small'))記号の読み方って？
  * (('tag:x-small'))漢字かな混じり文の読みってどうする？(Kakasiで変換)

= 構成図

 # image
 # src = flow.png

= 機能一覧

* (('tag:x-small'))TwitterAPIを利用して、特定ハッシュタグのついたつぶやきを取得。
* (('tag:x-small'))MeCabを利用して形態素解析を行う。
* (('tag:x-small'))数字なら数字のタグをつける。英語なら英語のタグをつける。
* (('tag:x-small'))記号で読み方が不明の場合は、人間が読み方の辞書を与える。
* (('tag:x-small'))固有名詞の場合は読み方がわからないので、人間が読み方の辞書を与えてやる。

= 機能一覧

* (('tag:x-small'))kakasiを使って、読みがなをローマ字に変換する。
* (('tag:x-small'))シリアルポートへローマ字を流す。
* (('tag:x-small'))AquesTalkが喋る！

= 　
\n\n\n
(('tag:center'))？　？　？　？　？　？　？　？　？　？　？　？　？　？　？

= ？？？？？？
* MeCabって？
* 形態素解析って？
* Kakasiって？
    * 例によって((*ググッてください。*))
(('note:スミマセン・・・'))

= 今回の肝。合成音声LSI\n
((*AquesTalk*))
    # image
    # src = atp3011f4-pu.jpg


= 喋ります！
 * (('tag:x-small'))シリアル通信でローマ字を送ると喋ってくれる((*優れもの。*))
 * (('tag:x-small'))今回作成したソースはGitHubで((*公開中！*))
 * (('tag:x-small'))Hiroshima.rbでは、GitHubを((*積極的に活用しています！！*))
(('note:https://github.com/akira345/Ruby-Talk'))
\n
 * (('tag:x-small'))お気軽に((*pull request*))やら((*fork*))してね。

= 　
\n\n\n
(('tag:center'))実物は展示しています。\n\n
((*みにきてね！！*))


= 　
\n\n\n
(('tag:center'))??時間が余ったら喋らせてみる。??

