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
    public partial class LabTest : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = TAPAN;initial catalog=Clinic_MS;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if(inputName.Text == "" || inputTestName.Text == "" || inputCost.Text == "" || inputPhone.Text == "" || inputDate.Text == "")
            {
                Response.Write("<script>alert('Must Fill The Field !')</script>");
            }
            else
            {
                string query = "INSERT INTO Lab_Test (PatientName,LabTest_Name,LabTest_Cost,LabTest_Phone,Date) VALUES (@PatientName,@LabTest_Name,@LabTest_Cost,@LabTest_Phone,@Date)";
                using (SqlCommand cmd = new SqlCommand(query,con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@PatientName",inputName.Text);
                    cmd.Parameters.AddWithValue("@LabTest_Name",inputTestName.Text);
                    cmd.Parameters.AddWithValue("@LabTest_Cost",inputCost.Text);
                    cmd.Parameters.AddWithValue("@LabTest_Phone",inputPhone.Text);
                    cmd.Parameters.AddWithValue("@Date",inputDate.Text);
                    int count =  cmd.ExecuteNonQuery();
                    con.Close();
                    if(count > 0)
                    {
                        Response.Write("<script>alert('Successfully Added !')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error Created !')</script>");
                    }
                    show();
                }
            }
        }
        private void show()
        {
            inputName.Text = "";
            inputTestName.Text = "";
            inputCost.Text = "";
            inputPhone.Text = "";
            inputDate.Text = "";
        }
    }
}