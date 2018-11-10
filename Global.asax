<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        // Code that runs on application startup
        Application.Lock();

        if (!System.IO.File.Exists(Server.MapPath("~/Dem.txt")))
            System.IO.File.WriteAllText(Server.MapPath("~/Dem.txt"), "0");

        Application["SoLuotTruyCap"] = int.Parse(System.IO.File.ReadAllText(Server.MapPath("~/Dem.txt")));

        Application.UnLock();
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
        //Session["giohang"] = null;
        Application["SoLuotTruyCap"] = (int)Application["SoLuotTruyCap"] + 1;

        System.IO.File.WriteAllText(Server.MapPath("~/Dem.txt"), Application["SoLuotTruyCap"].ToString());

        if (Application["SLOnline"] == null)
            Application["SLOnline"] = 1;
        else
            Application["SLOnline"] = (int)Application["SLOnline"] + 1;
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file
        Application["SLOnline"] = (int)Application["SLOnline"] - 1;
    }
       
</script>
