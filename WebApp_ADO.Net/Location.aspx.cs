using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_ADO.Net
{
    public partial class Location : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-J1A95C0\SQLEXPRESS;Initial Catalog=HRDB;Persist Security Info=True;User ID=sa;Password=Srirama@18"))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter("select * from countries", conn);
                    DataSet countryDataSet = new DataSet();
                    dataAdapter.Fill(countryDataSet);
                    ddlCountries.DataSource = countryDataSet;
                    ddlCountries.DataBind();
                }
            }            
        }

        protected void btn_GetLocations_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-J1A95C0\SQLEXPRESS;Initial Catalog=HRDB;Persist Security Info=True;User ID=sa;Password=Srirama@18"))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter("select * from locations", conn);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                gridLocations.DataSource = dataSet;
                gridLocations.DataBind();
            }
        }

        protected void btn_InsertLocation_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlConnection = new SqlConnection(@"Data Source=DESKTOP-J1A95C0\SQLEXPRESS;Initial Catalog=HRDB;Persist Security Info=True;User ID=sa;Password=Srirama@18"))
            {
                SqlCommand sqlCommand = new SqlCommand("insert into locations values('" + txtStreetAdd.Text + "', '" + txtPostalCode.Text + "', '" + txtCity.Text + "','" + txtStateProv.Text + "','" + ddlCountries.SelectedValue + "')", sqlConnection);
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
            }

        }
    }
}