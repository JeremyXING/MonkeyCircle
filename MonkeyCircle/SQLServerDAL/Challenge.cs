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
        private const string SQL_SELECT_CHALLENGE = "SELECT chanType,salary,[open],publishTime,status FROM challenge WHERE chanID=@chanID";
        private const string PARM_CHANLLENGE_ID = "@chanID";


        public void Insert(ChallengeInfo cha)
        {
            StringBuilder strSQL = new StringBuilder();
            //SqlParameter[] orderParms = GetOrderParameters();
        }

        public ChallengeInfo GetChallengeBychanID(int chanID)
        {
            ChallengeInfo cha = new ChallengeInfo();
            SqlParameter parm = new SqlParameter(PARM_CHANLLENGE_ID, SqlDbType.Int);
            parm.Value = chanID;

            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL_SELECT_CHALLENGE, parm))
            {

                if (rdr.Read())
                {
                    cha.chanType= rdr.GetInt32(0);
                    cha.salary = rdr.GetInt32(1);
                    cha.open = rdr.GetBoolean(2);
                    cha.publishTime = rdr.GetDateTime(3);
                    cha.status = rdr.GetBoolean(4);
                }
            }

            return cha;
        }

    }
}
