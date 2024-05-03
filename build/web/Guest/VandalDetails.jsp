<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#password2").keyup(validatePassword);
    });

    function validatePassword() {
        var password = $("#password").val().trim();
        var confirmPassword = $("#password2").val().trim();
        var errorContainer = $("#VandalDetails");

        if (password !== confirmPassword) {
            errorContainer.html("Passwords do not match");
        } else {
            errorContainer.html("");
        }
    }
</script>


<!-- HEADER ONE STARTS-->
<%@include file="GuestHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Sign-Up
                    </h3>
                    
                </li>
            </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
     
<!-- Start page content --> 
<div class="container"> 
    <div class="row overflow-hidden">
        <div class="col-12 col-md-10 offset-md-1 mt-5">                    
          <!-- Added for a Top Space -->                      
        </div>
    </div>        

    <div class="row mb-4 mb-md-5 overflow-hidden">
        <div class="col-12 col-sm-6 wow fadeInLeft">
            <form class="fables-contact-form" action="VandalDetailsProfilePictureUpload.jsp" enctype="multipart/form-data" method="post">
                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">First Name</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control rounded-0 p-3" name="firstName" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Last Name</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control rounded-0 p-3" name="lastName" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Vandal Number</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control rounded-0 p-3" name="vandalNumber">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Cell Number</label>
                  <div class="col-sm-8">
                    <input type="number" class="form-control rounded-0 p-3" name="cellNumber" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Email ID</label>
                  <div class="col-sm-8">
                    <input type="email" class="form-control rounded-0 p-3" name="email" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Date of Birth</label>
                  <div class="col-sm-8">
                    <input type="date" class="form-control rounded-0 p-3" name="dateOfBirth">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Gender</label>
                  <div class="col-sm-8">
                    <div>
                      <input type="radio" name="gender" value="Male" checked="">
                      <label>Male</label>
                    </div>
                    <div>
                      <input type="radio" name="gender" value="Female">
                      <label>Female</label>
                    </div>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Classification</label>
                  <div class="col-sm-8">
                    <select  name="classification" style="width: 350px; height: 55px; background-color:  white">
                      <option value="First Year">First Year</option>
                      <option value="Non-First Year">Non-First Year</option>
                      <option value="Other">Other</option>
                    </select>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Username</label>
                  <div class="col-sm-8">
                    <input type="text" class="form-control rounded-0 p-3" name="userName" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Password</label>
                  <div class="col-sm-8">
                    <input type="password" id="password"class="form-control rounded-0 p-3" name="password" required="">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-4 col-form-label">Re-enter Password</label>
                  <div class="col-sm-8">
                    <input type="password" id="password2" class="form-control rounded-0 p-3" name="password2" required="">
                  </div>
                </div>
                
                <div id="VandalDetails" style="color: red;"></div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Profile Image</label>
                    <div class="col-sm-8">
                        <input type="file" class="form-control rounded-0 p-3" name="profilePicture" required="">
                    </div>
                </div>
                  <button type="submit" class="btn fables-second-background-color rounded-0 text-white btn-block p-3" name="buttonSubmit">Submit</button>
            </form>
        </div>
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-6 wow fadeInRight">
            <div class="signup-info">
                <img src="assets/custom/images/Side1.jpg" alt="Signup Image" class="img-fluid">
                <p class="text-center mt-3">
                  Welcome to our platform! Sign up now to join our community and unlock exclusive features. 
                  Get started on your journey with us today.
                </p>
            </div>
        </div>
    </div>        
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="GuestHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->