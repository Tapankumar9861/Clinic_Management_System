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
    public partial class Patient : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = TAPAN;initial catalog=Clinic_MS;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if(inputPatientName.Text == "" || inputPhone.Text == "" || inputGender.Text == "" || inputAge.Text == "" || inputDate.Text == "" || inputDetails.Text == "" || Disease.Text == "")
            {
                Response.Write("<script>alert(''Must Fill the Field !)</script>");
            }
            else
            {
                string query = "INSERT INTO [Clinic_MS].[dbo].[Patient] (Pat_Name,Pat_Phone,Pat_Gender,Pat_Age,Date,Pat_Address,Pat_Disease) VALUES (@Pat_Name,@Pat_Phone,@Pat_Gender,@Pat_Age,@Date,@Pat_Address,@Pat_Disease)";
                using (SqlCommand cmd = new SqlCommand(query,con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@Pat_Name",inputPatientName.Text);
                    cmd.Parameters.AddWithValue("@Pat_Phone",inputPhone.Text);
                    cmd.Parameters.AddWithValue("@Pat_Gender",inputGender.Text);
                    cmd.Parameters.AddWithValue("@Pat_Age",inputAge.Text);
                    cmd.Parameters.AddWithValue("@Date",inputDate.Text);
                    cmd.Parameters.AddWithValue("@Pat_Address",inputDetails.Text);
                    cmd.Parameters.AddWithValue("Pat_Disease",Disease.Text);
                    int t = cmd.ExecuteNonQuery();
                    con.Close();
                    if(t > 0)
                    {
                        Response.Write("<script>alert('Successfully Added !')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error Create !')</script>");
                    }
                    show();
                }
            }
        }
        protected void show()
        {
            inputPatientName.Text = "";
            inputPhone.Text = "";
            inputGender.Text = "";
            inputAge.Text = "";
            inputDate.Text = "";
            inputDetails.Text = "";
            Disease.Text = "";

        }
    }
}