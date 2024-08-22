using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Clinic_MS
{
    public partial class Receptionists : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = TAPAN;initial catalog=Clinic_MS;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if (inputReceptionists.Text == "" || inputPhone.Text == "" || inputEmail.Text == "" || inputPassword.Text == "" || inputDate.Text == "" || inputDetails.Text == "")
            {
                Response.Redirect("<script>alert('Must Fill The Field !')</script>");
            }
            else
            {
                string query1 = "SELECT COUNT(*) FROM [Clinic_MS].[dbo].[Receptionists] WHERE Rec_Email = @Rec_Email";
                using (SqlCommand Checkcmd = new SqlCommand(query1, con))
                {
                    con.Open();
                    Checkcmd.Parameters.AddWithValue("@Rec_Email", inputEmail.Text);
                    int count = (int)Checkcmd.ExecuteScalar();
                    con.Close();
                    if (count > 0)
                    {
                        Response.Write("<script>alert('Email Already Exists !')</script>");
                    }
                    else
                    {
                        string query = "INSERT INTO Receptionists(Rec_Name,Rec_Phone,Rec_Email,Rec_Password,Date,Rec_Address) VALUES (@Rec_Name,@Rec_Phone,@Rec_Email,@Rec_Password,@Date,@Rec_Address)";
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            con.Open();
                            cmd.Parameters.AddWithValue("@Rec_Name", inputReceptionists.Text);
                            cmd.Parameters.AddWithValue("@Rec_Phone", inputPhone.Text);
                            cmd.Parameters.AddWithValue("@Rec_Email", inputEmail.Text);
                            cmd.Parameters.AddWithValue("@Rec_Password", inputPassword.Text);
                            cmd.Parameters.AddWithValue("@Date", inputDate.Text);
                            cmd.Parameters.AddWithValue("@Rec_Address", inputDetails.Text);
                            int t = cmd.ExecuteNonQuery();
                            con.Close();

                            if (t > 0)
                            {
                                Response.Write("<script>alert('Successfully Added !')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('Error Create')</script>");
                            }
                            Display();
                        }
                    }

                }
            }
        }
        private void Display()
        {
            inputReceptionists.Text = "";
            inputPhone.Text = "";
            inputEmail.Text = "";
            inputPassword.Text = "";
            inputDate.Text = "";
            inputDetails.Text = "";
        }
    }
}