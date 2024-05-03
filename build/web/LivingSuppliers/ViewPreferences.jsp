
<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeHeader.jsp" %>
<!-- HEADER ONE ENDS-->
          <style>
        .container {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        .container th,
        .container td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd; /* Border color */
        }

        .container th {
            background-color: #f2f2f2; /* Header background color */
        }

        .container tr:nth-child(even) {
            background-color: #f9f9f9; /* Even row background color */
        }

        .container tr:hover {
            background-color: #f2f2f2; /* Hover row background color */
        }
    </style>
    <form name="Form1" method="POST"> 
        <!-- Start Breadcrumbs -->
<div class="fables-light-background-color ">
    <div class="container"> 
        <nav aria-label="breadcrumb">
            <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                <li class="breadcrumb-item text-center">
                    <h3 class="font-35 font-weight-bold fables-main-text-color text-danger">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        
                        Preferences from Vandals
                    </h3>
                    
                </li>
            </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
        <div align="center" >  
            <div align="center" style="margin-top: 50px; margin-bottom: 50px;">  
            <table class="container" border="1">
                

                <tr >
                    <th>Preference ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Vandal Number</th>
                    <th>Cell Number</th>
                    <th>Email</th>
                    <th>Apartment Type</th>
                    <th>Location</th>
                    <th>Distance</th>
                    <th>Approximate Rate</th>
                    <th>Mess Status</th>
                    <th>No Vandals</th>
                    <th>Other</th>                    
                </tr>

         
                
                
                <%
                    String URLorderCategoryID=request.getParameter("orderCategoryID");
                    String profilePicture="";
                    String querySelect="select "
                    + "a.*,b.* " 
                    + " FROM "
                    + "preference a,"
                            + "vandaldetails b "
                            + "WHERE a.vandalID=b.vandalID";

                    System.out.println("querySelect:>>>>> "+querySelect);
                    //String querySelect="select * from tbl_product_order ";//a where (select DATEDIFF('"+currentDate+"','a.expireDate') AS diff1)<=0";
                    ResultSet rs=obj.select(querySelect);
                    while(rs.next())
                    {
                        //profilePicture=rs.getString("profilePicture");
                %>

                <tr>
                    <td ><%=rs.getString("preferenceID")%></td>     
                   <td><%= rs.getString("firstName") %></td>
                    <td><%= rs.getString("lastName") %></td>
                    <td><%= rs.getString("vandalNumber") %></td>
                    <td><%= rs.getString("cellNumber") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%=rs.getString("apartmentType")%></td>

                    <td><%=rs.getString("location")%></td>
                    <td><%=rs.getString("distance")%></td>
                    <td><%=rs.getString("approximateRate")%></td>
                    
                    <td><%=rs.getString("messStatus")%></td>
                    <td><%=rs.getString("noVandals")%></td>
                    <td><%=rs.getString("other")%></td>
                    
                    
                </tr>

                <%
                   }
                %>

            </table>
        </div>           
    </form>
 
<!-- HEADER ONE STARTS-->
<%@include file="LivingSuppliersHomeFooter.jsp" %>
<!-- HEADER ONE ENDS-->          