using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


namespace SIK
{
    public partial class ViewData : System.Web.UI.Page
    {
        OleDbConnection conn = null;
        OleDbCommand cmd = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            conn = getConnection.openConnection();
            conn.Open();

            string sql = "SELECT * FROM T_MHS";
            OleDbDataAdapter da = new OleDbDataAdapter(sql, conn);

            DataSet ds = new DataSet();

            da.Fill(ds);


            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }
}