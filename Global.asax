<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">
     protected void Application_PreSendRequestHeaders()
    {
        Response.Headers.Set("Server","FooServer");
        Response.Headers.Remove("X-AspNet-Version"); //alternative to above solution
        Response.Headers.Remove("X-AspNetMvc-Version");
    }

    void Application_Start(object sender, EventArgs e)
    {

        RouteConfig.RegisterRoutes(RouteTable.Routes);
        RegisterRoutes(RouteTable.Routes);
    }


    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session["Admini"] = "";

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
     static void RegisterRoutes(RouteCollection routes)
    {
        routes.Ignore("{resource}.axd/{*pathInfo}");
        routes.Ignore("images/{*pathInfo}");
        routes.Ignore("include/{*pathInfo}");
    }

</script>
