using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AysMochiMacaron.User
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userId"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            


            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Payment_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "INSERT");
            cmd.Parameters.AddWithValue("@Name", name.Text.ToString());
            cmd.Parameters.AddWithValue("@CardNo", cardnumber.Text.ToString());
            cmd.Parameters.AddWithValue("@ExpiryDate", expirationdate.Text.ToString());
            cmd.Parameters.AddWithValue("@CvvNo", securitycode.Text.ToString());
            var check = cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            con.Close();









            lblMsg.Visible = true;
            lblMsg.Text = "Ödeme başarılı";
            lblMsg.CssClass = "alert alert-success";
            Response.AddHeader("REFRESH", "1;URL=Default.aspx");



        }

        
    }
}