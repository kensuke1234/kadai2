<?php

session_start();

//0.外部ファイル読み込み
include("functions.php");
loginCheck();

//1.  DB接続します
$pdo = db_con();


//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
  //Selectデータの数だけ自動でループしてくれる
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .= '<p>';
    $view .= $result["id"];
    $view .='<br>';
    $view .= $result["indate"] . ":" . $result["name"];
    $view .='<br>';
    $view .= $result["naiyou"];
    $view .= $result["url"];
    $view .= $result["gazou"];
    $view .='<br>';
    $view .= '<a href="delete.php?id='.$result["id"].'">';
    $view .= '[削除]';
    $view .= '<a href="bm_update_view.php?id='.$result["id"].'">';
    $view .= '[更新]';
    $view .= '</a>';
    $view .= '</p>';
  }
}

?>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>書籍</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">


<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="index.php">データ登録</a>
      <a class="navbar-brand" href="logout.php">ログアウト</a>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?=$view?></div>
  </div>
</div>
<!-- Main[End] -->

</body>
</html>
