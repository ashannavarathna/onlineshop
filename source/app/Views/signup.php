<body>
  <div class="page-holder">
    <div class="container">
      <div class="col-lg-6 " style="margin: 100px auto;">
        <div class="card mb-4" id="forms">
          <div class="card-header">Sign Up</div>
          <div class="card-body">
            <form action="Users/userSignUp" method="POST">
              <fieldset>
                <legend>Sign Up</legend>
                <div class="form-group">
                  <label for="Name">Name</label>
                  <div class="row">
                    <div class="col"><input class="form-control " id="firstname" name="firstname" type="text" placeholder="Enter First Name"></div>
                    <div class="col"><input class="form-control " id="lastname" name="lastname" type="text" placeholder="Enter Last Name"></div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="Email">Email address</label>
                  <input class="form-control" id="useremail" name="useremail" type="email" placeholder="Enter Email">
                </div>
                <div class="form-group">
                  <label for="Password">Password</label>
                  <input class="form-control" id="usrpasswrd" name="usrpasswrd" type="password" placeholder="Password">
                </div>
                <input class="btn btn-success" type="submit" value="Sign Up" />
                <div class="form-group" style="text-align: right;">
                  <a href="/signin" class="text-info"><small>already have a account</small></a>
                </div>
              </fieldset>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body