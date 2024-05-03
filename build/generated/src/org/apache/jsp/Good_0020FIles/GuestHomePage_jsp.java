package org.apache.jsp.Good_0020FIles;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class GuestHomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Good FIles/GuestHomeHeader.jsp");
    _jspx_dependants.add("/Good FIles/GuestHomeFooter.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!-- HEADER ONE STARTS-->\n");
      out.write("<link rel=\"stylesheet\" href=\"../StyleFolder/MyStyles.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <title>Idaho Vandal Living</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link href=\"../TemplateStyleFiles/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <!--Google Fonts-->\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Belgrano|Courgette&subset=latin,latin-ext' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("        <!--Bootshape-->\n");
      out.write("    <link href=\"../TemplateStyleFiles/css/bootshape.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <!-- Navigation bar -->\n");
      out.write("    <div class=\"navbar navbar-default navbar-fixed-top\" role=\"navigation\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("          <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("          <a class=\"navbar-brand\" href=\"#\">Idaho Vandal Living</a>\n");
      out.write("        </div>\n");
      out.write("        <nav role=\"navigation\" class=\"collapse navbar-collapse navbar-right\">\n");
      out.write("            \n");
      out.write("            <ul class=\"navbar-nav nav\">\n");
      out.write("                <li class=\"active\"><a href=\"GuestHomePage.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"LoginPage.jsp\">Login</a></li>  \n");
      out.write("                \n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                  <a data-toggle=\"dropdown\" href=\"#\" class=\"dropdown-toggle\">Sign Up <b class=\"caret\"></b></a>\n");
      out.write("                  <ul class=\"dropdown-menu\">\n");
      out.write("                      <li class=\"active\"><a href=\"LivingSUppliersDetails.jsp\">Living Suppliers</a></li>\n");
      out.write("                    <li class=\"divider\"></li>\n");
      out.write("                    <li><a href=\"VandalDetails.jsp\">Vandals</a></li>\n");
      out.write("                  </ul>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                  <a data-toggle=\"dropdown\" href=\"#\" class=\"dropdown-toggle\">Living Resources <b class=\"caret\"></b></a>\n");
      out.write("                  <ul class=\"dropdown-menu\">\n");
      out.write("                    <li class=\"active\"><a href=\"AddLivingApartment.jsp\">Add Living Area</a></li>\n");
      out.write("                    <li class=\"divider\"> </li>\n");
      out.write("                    <li><a href=\"AddLivingApartmentFeatures.jsp\">Add Features</a></li>\n");
      out.write("                    <li><a href=\"AddLivingApartmentImages.jsp\">Gallery Update</a></li>\n");
      out.write("                    <li><a href=\"AddLivingApartmentBedAdding.jsp\">Tower Bed Attach</a></li> \n");
      out.write("                    <li><a href=\"AddLivingApartmentFloorPlan.jsp\">Floor Plan</a></li>\n");
      out.write("                    <li><a href=\"AddLivingApartmentMealPlan.jsp\">Meal Plan </a></li>\n");
      out.write("                    <li><a href=\"AddLivingApartmentParking.jsp\">Parking Facility</a></li>\n");
      out.write("                  </ul>\n");
      out.write("                </li>\n");
      out.write("                 <li class=\"dropdown\">\n");
      out.write("                  <a data-toggle=\"dropdown\" href=\"#\" class=\"dropdown-toggle\">Vandal Activities <b class=\"caret\"></b></a>\n");
      out.write("                  <ul class=\"dropdown-menu\">\n");
      out.write("                    <li class=\"active\"><a href=\"ApartmentBookingOneVandalDetails.jsp\">Apartment Booking</a></li>\n");
      out.write("                    <li class=\"divider\"> </li>\n");
      out.write("                    <li><a href=\"ApartmentBookingOneVandalDetails.jsp\">Room Booking</a></li>\n");
      out.write("\n");
      out.write("                  </ul>\n");
      out.write("                </li>\n");
      out.write("                <li><a href=\"Contacts.jsp\">Contacts</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("      </div>\n");
      out.write("    </div><!-- End Navigation bar -->\n");
      out.write("\n");
      out.write("<!-- HEADER ONE ENDS-->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Slide gallery -->\n");
      out.write("    <div class=\"jumbotron\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"col-xs-12\">\n");
      out.write("        <div id=\"carousel-example-generic\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("          <!-- Indicators -->\n");
      out.write("          <ol class=\"carousel-indicators\">\n");
      out.write("            <li data-target=\"#carousel-example-generic\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("            <li data-target=\"#carousel-example-generic\" data-slide-to=\"1\"></li>\n");
      out.write("            <li data-target=\"#carousel-example-generic\" data-slide-to=\"2\"></li>\n");
      out.write("          </ol>\n");
      out.write("          <!-- Wrapper for slides -->\n");
      out.write("          <div class=\"carousel-inner\">\n");
      out.write("            <div class=\"item active\">\n");
      out.write("              <img src=\"../TemplateStyleFiles/img/carousel1.jpg\" alt=\"\">\n");
      out.write("              <div class=\"carousel-caption\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"item\">\n");
      out.write("              <img src=\"../TemplateStyleFiles/img/carousel2.jpg\" alt=\"\">\n");
      out.write("              <div class=\"carousel-caption\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"item\">\n");
      out.write("              <img src=\"../TemplateStyleFiles/img/carousel3.jpg\" alt=\"\">\n");
      out.write("              <div class=\"carousel-caption\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- Controls -->\n");
      out.write("          <a class=\"left carousel-control\" href=\"#carousel-example-generic\" data-slide=\"prev\">\n");
      out.write("            <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("          </a>\n");
      out.write("          <a class=\"right carousel-control\" href=\"#carousel-example-generic\" data-slide=\"next\">\n");
      out.write("            <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("          </a>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("      </div><!-- End Slide gallery -->\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Thumbnails -->\n");
      out.write("    <div class=\"container thumbs\">\n");
      out.write("      <div class=\"col-sm-6 col-md-4\">\n");
      out.write("        <div class=\"thumbnail\">\n");
      out.write("          <img src=\"../TemplateStyleFiles/img/pic1.jpg\" alt=\"\" class=\"img-responsive\">\n");
      out.write("          <div class=\"caption\">\n");
      out.write("            <h3 class=\"\">Engage </h3>\n");
      out.write("            <p class=\"Justi\">\n");
      out.write("Our dynamic residence halls are designed to promote student learning with positive social interactions. You will have unique opportunities to engage with fellow students, make new friends and discover new interests. Have the ultimate ?college experience? right outside your door.            </p>\n");
      out.write("            <div class=\"btn-toolbar text-center\">\n");
      out.write("              <a href=\"#\" role=\"button\" class=\"btn btn-primary pull-right\">Details</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-sm-6 col-md-4\">\n");
      out.write("        <div class=\"thumbnail\">\n");
      out.write("          <img src=\"../TemplateStyleFiles/img/pic2.jpg\" alt=\"\" class=\"img-responsive\">\n");
      out.write("          <div class=\"caption\">\n");
      out.write("            <h3 class=\"\">Thrive </h3>\n");
      out.write("            <p class=\"Justi\">\n");
      out.write("A welcoming atmosphere provides a place for you to feel connected and immerse yourself in student life. Meet new friends exploring the Arboretum, working out at the Student Rec Center or attending an RHA event. There is never a dull moment as a Vandal.            </p>\n");
      out.write("            <div class=\"btn-toolbar text-center\">\n");
      out.write("              <a href=\"#\" role=\"button\" class=\"btn btn-primary pull-right\">Details</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-sm-6 col-md-4\">\n");
      out.write("        <div class=\"thumbnail\">\n");
      out.write("          <img src=\"../TemplateStyleFiles/img/pic3.jpg\" alt=\"\" class=\"img-responsive\">\n");
      out.write("          <div class=\"caption\">\n");
      out.write("            <h3 class=\"\">Succeed </h3>\n");
      out.write("            <p class=\"Justi\">\n");
      out.write("Academic Peer Mentors are available to provide personalized academic support through our Student Success Program. Resident Assistants create opportunities to interact within the community to encourage personal relationships. Our residential support network will ensure you have all the tools needed to be successful in your academic career.            </p>\n");
      out.write("            <div class=\"btn-toolbar text-center\">\n");
      out.write("              <a href=\"#\" role=\"button\" class=\"btn btn-primary pull-right\">Details</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div><!-- End Thumbnails -->\n");
      out.write("    <!-- Content -->\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"\">\n");
      out.write("        <h3 class=\"\">Welcome Vandals!</h3>\n");
      out.write("        <p>\n");
      out.write("Housing and Residence Life is excited to welcome you to Vandal Living! At Vandal Living we aim to offer you a place to engage, thrive and succeed while getting the ultimate student experience.        </p>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("          <h3 class=\"\">About</h3>\n");
      out.write("          <img src=\"../TemplateStyleFiles/img/about.jpg\" alt=\"\" class=\"img-responsive\">\n");
      out.write("          <br>\n");
      out.write("          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries. Lorem Ipsum is simply dummy text of.</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-4\">\n");
      out.write("          <h3 class=\"\">News & Events</h3>\n");
      out.write("          <div class=\"event\">\n");
      out.write("            <div class=\"text-right date\">01/22/2023</div>\n");
      out.write("            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industr y. Lorem Ipsum has been the industry's standard dummy text ever since the 1500.</p>\n");
      out.write("            <div class=\"text-right\">\n");
      out.write("              <a href=\"#\">See more...</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"event\">\n");
      out.write("            <div class=\"text-right date\">01/22/2023</div>\n");
      out.write("            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industr y. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>\n");
      out.write("            <div class=\"text-right\">\n");
      out.write("              <a href=\"#\">See more...</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"event\">\n");
      out.write("            <div class=\"text-right date\">01/22/2023</div>\n");
      out.write("            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industr y. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>\n");
      out.write("            <div class=\"text-right\">\n");
      out.write("              <a href=\"#\">See more...</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div><!-- End Content -->\n");
      out.write("    \n");
      out.write("    \n");
      out.write("<!-- HEADER ONE STARTS-->\n");
      out.write("\n");
      out.write("    <!-- Footer -->\n");
      out.write("    <div class=\"footer text-center\">\n");
      out.write("        <p>&copy; 2023 Idaho Living. Contact: +123456 <a href=\"http://JK.com\">jayakrishna@gmail.com</a></p>\n");
      out.write("    </div><!-- End Footer -->\n");
      out.write("\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("    <script src=\"../TemplateStyleFiles/js/jquery.js\"></script>\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("    <script src=\"../TemplateStyleFiles/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../TemplateStyleFiles/js/bootshape.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!-- HEADER ONE ENDS-->\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
