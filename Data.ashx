<%@ WebHandler Language="C#" Class="Data" %>

using System;
using System.Web;
using DHTMLX.Scheduler.Data;

public class Data : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/json";
        var events = (new LinQtoSQLDataContext()).Thue_Xes;
        context.Response.Write(new SchedulerAjaxData(events).ToString());
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}