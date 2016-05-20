using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Gharana_Real_Estate_Application
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //this method creates the sqlcommand
        public static SqlCommand CreateCommand()
        {
            string connString = ConfigurationManager.ConnectionStrings["RealEstate"].ConnectionString;

            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = connString;

            SqlCommand cmd = conn.CreateCommand();

            cmd.CommandType = CommandType.StoredProcedure;

            return cmd;

        }
        
        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            Roles.AddUserToRole((sender as CreateUserWizard).UserName, "Customers");

            string username = (sender as CreateUserWizard).UserName;
            MembershipUser user = Membership.GetUser(username);
            Guid aspnetCustId = (Guid)user.ProviderUserKey;


            SqlCommand comm = CreateCommand();

            // set the stored procedure name
            comm.CommandText = "spAddUserInfoToDB";

            // create a new parameter
            SqlParameter param = comm.CreateParameter();
            param.ParameterName = "@CustName";
            param.Value = username;
            param.DbType = DbType.String;
            comm.Parameters.Add(param);

            SqlParameter parameter = new SqlParameter("@UserId", SqlDbType.UniqueIdentifier);
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = aspnetCustId;
            comm.Parameters.Add(parameter);

            //execute the stored procedure
           //GenericDataAccess.ExecuteNonQuery(comm);    
        
        
        }



    }
}