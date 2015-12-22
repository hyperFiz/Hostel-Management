<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html >
    <head>
        <title>Hostel Booking</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
        <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body style="background-image: ">
        <div class="bg-login">
<!--        <div class="content">
            <div class="row">
              <h1 class="text-center">Login</h1>
                <form class="form-horizontal" role="form" method="post" action="./LoginVerification">
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-3 control-label">
                      UserName</label>
                    <div class="col-sm-9">
                      <input type="text" name="username" class="form-control" id="inputUser" placeholder="UserName" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-3 control-label">
                      Password</label>
                    <div class="col-sm-9">
                      <input type="password" name="password" class="form-control" id="inputPsw" placeholder="Password" required>
                    </div>
                  </div>
                  <div class="form-group last">
                    <div class="col-sm-offset-3 col-sm-10">
                      <button type="submit" class="btn btn-success btn-lg">
                        Sign in</button>
                      <button type="reset" class="btn btn-default btn-lg">
                        Reset</button>
                    </div>
                  </div>
                </form>
            </div>
          </div>-->
          <div class="bg-boxes">
                        <svg width="300px" height="100%" id="col1">
              <rect width="150px" height="150px" x="75px" y="75px" class="bubble" id="bub1" />
            </svg>
            <svg width="200px" height="100%" id="col2">
              <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub2" />
            </svg>
            <svg width="260px" height="100%" id="col3">
                <rect width="130px" height="130px" x="65px" y="65px" class="bubble" id="bub3" />
            </svg>
            <svg width="160px" height="100%" id="col4">
                <rect width="80px" height="80px" x="40px" y="40px" class="bubble" id="bub4" />
            </svg>
            <svg width="240px" height="100%" id="col5">
                <rect width="120px" height="120px" x="60px" y="60px" class="bubble" id="bub5" />
            </svg>
            <!--Here is a triangle-->
            <svg width="200px" height="100%" id="col6">
                <polygon points="50,150 100,50 150,150" class="bubble" id="bub6" />
            </svg>
            <svg width="200px" height="100%" id="col7">
                <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub7" />
            </svg>
            <svg width="200px" height="100%" id="col8">
                <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub8" />
            </svg>
            <svg width="200px" height="100%" id="col9">
                <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub9" />
            </svg>
            <svg width="200px" height="100%" id="col10">
                <rect width="100px" height="100px" x="50px" y="50px" class="bubble" id="bub10" />
            </svg>
            <svg width="100px" height="100%" id="col11">
                <rect width="50px" height="50px" x="25px" y="25px" class="bubble" id="bub11" />
            </svg>
          </div>
        </div>
        <div class="pen-title">
            <h1 style="color: white">Hostel Management</h1>
        </div>
        <div class="container">
          <div class="card"></div>
          <div class="card">
            <h1 class="title">Login</h1>
            <form role="form" method="post" action="./LoginVerification">
              <div class="input-container">
                <input type="text" name="username" id="Username" required="required"/>
                <label for="Username">Username</label>
                <div class="bar"></div>
              </div>
              <div class="input-container">
                <input type="password" name="password" id="Password" required="required"/>
                <label for="Password">Password</label>
                <div class="bar"></div>
              </div>
              <div class="button-container">
                <button><span>Go</span></button>
              </div>
<!--              <div class="footer"><a href="#">Forgot your password?</a></div>-->
            </form>
          </div>
          <div class="card alt">
            <div class="toggle"></div>
            <h1 class="title">How to Login?
             
            </h1>
            <div class="input-container">
                <h4>Username: your Acid ID</h4><br>
                <h4>Password: your matric card no.</h4>
            </div>
           
          </div>
        </div>
        
    </body>
</html>
