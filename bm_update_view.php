<?php

$id = $_GET["id"];

//1.  DB接続します
try {
  $pdo = new PDO('mysql:dbname=gs_db41;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//２．SELECT * FROM gs_bm_table
$sql = "SELECT * FROM gs_bm_table WHERE id=:id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示
$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
  //データのみ抽出の場合はWhileループで取り出さない
 $row = $stmt->fetch();
    
  }

?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>POSTデータ登録</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/login.css" rel="stylesheet">
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
<form method="post" action="update.php">
 <input type="hidden" name="id" value="<?=$id?>">
  <div class="jumbotron">
   <fieldset>
    <legend>書籍</legend>
     <label>書籍名：<input type="text" name="name" 
      value="<?=$row["name"]?>"></label><br>
     <label>url：<input type="text" name="url" value="<?=$row["url"]?>"></label><br>
     <label><textArea name="naiyou" rows="8" cols="100"><?=$row["naiyou"]?>
     </textArea></label><br>
     <input type="hidden" name="id" value="<?=$row["id"]?>">
     <input type="submit" value="送信">
     
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
