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
    public partial class Default : System.Web.UI.Page
    {

        OleDbCommand cmd = null;
        OleDbConnection conn = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = getConnection.openConnection();
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql = "INSERT INTO T_MHS (X,XX,XXX,XXXX) VALUES ('" + txtName.Text + "','" + txtAddress.Text + "','" + txtLocal.Text + "','" + txtRemarks.Text + "')";
            cmd = new OleDbCommand(sql,conn);
            cmd.ExecuteNonQuery();

            txtName.Text = "";
            txtAddress.Text = "";
            txtLocal.Text = "";
            txtRemarks.Text = "";

        }
    }
}