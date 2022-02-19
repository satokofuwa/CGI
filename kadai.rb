# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new

# データを受け取った後、HTMLの形式でレスポンス（反応）を返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 受け取ったデータcgi['kadai']で取り出し、ローカル変数に代入する
  # 目印の'kadai'から情報を取り出す
  get = cgi['kadai']

  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>受け取った結果は下記になります</p>
      <p>結果：#{get}</p>
      <br/>
    </body>
  </html>"
}