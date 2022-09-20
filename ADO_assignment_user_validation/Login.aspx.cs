using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO_assignment_user_validation
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Validated(object sender, EventArgs e)
        {
            //Redirects to welcome page when the user is validated
            string uname = txtName.Text;
            string pwd = txtPassword.Text;
            if (uname == "Rohan@123" && pwd == "12345")
            {
                Response.Redirect("Welcome.aspx"); //redirect to Welcome Page
            }
            else
                Label1.Text = "Invalid Credentials";
        }

        protected void Register(object sender, EventArgs e)
        {
            //Redirects to Register Page
            Response.Redirect("Register.aspx");
        }
    }
}