<body>
  <div class="page-holder">
    <div class="container">
      <div class="col-lg-6 " style="margin: 100px auto;">
        <div class="card mb-4" id="forms">
          <div class="card-header">Sign In</div>
          <div class="card-body">
            <form action="/signin" method="POST">
              <fieldset>
                <legend>Sign In</legend>
                <div class="form-group">
                  <label for="Email">Email Address</label>
                  <input class="form-control" id="usreml" name="usreml" type="text" placeholder="Enter Email">
                </div>
                <div class="form-group">
                  <label for="Password">Password</label>
                  <input class="form-control" id="usrpasswrd" name="usrpasswrd" type="password" placeholder="Password">
                </div>

        

                <!--div class="form-check form-group">
                <input class="form-check-input" id="checkbox-1" type="checkbox">
                <label class="form-check-label" for="checkbox-1">Check me out</label>
              </div-->
                <!-- validation message area-->
                <?php if(isset($validation)): ?>
                  <div class="col-12">
                    <div class="alert alert-danger" role="alert">
                      <?=  $validation->listErrors(); ?>
                    </div>
                  </div>

                <?php endif; ?>


                <input  class="btn btn-info" type="submit" value="Sign In"/>
                <div class="form-group" style="text-align: right;">
                  <a href="/signup" class="text-info"><small>create a new account</small></a>
                </div>
              </fieldset>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body

