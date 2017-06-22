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
    <div class="navbar-header"><a class="navbar-brand" href="">データ更新</a></div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="select.php">
  <div class="jumbotron">
  
   <fieldset>
    <legend>更新する書籍名</legend>
     <label>更新する書籍名：<input type="text" name="name"></label><br>
     <label>url：<input type="text" name="url"></label><br>
     <label><textArea name="naiyou" rows="4" cols="40"></textArea></label><br>

     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
