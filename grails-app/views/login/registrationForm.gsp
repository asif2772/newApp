<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <g:external dir="assets" file="application.min.css" />
    <g:external dir="assets" file="bootstrap-timepicker.css" />
    <g:external dir="assets" file="bootstrap-timepicker.min.css" />
    <g:external dir="assets" file="bootstrap-timepicker.js" />
    <g:external dir="assets" file="bootstrap-timepicker.min.js" />
    <g:external dir="assets" file="application.js" />
    <g:external dir="assets" file="bootstrap.min.js" />

</head>
<body>
<div class="signup-form">
    <form action="createUser" method="post">
        <h2>Register</h2>
        <p class="hint-text">Create your account. It's free and only takes a minute.</p>
        <div class="form-group">
            <div class="row">
                <div class="col-xs-6"><input type="text" class="form-control" name="firstName" placeholder="First Name" required="required"></div>
                <div class="col-xs-6"><input type="text" class="form-control" name="lastName" placeholder="Last Name" required="required"></div>
            </div>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="address" placeholder="Address" required="">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="phoneNo" placeholder="Phone no" required="">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="email" placeholder="Email" required="required">
        </div>
        <div class="form-group">
            <input type="text" value="${new Date()}" id="dateOfBirth" class="form-control" placeholder="Date of birth" name="dateOfBirth" required="required"/>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
        </div>

        <div class="form-group" style="text-align: center">
            <button type="submit" class="btn btn-primary">Register</button>
            <button type="text" ${createLink(controller: 'login', action: 'auth')} class="btn btn-worning">Cancel</button>
        </div>
    </form>
    <div class="text-center">Already have an account? <a href="#">Sign in</a></div>
</div>
</body>
</html>

<script type="text/javascript">
    $('#dateOfBirth').datetimepicker({
        format: 'yyyy-mm-dd'
    });
</script>