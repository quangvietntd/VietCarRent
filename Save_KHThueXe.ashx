<%@ WebHandler Language="C#" Class="Save" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DHTMLX.Common;
 
using System.Globalization;
 

public class Save : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/xml";// the data is passed in XML format
        var action = new DataAction(context.Request.Form);
        var data = new LinQtoSQLDataContext();

        try
        {
            var changedEvent = (Thue_Xe)DHXEventsHelper.Bind(typeof(Thue_Xe), context.Request.Form);//see details below

            switch (action.Type)
            {
                case DataActionTypes.Insert: // your Insert logic
                    
                    data.Thue_Xes.InsertOnSubmit(changedEvent); 
                    break;
              /*  case DataActionTypes.Delete: // your Delete logic
                    changedEvent = data.Thue_Xes.SingleOrDefault(ev => ev.id == action.SourceId);
                    data.Thue_Xes.DeleteOnSubmit(changedEvent);
                    break;
                default:// "update" // your Update logic
                    var updated = data.Thue_Xes.SingleOrDefault(ev => ev.id == action.SourceId);
                    DHXEventsHelper.Update(updated, changedEvent, new List<string>() { "id" });// see details below
                    break; */
                default: break;
            }
            data.SubmitChanges();
            action.TargetId = changedEvent.id;
        }
        catch (Exception a)
        {
            action.Type = DataActionTypes.Error;
        }

        context.Response.Write(new AjaxSaveResponse(action).ToString());
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}