---
layout: post
title: "jQueryでtouchイベントをbindする"
tags:
- jQuery
gist: true
---
スマートフォンでtoggleするメニュー等の開閉ボタンをタッチした時、適用している`:hover`スタイルが、
タッチ後にも適用されたままになってしまい、不恰好です。

[調べてみる][1] と、jQueryの`.bind()`を使ってオブジェクトのイベントを取得して
クラスを追加する方法で、タッチしたときにスタイルを変更することができることがわかりました。

<amp-gist
    data-gistid="6102880"
    layout="fixed-height"
    height="225">
</amp-gist>

でもこのやり方だと、`:hover`と`touch`の共存ができないので
（bindに`mouseenter`を記述すると`:hover`の時と同じ挙動になる）
もっと良い方法があれば、知りたいです。

cssに`:touch`があればいいのに。

[.bind() \| jQuery API Documentation][1]


 [1]: http://api.jquery.com/bind/
