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

        //GetMaxChanID
        private const string SQL_SELECT_MAXCHANID = "select max(chanID) from challenge";
        //InsertCha
        private const string SQL_INSERT_CHA = "insert into Challenge values(@chanID,@chanType,@salary,@open,@publishTime,@status)";

        public void InsertCha(ChallengeInfo cha)
        {
            StringBuilder strSQL = new StringBuilder();
            SqlParameter[] par ={
                                    new SqlParameter("@chanID",SqlDbType.Int),
                                    new SqlParameter("@chanType",SqlDbType.Int),
                                    new SqlParameter("@salary",SqlDbType.Int),
                                    new SqlParameter("@open",SqlDbType.Int),
                                    new SqlParameter("@publishTime",SqlDbType.Int),
                                    new SqlParameter("@status",SqlDbType.Int),
                                };
            par[0].Value = cha.chanID;
            par[1].Value = cha.chanType;
            par[2].Value = cha.salary;
            par[3].Value = cha.open;
            par[4].Value = cha.publishTime;
            par[5].Value = cha.status;

            
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

        public int GetMaxChanID()
        {
            SqlParameter parm = new SqlParameter(PARM_CHANLLENGE_ID, SqlDbType.Int);
            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL_SELECT_MAXCHANID))
            {

                if (rdr.Read())
                {
                    return rdr.GetInt32(0);
                }
            }
            return 0;
        }
    }
}
