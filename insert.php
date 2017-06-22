<?php
//入力チェック(受信確認処理追加)
if(
  !isset($_POST["name"]) || $_POST["name"]=="" ||
  !isset($_POST["url"]) || $_POST["url"]=="" ||
  !isset($_POST["naiyou"]) || $_POST["naiyou"]==""
  //!isset($_FILES["gazou"]) || $_FILES["gazou"]==""
){
  exit('ParamError');
}

//1. POSTデータ取得
$name   = $_POST["name"];
$url  = $_POST["url"];
$naiyou = $_POST["naiyou"];
$gazou = $_FILES["gazou"];

//2. DB接続します(エラー処理追加)
try {
  $pdo = new PDO('mysql:dbname=gs_db41;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DbConnectError:'.$e->getMessage());
}


//３．データ登録SQL作成
$stmt = $pdo->prepare("INSERT INTO gs_bm_table(id, name, url, naiyou,
indate,gazou )VALUES(NULL, :a1, :a2, :a3,:a4, sysdate())");
$stmt->bindValue(':a1', $name);
$stmt->bindValue(':a2', $url);
$stmt->bindValue(':a3', $naiyou);
$stmt->bindValue(':a4', $gazou);
$status = $stmt->execute();

//４．データ登録処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("QueryError:".$error[2]);
}else{
  //５．index.phpへリダイレクト
  header("Location: index.php");
  exit;
}
?>
