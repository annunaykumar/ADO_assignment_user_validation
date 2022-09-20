using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel;
using System.Globalization;

namespace ADO_assignment_user_validation
{
    public partial class Register : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-TUF8GF9\SQLEXPRESS;Initial Catalog=StudentDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            //Add user details to user table
            using(SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit",sqlcon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@UserID",Convert.ToInt32(hfUderID.Value=="" ? "0" : hfUderID.Value));
                sqlCmd.Parameters.AddWithValue("@FirstName", textName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@LastName", textlastName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Gender", textGender.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Age",TextBox1.Text);
                sqlCmd.Parameters.AddWithValue("@Email", textEmail.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@MobileNo", textMobileno.Text); 
                sqlCmd.Parameters.AddWithValue("@Country",DropDownList1.SelectedValue);
                sqlCmd.Parameters.AddWithValue("@Password",textPassword.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                Clear();
                lbl1SuccessMessage.Text = "Register Successfully";
            }
        }
        void Clear()
        {
            textName.Text = textlastName.Text = textGender.Text = textEmail.Text =textMobileno.Text= textPassword.Text = "";
            hfUderID.Value = "";
            lbl1SuccessMessage.Text = "";
        }

        
        }
    }
