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
        SqlDataAdapter sab;
        DataTable dt;
        DataTable dtt;
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

            addOrderToDatabase();
            clearCart();
            clear();

            Response.AddHeader("REFRESH", "1;URL=Default.aspx");


        }

        private void addOrderToDatabase()
        {
            using (var con = new SqlConnection(Connection.GetConnectionString()))
            {
                con.Open();
                int? orderNo = null;
                using (cmd = new SqlCommand("Order_Crud", con))
                {
                    cmd.Parameters.AddWithValue("@Action", "INSERT");
                    cmd.Parameters.AddWithValue("@UserId", Session["userId"]);
                    cmd.Parameters.AddWithValue("@OrderDate", DateTime.Now);
                    cmd.Parameters.AddWithValue("@TotalPrice", Convert.ToDecimal(Session["grandTotalPrice"]));
                    cmd.CommandType = CommandType.StoredProcedure;
                    sab = new SqlDataAdapter(cmd);
                    dtt = new DataTable();
                    sab.Fill(dtt);
                    var firstRow = dtt.AsEnumerable().FirstOrDefault();
                    if (firstRow != null)
                        orderNo = Convert.ToInt32(firstRow["OrderNo"]);
                }

                if (!orderNo.HasValue)
                    throw new Exception("Sipariş no alınamadı");

                cmd = new SqlCommand("Cart_Crud", con);
                cmd.Parameters.AddWithValue("@Action", "SELECT");
                cmd.Parameters.AddWithValue("@userId", Session["userId"]);
                cmd.CommandType = CommandType.StoredProcedure;
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);


                foreach (DataRow item in dt.AsEnumerable())
                {
                    cmd = new SqlCommand("Order_Crud", con);
                    cmd.Parameters.AddWithValue("@Action", "INSERTPRODUCT");
                    cmd.Parameters.AddWithValue("@OrderNo", orderNo);
                    cmd.Parameters.AddWithValue("@ProductId", item["ProductId"]);
                    cmd.Parameters.AddWithValue("@Quantity", item["Quantity"]);
                    cmd.Parameters.AddWithValue("@Price", item["Price"]);
                    cmd.CommandType = CommandType.StoredProcedure; 
                    sda = new SqlDataAdapter(cmd);
                    dt = new DataTable();
                    sda.Fill(dt);
                }
            }

        }

        private void clearCart()
        {


            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Cart_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "DELETECART");
            cmd.Parameters.AddWithValue("@UserId", Session["userId"]);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error = " + ex.Message + "');<script>");
            }
            finally
            {
                con.Close();
            }

            lblMsg.Visible = true;
            lblMsg.Text = "ödeme başarılı";
            lblMsg.CssClass = "alert alert-success";

        }

        private void clear()
        {
            name.Text = string.Empty;
            cardnumber.Text = string.Empty;
            expirationdate.Text = string.Empty;
            securitycode.Text = string.Empty;
            Session["grandTotalPrice"] = 0;
        }


    }
}