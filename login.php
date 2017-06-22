<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="css/main.css" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
<title>ログイン</title>
</head>
<body>

<header>

</header>

<!-- lLOGINogin_act.php は認証処理用のPHPです。 -->

<div class="login">
  <div class="heading">
   <h1>旅する本箱</h1>
    <h2>Sign in</h2>
    <form name="form1" action="login_act.php" method="post">

      <div class="input-group input-group-lg">
        <span class="input-group-addon"><i class="fa fa-user"></i></span>
        <input type="text" name="lid" class="form-control" placeholder="Username or email">
         
          </div>

        <div class="input-group input-group-lg">
          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
          <input type="password"  name="lpw" class="form-control" placeholder="Password">
        </div>

        <button type="submit" value="LOGIN" class="float">Login</button>
       </form>
 		</div>
 </div>
 </body>
 </form>
</html>
