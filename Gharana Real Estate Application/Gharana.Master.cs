using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Gharana_Real_Estate_Application
{
    public partial class Gharana : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* 
            if (!IsPostBack)
            {
                GetListings();
            }
            */
        }

        /*
        protected void GetListings()
        {
            //create the db connection
            string connString = ConfigurationManager.ConnectionStrings["RealEstateConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(connString);

            //create the DataAdapter and the DataSet Objects
            SqlDataAdapter da = new SqlDataAdapter("spGetListings", conn);
            DataSet ds = new DataSet();

            //run the command and fill the data in the DataSet object
            da.Fill(ds);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                MenuItem item = new MenuItem();
                item.Text = row["propertyAddress"].ToString();
                item.NavigateUrl = "~/Properties.aspx?PropertyID=" + row["propertyID"];

                Menu1.Items.Add(item);
            }


        }
         */
    }
}