---
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('/.assets/hero-background.jpg')
marp: true
---

[phktn]: https://github.com/phktn
[avatar-phktn]: https://avatars.githubusercontent.com/phktn

# **SSH 入門**

### by [P Hackathon][phktn]

---

## 推奨環境

#### **OS** : Ubuntu 20.04 LTS (Focal Fossa)

- 下記 OS でも大丈夫なはず...
    - Ubuntu 18.04 LTS (Bionic Beaver) / 16.04 LTS (Xenial Xerus)

```bash
$ lsb_release -d
Description:	Ubuntu 20.04.1 LTS
```

#### **マシンのアーキテクチャ** : x86_64 / amd64

```bash
$ arch
x86_64
```

---

[Secure Shell]: https://ja.wikipedia.org/wiki/Secure_Shell
## Secure Shell (SSH) とは

> Secure Shell（セキュアシェル、SSH）は、暗号や認証の技術を利用して、安全にリモートコンピュータと通信するためのプロトコル。パスワードなどの認証部分を含むすべてのネットワーク上の通信が暗号化される。

<!-- _footer: "出典：「[Secure Shell]」『ウィキペディア（Wikipedia）』 (2020/09/28 03:56 UTC 版)" -->

---

### `ssh-keygen` - SSH の公開鍵と秘密鍵を確認する

SSH の **公開鍵** と **秘密鍵** がすでに存在するか確認します。

```bash
ls -al ~/.ssh
```

デフォルトでは、
**公開鍵** のファイル名は、
`id_rsa.pub` / `id_ecdsa.pub` / `id_ed25519.pub` のいずれかです。
**秘密鍵** のファイル名は、拡張子 `.pub` がありません。

上記ファイルや `~/.ssh` が無い場合は、 _**次の手順**_ で作成します。

[GitHub に SSH で接続する - GitHub Docs]: https://docs.github.com/ja/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh
<!-- _footer: "参考： [GitHub に SSH で接続する - GitHub Docs]" -->

---

### `ssh-keygen` - SSH の公開鍵と秘密鍵を作成する (1/2)

SSH の公開鍵と秘密鍵が無ければ、作成します。
`your_email@example.com` は自分のメールアドレスに置き換えます。
パスフレーズを指定するとより安全ですが、ここでは空にします。

```bash
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/home/xxxx/.ssh/id_rsa): # ⏎ キーのみを入力 
Created directory '/home/xxxx/.ssh'.
Enter passphrase (empty for no passphrase):                   # ⏎ キーのみを入力 
Enter same passphrase again:                                  # ⏎ キーのみを入力 
Your identification has been saved in /home/xxxx/.ssh/id_rsa
Your public key has been saved in /home/xxxx/.ssh/id_rsa.pub
 : # 以下省略
```

[GitHub に SSH で接続する - GitHub Docs]: https://docs.github.com/ja/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh
<!-- _footer: "参考： [GitHub に SSH で接続する - GitHub Docs]" -->

---

### `ssh-keygen` - SSH の公開鍵と秘密鍵を作成する (2/2)

```bash
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

- `-t` オプション
    - 作成する鍵の暗号化形式を指定します。
      今回は RSA 形式を指定しました。
- `-b` オプション
    - 作成する鍵のビット数を指定します。
      RSA の場合、推奨は 2048 bit 以上。今回は 4096 bit を指定。
        - RSA 512 bit 鍵は既に解読され、 RSA 1024 bit 鍵も危険です。

[GitHub に SSH で接続する - GitHub Docs]: https://docs.github.com/ja/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh
<!-- _footer: "参考： [【 ssh-keygen 】コマンド――SSHの公開鍵と秘密鍵を作成する：Linux基本コマンドTips（327） - ＠IT](https://www.atmarkit.co.jp/ait/articles/1908/02/news015.html)" -->

---

### `ssh` - Remote PC でコマンドを実行する

---

### `ssh` - Remote PC にログインする

```bash
Local-PC $ ssh 127.0.0.1
Welcome to ...
```

---

### `exit` - Shell を終了する

```bash
Local-PC $ ssh 127.0.0.1
Welcome to ...
```

```bash
Remote-PC $ exit
ログアウト
Connection to 127.0.0.1 closed.
```

```bash
Local-PC $ exit
# 端末 (terminal) が閉じられる
```

[exit]: https://servlet.mizo0203.com/plantuml/svg/hL3DIWCn6BpdAK9wMoXQQMKfTQ7MtbPQgjwyXEotDdIRr2Jh3-91Un9lWbSVmOk83xG8FeR9PcsLMl1W3laWtynaPYWpKk4Z3GhDg3ASyHaL1fDOCfhLXxrZKTmyuuCnP1d1LEDuqEl6Fw4Zc4e3ls17_Vt1OHyXFU72CkWKQpZDGJ30LmZRqrLAdlTaPXtKcgqMtMwMpp5F8UO2TgLAGAtkXylV_mAXR7AYP2wI2fQcQGWDRy2bNwVXbslOrmYvqd0zyfMqVMvSt3vylBwztpyYoWm_emQgob0v7DxNqiP1G8ZMOq8iwQMOFnLpUzy5mPBvLQ2VtxcTLDhgcREqKzlS2iEzHkJqu8AR5S7EXaD7I879bK09QAFavK9zOQmAyX_QfTGd
![bg right:40% 100%][exit]

---

### `nohup` - Shell 終了後も処理を続ける

---

### 標準出力・標準エラー出力のリダイレクト

---

### 標準出力・標準エラー出力をまとめる

---

### 標準出力・標準エラー出力を捨てる

---

### Tera Term を使ってみよう

---

### Tera Term で画面転送 (X11 フォワーディング)

---

#### 参考文献

- Linux基本コマンドTips - ＠IT
    - https://www.atmarkit.co.jp/ait/series/3065/

---

<!-- _class: lead -->
# <!--fit--> [PR] 一日中、好きなコードを書くイベントです
# <!--fit--> ![w:1em h:1em][avatar-phktn] P Hackathon
# <!--fit--> :link: https://github.com/phktn
