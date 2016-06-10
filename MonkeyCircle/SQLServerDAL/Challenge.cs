using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;
using IDAL;
using DBUtility;
using Model;

namespace SQLServerDAL
{
    public class Challenge:IChallenge
    {
        private const string SQL_SELECT_CHALLENGE = "SELECT chanType FROM challenge WHERE companyID=@companyID";
        private const string PARM_COMPANY_ID = "@companyID";

        public void Insert(ChallengeInfo cha)
        {
            StringBuilder strSQL = new StringBuilder();
            //SqlParameter[] orderParms = GetOrderParameters();
        }

        public ChallengeInfo GetChallengeByCompanyID(int companyID)
        {
            ChallengeInfo cha = new ChallengeInfo();
            SqlParameter parm = new SqlParameter(PARM_COMPANY_ID, SqlDbType.Int);
            parm.Value = companyID;

            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL_SELECT_CHALLENGE, parm))
            {

                if (rdr.Read())
                {
                    int temp = rdr.GetInt32(0);
                }
            }

            return cha;
        }
    }
}
