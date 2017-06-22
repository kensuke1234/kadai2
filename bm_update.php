<?php
//1.POSTでParamを取得
$id = $_POST["id"];
$name = $_POST["name"];
$url = $_POST["url"];
$naiyou = $_POST["naiyou"];

//2.DB接続など

try {
  $pdo = new PDO('mysql:dbname=gs_db41;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}
//3.SELECT gs_bm_table SET ...

$sql = "SELECT * FROM gs_bm_table WHERE id =:id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//データ表示
$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
    
}else{
 //データのみ抽出の場合はWhileループで取り出さない。
    $row = $stmt->fetch();
}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>POSTデータ登録</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="insert.php">
  <div class="jumbotron">
  
   <fieldset>
    <legend>書籍名</legend>
     <label>書籍名：<input type="text" name="name"></label><br>
     <label>url：<input type="text" name="url"></label><br>
     <label><textArea name="naiyou" rows="4" cols="40"></textArea></label><br>

     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
