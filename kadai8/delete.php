<?php

$id = $_GET["id"];

//2.DB接続など

try {
  $pdo = new PDO('mysql:dbname=gs_db41;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//3.UPDATE gs_bm_table SET ....; で更新(bindValue)
//　基本的にinsert.phpの処理の流れです。

$stmt = $pdo->prepare("DELETE FROM gs_bm_table WHERE id =:id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
 header("Location: select.php");
 exit;
}

?>