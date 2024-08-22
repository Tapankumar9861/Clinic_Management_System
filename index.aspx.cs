using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic_MS
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = TAPAN;initial catalog=Clinic_MS;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }




        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(inputPatientName.Text == "" || inputDoctorName.SelectedValue == "" || inputDepartmentName.SelectedValue == "" || inputPhone.Text == "" || inputSymptoms.Text == "" || inputDate.Text == "")
            {
                Response.Write("<script>alert('Must Fill The Field !')</script>");
            }
            else
            {
                String query = "INSERT INTO Book_Appointment(Patient_Name,Doctor_Name,Department_Name,Phone_Number,Symptoms,Date) VALUES (@Patient_Name,@Doctor_Name,@Department_Name,@Phone_Number,@Symptoms,@Date)";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.Parameters.AddWithValue("@Patient_Name", inputPatientName.Text);
                cmd.Parameters.AddWithValue("@Doctor_Name", inputDoctorName.Text);
                cmd.Parameters.AddWithValue("@Department_Name", inputDepartmentName.Text);
                cmd.Parameters.AddWithValue("@Phone_Number", inputPhone.Text);
                cmd.Parameters.AddWithValue("@Symptoms", inputSymptoms.Text);
                cmd.Parameters.AddWithValue("@Date", inputDate.Text);
                int t = cmd.ExecuteNonQuery();
                con.Close();
                if (t > 0)
                {
                    Response.Write("<script>alert('Appointment Booked Successfully !')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Some Error are Show !')</script>");
                }

                inputPatientName.Text = "";
                inputDoctorName.SelectedValue = "";
                inputDepartmentName.SelectedValue = "";
                inputPhone.Text = "";
                inputSymptoms.Text = "";
            }
        }
    }
}