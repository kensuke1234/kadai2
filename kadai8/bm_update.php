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

//3.UPDATE gs_bm_table SET ....; で更新(bindValue)
//　基本的にinsert.phpの処理の流れです。

$stmt = $pdo->prepare("UPDATE gs_bm_table SET name=:name, url=:url, naiyou=:naiyou WHERE id =:id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':naiyou', $naiyou, PDO::PARAM_STR);

$status = $stmt->execute();


$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
 header("Location:bm_update_view.php");
 exit;
}


?>
