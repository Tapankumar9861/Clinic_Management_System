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
    public partial class Doctor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = TAPAN;initial catalog=Clinic_MS;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if(inputDocName.Text == "" || inputPhone.Text == "" || inputEmail.Text == "" || inputGender.SelectedValue == "" || inputPassword.Text == "" || inputDOB.Text == "" || inputspecialisation.Text == "" || inputExperience.Text == "" || inputDetails.Text == "")
            {
                Response.Redirect("<script>alert('Must Fill The Field')</script>");
            }
            else
            {
                string query1 = "SELECT COUNT(*) FROM [Clinic_MS].[dbo].[Doctor] WHERE Doc_Email = @Doc_Email";
                using (SqlCommand Checkcmd = new SqlCommand(query1,con))
                {
                    con.Open();
                    Checkcmd.Parameters.AddWithValue("@Doc_Email",inputEmail.Text);
                    int count = (int) Checkcmd.ExecuteScalar();
                    con.Close();
                    if(count > 0)
                    {
                        Response.Write("<script>alert('Email Already Exists')</script>");
                    }
                    else
                    {
                        string query = "INSERT INTO Doctor(Doc_Name,Doc_Phone,Doc_Email,Doc_Password,Doc_Gender,Doc_DOB,Doc_Specialisation,Doc_Exprience,Doc_Details) VALUES (@Doc_Name,@Doc_Phone,@Doc_Email,@Doc_Password,@Doc_Gender,@Doc_DOB,@Doc_Specialisation,@Doc_Exprience,@Doc_Details) ";
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            con.Open();
                            cmd.Parameters.AddWithValue("@Doc_Name", inputDocName.Text);
                            cmd.Parameters.AddWithValue("@Doc_Phone", inputPhone.Text);
                            cmd.Parameters.AddWithValue("@Doc_Email", inputEmail.Text);
                            cmd.Parameters.AddWithValue("@Doc_Password", inputPassword.Text);
                            cmd.Parameters.AddWithValue("@Doc_Gender", inputGender.Text);
                            cmd.Parameters.AddWithValue("@Doc_DOB", inputDOB.Text);
                            cmd.Parameters.AddWithValue("@Doc_Specialisation", inputspecialisation.Text);
                            cmd.Parameters.AddWithValue("@Doc_Exprience", inputExperience.Text);
                            cmd.Parameters.AddWithValue("@Doc_Details", inputDetails.Text);

                            int t = cmd.ExecuteNonQuery();
                            con.Close();

                            if (t > 0)
                            {
                                Response.Write("<script>alert('Successfull Added !')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('Error Create')</script>");
                            }
                        }
                        Display();
                    }
                }
            }
        }
        private void Display()
        {
            inputDocName.Text = "";
            inputPhone.Text = "";
            inputEmail.Text = "";
            inputPassword.Text = "";
            inputGender.Text = "";
            inputDOB.Text = "";
            inputspecialisation.Text = "";
            inputExperience.Text = "";
            inputDetails.Text = "";
        }
    }
}