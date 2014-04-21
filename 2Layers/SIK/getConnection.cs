using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.OleDb;

namespace SIK
{
    public class getConnection
    {

        public static OleDbConnection openConnection()
        {            
            //string strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|SIK.mdb";
            string strConn = ConfigurationManager.ConnectionStrings["SIKServices"].ConnectionString;
            OleDbConnection conn = new OleDbConnection(strConn);
            return conn;
        }

    }
}