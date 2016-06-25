using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DBUtility;
using System.Data;
using System.Data.SqlClient;
using IDAL;

namespace SQLServerDAL
{
    public class Company:ICompany
    {
        public int GetMoneyByID(int userId)
        {
            String SQL = "SELECT money FROM company WHERE userId=@userId";
            int money = 0;
            List<CompanyInfo> comList = new List<CompanyInfo>();
            SqlParameter[] parm = { 
                                      new SqlParameter("@userId", userId),                                  
                                  };

            //parm.Value = Type;

            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL, parm))
            {

                while (rdr.Read())
                {
                    
                  money= rdr.GetInt32(0);
                }
            }

            return money;

        }

        

        public int setMoneyByID(int userId,int money)
        {
            String SQL = "UPDATE company SET money=@money WHERE userId=@userId";
            SqlHelper.ExecuteSql(SQL);
            return 1;
        }
    }
}
