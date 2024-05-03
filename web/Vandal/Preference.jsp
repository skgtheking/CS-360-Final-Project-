<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<%

    
String apartmentType = "";
String location = "";
String distance = "";
String approximateRate = "";
String messStatus = "";
String noVandals = "";
String other = "";

String profilePicture = "";
if (SSNvandalID != null) 
{
    String querySelect1 = "select * from vandaldetails where vandalID='"+SSNvandalID+"'";
    ResultSet rs1 = obj.select(querySelect1);
    while (rs1.next()) 
    {       
        profilePicture=rs1.getString("profilePicture");
    }
}
 
if(request.getParameter("buttonSubmit")!=null) 
{
    apartmentType = request.getParameter("apartmentType");
    location = request.getParameter("location");
    distance = request.getParameter("distance");
    approximateRate = request.getParameter("approximateRate");
    messStatus = request.getParameter("messStatus");
    noVandals = request.getParameter("noVandals");
    other = request.getParameter("other");


// Creating the insert query
String queryInsert = "INSERT INTO preference (vandalID,apartmentType, location, distance, approximateRate, messStatus, noVandals, other) VALUES ('"
        + SSNvandalID + "', '"
        + apartmentType + "', '"
        + location + "', '"
        + distance + "', '"
        + approximateRate + "', '"
        + messStatus + "', '"
        + noVandals + "', '"
        + other + "')";

// Now you can use this query to insert into your database
System.out.println("Insert Query: " + queryInsert);

     obj.executeCommand(queryInsert); //Reload the same page or refresh the same page
    System.out.println(queryInsert);
    response.sendRedirect("VandalHomePage.jsp");
}
     

%>
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Preference
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
            
<form action="" method="POST">
    <div class="form-group row">
        <label for="apartmentType" class="col-sm-4 col-form-label">Apartment Type</label>
        <div class="col-sm-8">
            <select  name="apartmentType" style="width: 350px; height: 55px; background-color:  white">
            <option value="Residence">Residence </option>
            <option value="Apartment">Apartment</option>
          </select>
        </div>
    </div>

    <div class="form-group row">
        <label for="location" class="col-sm-4 col-form-label">Location</label>
        <div class="col-sm-8">
            <input type="text" class="form-control" id="location" name="location" required>
        </div>
    </div>

    <div class="form-group row">
        <label for="distance" class="col-sm-4 col-form-label">Distance from University</label>
        <div class="col-sm-8">
           <select  name="distance" style="width: 350px; height: 55px; background-color:  white">
            <option value="1 Mile">1 Mile</option>
            <option value="2 Mile">2 Mile</option>
            <option value="3 Mile">3 Mile</option>
            <option value="5 Mile">5 Mile</option>
            <option value="7 Mile">7 Mile</option>
            <option value="10 Mile">10 Mile</option>
          </select>
        </div>
    </div>
    
    <div class="form-group row">
        <label for="approximateRate" class="col-sm-4 col-form-label">Approximate Rate Per Semester</label>
        <div class="col-sm-8">
            <input type="number" class="form-control" id="approximateRate" name="approximateRate" required>
        </div>
    </div>

    <div class="form-group row">
        <label for="messStatus" class="col-sm-4 col-form-label">Mess Status</label>
        <div class="col-sm-8">
           <select  name="messStatus" style="width: 350px; height: 55px; background-color:  white">
            <option value="With  Mess">With  Mess</option>
            <option value="Without Mess">Without Mess</option>
          </select>
        </div>
         
    </div>

    

    <div class="form-group row">
        <label for="noVandals" class="col-sm-4 col-form-label">No. of Vandals Can Occupy</label>
        <div class="col-sm-8">
            <input type="number" class="form-control" id="noVandals" name="noVandals" required>
        </div>
    </div>
    <div class="form-group row">
        <label for="other" class="col-sm-4 col-form-label">Any other Preferences</label>
        <div class="col-sm-8">
            <textarea id="other" name="other" rows="4" cols="50"></textarea>
        </div>
    </div>

              <div class="form-group row">
                <div class="col-sm-4"></div>
                <div class="col-sm-8">
                  <button type="reset" class="btn btn-primary" name="buttonReset">Reset</button>
                  <button type="submit" class="btn btn-primary" name="buttonSubmit">Submit</button>
                  <input type="hidden" name="hiddenID" value="<%=SSNvandalID%>">
                </div>
              </div>
            </form>



        </div>
    
        <!-- Added for Display Side Image and Text-->
        <div class="col-12 col-sm-6 wow fadeInRight">
            <div class="signup-info text-center">
                <h5 class="font-35 font-weight-bold text-black text-uppercase">
                    <%=SSNvandalName%>
                </h5>
                <br>
                <img src='ProfilePictures/<%=profilePicture%>' width="60%" height="60%"> 
                <br>
                <br>
                <p class="font-14 font-weight-bold fables-main-text-color text-danger">                   
                    Note
                </p>
                <p class="text-center mt-3">        
                    Preferences
                </p>
            </div>
        </div>

    </div>        
</div> 
<!-- /End page content -->
 
<!-- HEADER ONE STARTS-->
<%@include file="VandalHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->