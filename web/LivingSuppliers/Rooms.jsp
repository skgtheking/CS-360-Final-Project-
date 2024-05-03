<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
     
<!-- Start Breadcrumbs -->

<%
    String livingSpaceID = request.getParameter("livingSpaceID");
    String livingSpaceName = request.getParameter("livingSpaceName");
%>

<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
                        Insert amenities of <%=livingSpaceName%> (ID: <%=livingSpaceID%>)
                    </h3>
                    
                </li>
            </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
     
<!-- Start page content --> 
<div class="col-12 col-md-12 offset-md-1 mt-12" > 
    <div class="row overflow-hidden">
        <div class="col-12 col-md-10 offset-md-1 mt-5">                    
          <!-- Added for a Top Space -->                      
        </div>
    </div>        

    <div class="row mb-4 mb-md-12 overflow-hidden"> 
        <div class="col-12 col-sm-5 wow fadeInLeft">
            <form class="fables-contact-form" action="RoomsPictureUpload.jsp" enctype="multipart/form-data" method="post">    
                <table class="custom-table">
                   <tr>
                        <td><label for="roomNumber">Room Number/Name:</label></td>
                        <td><input type="text" id="roomNumber" name="roomNumber"></td>
                    </tr>
                    <tr>
                        <td><label for="floorPlanID">Select Floor: </label></td>                        
                        <td>
                           <select name="floorPlanID" >
                                <option value="">--------Select--------</option> 
                                <%String sel="select * from floorplan WHERE livingSpaceID="+livingSpaceID;
                                ResultSet rs0=obj.select(sel);
                                while (rs0.next())
                                {                                                                                            
                                %>
                                    <option value="<%=rs0.getString("floorPlanID")%>">
                                    <%=rs0.getString("floorName")%></option> 
                                <%}%>                            
                            </select>
                        </td>                                  
                    </tr>
                    <tr>
                        <td><label for="noVandalsCanOccupy">Number of Vandals Can Occupy:</label></td>
                        <td><input type="text" id="noVandalsCanOccupy" name="noVandalsCanOccupy"></td>
                    </tr>
                   <tr>
                        <td><label for="roomDescription">Room Facilities:</label></td>
                        <td><textarea id="description" name="roomDescription" rows="4" cols="50"></textarea></td>
                    </tr>
                    <tr>
                        <td><label for="roomImage">Room Image:</label></td>
                        <td><input type="file" id="featureIcon" name="roomImage"></td>
                    </tr>
                    <tr>
                        <td>
                           <button type="reset" class="custom-button">Cancel</button>
                        </td>
                        <td>
                            <button type="submit" class="custom-button">Save & Continue</button>
                        </td>
                    </tr>
                    <input type="hidden" id="hid" name="hid" value="<%=livingSpaceID%>">
                    <input type="hidden" id="hid2" name="hid2" value="<%=livingSpaceName%>">
                </table>
            </form>
        </div>
        
        <!-- Added for Display Side Living Area and Details-->
        <div class="col-12 col-sm-7 wow fadeInRight">
            <%            
            String querySelect="select *"
            + " from livingspace Where livingSpaceID='"+livingSpaceID+"'"; 
            ResultSet rs=obj.select(querySelect);                                    
            while(rs.next())
            {           

            %>
            <table width="650" border="0">
                <tr>
                    <td>
                        <img src='LivingImages\<%=rs.getString("iconImage")%>' width="350" height="250" > 
                    </td>
                    <td style="padding: 10px;">
                        <table height="250" width="300">
                            <tr>
                                <td>
                                     ID: 
                                </td>
                                <td>
                                     <%=rs.getString("livingSpaceID")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     Name: 
                                </td>
                                <td>
                                     <%=rs.getString("livingSpaceName")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Location: 
                                </td>
                                <td>
                                   <%=rs.getString("location")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Type: 
                                </td>
                                <td>
                                    <%=rs.getString("type")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Rate:  
                                </td>
                                <td>
                                    $ <%=rs.getString("ratePerSemester")%>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>                
            </table>               
            <%
            }
            %> 
        </div>
        
    </div>        
</div>       
<!-- /End page content -->

<!-- Start Display content --> 
<div class="container">
     <div class="row my-4 my-md-5">           
           <div class="col-12 col-md-8 col-lg-9"> 
                <div class="row mb-4">
                    <div class="fables-light-background-color col-12">
                        <h2>Room of <%=livingSpaceName%> (ID: <%=livingSpaceID%>)</h2>
                    </div>
                </div>
                <div class="row">

                    <%
                    String querySelect2="select *"
                    + " from rooms WHERE livingSpaceID='"+livingSpaceID+"'"; 
                    ResultSet rs2=obj.select(querySelect2);                                    
                    while(rs2.next())
                    {                    
                    %>
                       <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                           <div class="card rounded-0 mb-4">
                               <div class="row">
                                   <div class="fables-product-img col-12"> 
                                      <img class="card-img-top rounded-0" src='RoomImages\<%=rs2.getString("roomImages")%>' width="200" height="200" alt="dress fashion">
                                      <div class="fables-img-overlay">                                          
                                          <ul class="nav fables-product-btns">
                                              <li><a href="" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>                                             
                                          </ul>
                                      </div>
                                  </div>
                                  <div class="card-body col-12">
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color">Room No: <%=rs2.getString("roomNumber")%></a>
                                    </h5>
                                    <h5 class="card-title mx-xl-3" style="text-align: center;">
                                        <a href="#" class="fables-main-text-color fables-store-product-title fables-second-hover-color"><%=rs2.getString("noVandalsCanOccupy")%> Vandals can occupy</a>
                                    </h5>
                                    
                                    <p class="fables-product-info">
                                        <a href="DeleteRooms.jsp?flag=1&livingSpaceRoomID=<%=rs2.getString("roomID")%> &roomNumber=<%=rs2.getString("roomNumber")%> &livingSpaceID=<%=livingSpaceID%> &livingSpaceName=<%=livingSpaceName%>  " class="btn fables-second-border-color fables-second-text-color fables-btn-rouned fables-hover-btn-color font-14 p-2 px-2 px-xl-4">
                                            <span class="fables-iconToDelete">  <i class="fas fa-trash-alt"></i> </span> 
                                            <span class="fables-btn-value">DELETE</span>
                                        </a>
                                    </p>
                                  </div>
                               </div>
                            </div>
                       </div>
                    <%
                    }
                    %>      
                    
                </div> 

                 <nav aria-label="Page navigation">
                   <ul class="pagination justify-content-center">                                 
                     <li class="page-item"><a class="page-link rounded-circle fables-forth-text-color fables-page-link fables-second-hover-background-color" href="#">1</a></li>
                     <li class="page-item"><a class="page-link rounded-circle fables-forth-text-color fables-page-link fables-second-hover-background-color" href="#">2</a></li>
                     <li class="page-item"><a class="page-link rounded-circle fables-forth-text-color fables-page-link fables-page-link fables-second-hover-background-color" href="#">3</a></li>  
                     <li><span class="fables-pagi-dots fables-forth-text-color"> .... </span></li>
                     <li class="page-item"><a class="page-link rounded-circle fables-forth-text-color fables-page-link fables-second-hover-background-color" href="#">20</a></li>                                
                   </ul>
                 </nav> 
           </div>
     </div>
</div> 
<!-- /End page content --> 
<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->