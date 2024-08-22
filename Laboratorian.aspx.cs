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
    public partial class Laboratorian : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = TAPAN;initial catalog=Clinic_MS;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if (inputLaboratorian.Text == "" || inputPhone.Text == "" || inputEmail.Text == "" || inputPassword.Text == "" || inputDate.Text == "" || inputDetails.Text == "")
            {
                Response.Write("<script>alert('Must Fill The Field')</script>");
            }
            else
            {
                string query1 = "SELECT COUNT (*) FROM [Clinic_MS].[dbo].[Laboratorian]  WHERE Lab_Email = @Lab_Email";
                using (SqlCommand Usercmd = new SqlCommand(query1, con))
                {
                    con.Open();
                    Usercmd.Parameters.AddWithValue("@Lab_Email", inputEmail.Text);
                    int Count = (int)Usercmd.ExecuteScalar();
                    con.Close();
                    if (Count > 0)
                    {
                        Response.Write("<script>alert('Email Already Exists !')</script>");
                        return;
                    }
                    else
                    {
                        string query = "INSERT INTO Laboratorian(Lab_Name,Lab_Phone,Lab_Email,Lab_Password,Date,Lab_Details) VALUES (@Lab_Name,@Lab_Phone,@Lab_Email,@Lab_Password,@Date,@Lab_Details)";
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            con.Open();
                            cmd.Parameters.AddWithValue("@Lab_Name", inputLaboratorian.Text);
                            cmd.Parameters.AddWithValue("@Lab_Phone", inputPhone.Text);
                            cmd.Parameters.AddWithValue("@Lab_Email", inputEmail.Text);
                            cmd.Parameters.AddWithValue("@Lab_Password", inputPassword.Text);
                            cmd.Parameters.AddWithValue("@Date", inputDate.Text);
                            cmd.Parameters.AddWithValue("@Lab_Details", inputDetails.Text);
                            int t = cmd.ExecuteNonQuery();
                            con.Close();
                            if (t > 0)
                            {
                                Response.Write("<script>('Successfully Added !')</script>");
                            }
                            else
                            {
                                Response.Write("<script>('Error Create !')</script>");
                            }
                            Display();
                        }

                    }

                }
            }

        }
        private void Display()
        {
            inputLaboratorian.Text = "";
            inputPhone.Text = "";
            inputEmail.Text = "";
            inputPassword.Text = "";
            inputDate.Text = "";
            inputDetails.Text = "";
        }
    }
}