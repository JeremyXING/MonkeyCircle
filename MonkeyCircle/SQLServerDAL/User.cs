using System.Data.SqlClient;
using DBUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IDAL;
using System.Data;

namespace SQLServerDAL
{
    public class User : IUser
    {
        private const string SQL_SELECT_USER = "SELECT * FROM UserInfo WHERE userEmail=@userEmail";
        private const string PARM_USER_EMAIL = "@userEmail";

        public UserInfo GetUserInfo(String userEmail)
        {
            UserInfo cha = new UserInfo();
            SqlParameter parm = new SqlParameter("@userEmail",PARM_USER_EMAIL);

            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL_SELECT_USER, parm))
            {

                if (rdr.Read())
                {
                    cha.userId = rdr.GetInt32(0);
                    cha.userEmail = rdr.GetString(1);
                    cha.password = rdr.GetString(2);
                    cha.role = rdr.GetInt32(3);
                }
            }

            return cha;
        }
    }
}
