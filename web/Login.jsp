<%-- 
    Document   : Login
    Created on : Oct 17, 2017, 1:01:34 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/css.css" rel="stylesheet" type="text/css"/>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <form action="noithatServlet" method="get" class="form-horizontal">
                <h1 style="margin-left: 195px; margin-bottom: 20px; margin-top: 100px;">Login</h1>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="id">ID:</label>
                    <div class="col-sm-10">
                        <input type="text" name="id" class="form-control" placeholder="Enter ID">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Password:</label>
                    <div class="col-sm-10"> 
                        <input type="password" class="form-control" name="password" placeholder="Enter password">
                    </div>
                </div>
                <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox" name='check'> Remember me</label>
                        </div>
                    </div>
                </div>
                <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-info btn-lg" name="action" value="login">Login</button>
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Register</button>
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">Forgot password</button>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Register</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="id">ID:</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="newid" class="form-control" placeholder="Enter new ID">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="pwd">Password:</label>
                                                <div class="col-sm-9"> 
                                                    <input type="password" class="form-control" name="password1" placeholder="Enter password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="pwd">Confirm Password:</label>
                                                <div class="col-sm-9"> 
                                                    <input type="password" class="form-control" name="password2" placeholder="Confirm password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="pwd">Email:</label>
                                                <div class="col-sm-9"> 
                                                    <input type="email" class="form-control" name="email" placeholder="Enter email">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="pwd">Telephone number:</label>
                                                <div class="col-sm-9"> 
                                                    <input type="number" class="form-control" name="phone" placeholder="Enter phone number">
                                                </div>
                                            </div>
                                            <i><input type="checkbox" style="margin-left: 150px;">I'm not a robot</label></i>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-default" name="action" value="register">Register</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                            
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal2" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Forgot password</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="id">ID:</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="id2" class="form-control" placeholder="Enter ID">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="pwd">Password:</label>
                                                <div class="col-sm-9"> 
                                                    <input type="password" class="form-control" name="newpassword" placeholder="Enter new password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="pwd">Confirm Password:</label>
                                                <div class="col-sm-9"> 
                                                    <input type="password" class="form-control" name="confirmpassword" placeholder="Confirm password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3" for="pwd">Email or Telephone number:</label>
                                                <div class="col-sm-9"> 
                                                    <input type="text" class="form-control" name="pass2" placeholder="Enter email or phone number">
                                                </div>
                                            </div>  
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-default" name="action" value="forgotpass">Save change</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                            
                        </div> 
                    </div>
                </div>
        </div>
    </form>
</body>
</html>
