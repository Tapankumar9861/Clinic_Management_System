using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Clinic_MS
{
    public partial class Prescription : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source = TAPAN;initial catalog=Clinic_MS;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Doctor_Id();
                Patient_Id();
                Test_Id();
                
            }
            Retrive();
            RetrivePatientDetails();
            RetriveLabDetails();
        }
        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if(inputDoctorId.SelectedValue == "" || inputDoctorName.Text == "" || inputPatientId.SelectedValue == "" || inputPatientName.Text == "" || inputLabTestId.SelectedValue == "" || inputLabTestName.Text == "" || inputMedicine.Text == "")
            {
                Response.Write("<script>alert('Must Fill The Field !')</script>");
            }
            else
            {
                string query = "INSERT INTO [Clinic_MS].[dbo].[Prescription] (Doc_Id,Doc_Name,Pat_Id,Pat_Name,LabTest_Id,LabTest_Name,Medicines) VALUES (@Doc_Id,@Doc_Name,@Pat_Id,@Pat_Name,@LabTest_Id,@LabTest_Name,@Medicines)";
                using (SqlCommand cmd = new SqlCommand(query,con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@Doc_Id",inputDoctorId.Text);
                    cmd.Parameters.AddWithValue("@Doc_Name",inputDoctorName.Text);
                    cmd.Parameters.AddWithValue("@Pat_Id",inputPatientId.Text);
                    cmd.Parameters.AddWithValue("@Pat_Name",inputPatientName.Text);
                    cmd.Parameters.AddWithValue("@LabTest_Id",inputLabTestId.Text);
                    cmd.Parameters.AddWithValue("@LabTest_Name",inputLabTestName.Text);
                    cmd.Parameters.AddWithValue("@Medicines",inputMedicine.Text);
                    int t = cmd.ExecuteNonQuery();
                    con.Close();
                    if(t > 0)
                    {
                        Response.Write("<script>alert('Successfully Added !')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error Created !')</script>");
                    }
                }
            }
            Null();
        }

        private void Doctor_Id()
        {
            DataTable dataTable = new DataTable();
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT TOP (10000) [Doc_Id] FROM [Clinic_MS].[dbo].[Doctor]", con))
            {
                adapter.Fill(dataTable);
            }
            inputDoctorId.DataSource = dataTable;
            inputDoctorId.DataTextField = "Doc_Id";
            inputDoctorId.DataBind();
        }

        private void Retrive()
        {
            string SelectItem = inputDoctorId.SelectedValue;
            string query = "SELECT Doc_Name FROM Doctor WHERE Doc_Id = @Doc_Id";
            using (SqlCommand cmd = new SqlCommand(query,con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@Doc_Id",SelectItem);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    
                    if(reader.Read())
                    {
                        inputDoctorName.Text = reader["Doc_Name"].ToString();
                    }
                }
                con.Close();
            }
           
        }


        private void Patient_Id()
        {
            DataTable dataTable = new DataTable();
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT TOP (100000) [Pat_Id] FROM [Clinic_MS].[dbo].[Patient]",con))
            {
                adapter.Fill(dataTable);
            }
            inputPatientId.DataSource = dataTable;
            inputPatientId.DataTextField = "Pat_Id";
            inputPatientId.DataBind();  
        }

        private void RetrivePatientDetails()
        {
            string selectItem = inputPatientId.SelectedValue;
            string query = "SELECT [Pat_Name] FROM [Clinic_MS].[dbo].[Patient] WHERE [Pat_Id] = @Pat_Id";
            using (SqlCommand cmd = new SqlCommand(query,con))
            {
                con.Open() ;
                cmd.Parameters.AddWithValue("@Pat_Id",selectItem);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        inputPatientName.Text = reader["Pat_Name"].ToString() ;
                    }
                }
                con.Close();
            }
        }


        private void Test_Id()
        {
            DataTable dataTable = new DataTable();
            using (SqlDataAdapter adapter = new SqlDataAdapter("SELECT TOP (10000) [LabTest_Id] FROM [Clinic_MS].[dbo].[Lab_Test]",con))
            {
                adapter.Fill(dataTable);
            }
            inputLabTestId.DataSource = dataTable;
            inputLabTestId.DataTextField = "LabTest_Id";
            inputLabTestId.DataBind();
        }

        private void RetriveLabDetails()
        {
            string SelectItem = inputLabTestId.SelectedValue;
            string query = "SELECT [LabTest_Name] FROM [Clinic_MS].[dbo].[Lab_Test] WHERE [LabTest_Id] = @LabTest_Id";
            using (SqlCommand cmd = new SqlCommand(query,con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@LabTest_Id",SelectItem);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        inputLabTestName.Text = reader["LabTest_Name"].ToString();
                    }
                }
                con.Close() ;
              
            }
        }

        private void Null()
        {
            
            inputDoctorName.Text = "";
            inputPatientName.Text = "";
            inputLabTestName.Text = "";
            inputMedicine.Text = "";
        }
    }
}