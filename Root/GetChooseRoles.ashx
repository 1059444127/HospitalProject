﻿<%@ WebHandler Language="C#" Class="GetChooseRoles" %>

using System;
using System.Web;

public class GetChooseRoles : IHttpHandler {
    private DataLayer sqlOperation = new DataLayer("sqlStr");
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string roles = getRoles(context);
        context.Response.Write(roles);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    private string getRoles(HttpContext context)
    {
        string sqlCommand = "SELECT role.Name FROM user,user2role,role WHERE user.Number=@number AND user.ID=user2role.User_ID AND user2role.Role_ID=role.ID";
        string Number = context.Request.QueryString["Number"];
        sqlOperation.AddParameterWithValue("@number", Number);
        string backString = "";
        MySql.Data.MySqlClient.MySqlDataReader reader = sqlOperation.ExecuteReader(sqlCommand);
        while (reader.Read())
        {
            backString += reader["Name"] + " ";
        }
        sqlOperation.Close();
        return backString;
    }

}