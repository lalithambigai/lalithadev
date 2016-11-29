<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron">
 <div class="container text-center">
    <h2>Login page</h2>
    <div class="form-group">
  </div>
  <div class="container"> 
<script type="text/javascript">
  function checkPassword(str)
  {
    var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
    return re.test(str);
  }

  function checkForm(form)
  {
    if(form.username.value == "") {
      alert("Error: Username or email cannot be blank!");
      form.username.focus();
      return false;
    }
    re = /^\w+$/;
    if(!re.test(form.username.value)) {
      alert("Error: Username or email must contain only letters, numbers and underscores!");
      form.username.focus();
      return true;
    }
    if(form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) {
      if(!checkPassword(form.pwd1.value)) {
        alert("The password you have entered is not valid!");
        form.pwd1.focus();
        return false;
      }
    } else {
      alert("Error: Please check that you've entered  your password!");
      form.pwd1.focus();
      return false;
    }
    return true;
  }
</script>
<form method="POST" action="Login1..." onsubmit="return checkForm(this);">
            <p>          Username: <input type="text" name="username"></p>
            <p>           Password: <input type="password" name="pwd1"></p>
             <div class="form-group"></div>
  </div>    <div class="col-sm-offset-2 col-xs-4">
        <div class="checkbox"></div>
                     </div>   <label><input type="checkbox"> Remember me</label>
        <div class="form-group">
                              </div>   <div class="col-sm-offset-2 col-xs-4"></div>
                                  <button type="submit" class="btn btn-danger">Submit</button>
      </div>
    </div>
                </div>
            </div>
</body>
</html>

 
