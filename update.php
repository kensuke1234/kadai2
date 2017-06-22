<?php

//1.POSTでParamを取得
$id = $_POST["id"];
$name = $_POST["name"];
$url = $_POST["url"];
$naiyou = $_POST["naiyou"];
$gazou = $_FILES["gazou"];
//2.DB接続など

try {
  $pdo = new PDO('mysql:dbname=gs_db41;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//3.UPDATE gs_bm_table SET ....; で更新(bindValue)
//　基本的にinsert.phpの処理の流れです。

$sql = 'UPDATE gs_bm_table SET name=:name, url=:url, naiyou=:naiyou gazou=:gazou WHERE id =:id';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':naiyou', $naiyou, PDO::PARAM_STR);
$stmt->bindValue(':gazou', $gazou, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);

$status = $stmt->execute();


$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
 header("Location: select.php");
 exit;
}

if( $gazou['size']>0)
{
  if( $gazou['size']>1000000)
  {
      print'画像が大き過ぎる';
  }
 else
 {
    move_uploaded_file($gazou['gazou['tmp_name'],'./gazou/'.$gazou['name']);
    print'<img src=".gazou/'.gazpi['name'].'">';
    promt'<br />';
     
 }
}
if($pro_name==''||preg_match('/\A[0-9]+\z/',$pro_price)==0||$pro_gazou['size']>1000000)
{

print'<input type="hidden" name="price" value="'.$pro_price.'">';
print'<input type="hidden" name="gazou_name" value="'.$pro_gazou[name].'">';
print'<br />';
}
?>
