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
using System.Web;

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

        public List<ChallengeInfo> GetChallengeByCondition(int Type, int salary, String location)
        {
            String SQL = "SELECT chanType,salary,[open],publishTime,status FROM challenge WHERE chanType=@chanType AND salary=@salary";
            List<ChallengeInfo> chanList = new List<ChallengeInfo>();
            SqlParameter[] parm = { };
            //未选技术方向
            if (Type == 0 && salary != 0 && !location.Equals("全部地区"))
            {
                SQL = "SELECT chan.salary, com.userId, com.fullName, com.tags FROM Company com, Challenge chan, publishChallenge pc WHERE location=@location AND salary=@salary"
                    + "AND com.userId = pc.userId AND chan.chanID = pc.chanID";
                parm[0] = new SqlParameter("@location", location);
                parm[1] = new SqlParameter("@salary", salary);
            }
            //未选技术方向和起薪
            if (Type == 0 && salary == 0 && !location.Equals("全部地区"))
            {
                SQL = "SELECT chan.salary, com.userId, com.fullName, com.tags FROM Company com, Challenge chan, publishChallenge pc WHERE location=@location"
                    + "AND com.userId = pc.userId AND chan.chanID = pc.chanID";
                parm[0] = new SqlParameter("@location", location);
            }
            //未选任何条件
            if (Type == 0 && salary == 0 && location.Equals("全部地区"))
            {
                SQL = "SELECT chan.salary, com.userId, com.fullName, com.tags FROM Company com, Challenge chan, publishChallenge pc WHERE "
                    + "AND com.userId = pc.userId AND chan.chanID = pc.chanID";
            }




            //parm.Value = Type;

            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL, parm))
            {

                while (rdr.Read())
                {
                    ChallengeInfo cha = new ChallengeInfo();
                    cha.chanType = rdr.GetInt32(0);
                    cha.salary = rdr.GetInt32(1);
                    cha.open = rdr.GetBoolean(2);
                    cha.publishTime = rdr.GetDateTime(3);
                    cha.status = rdr.GetBoolean(4);
                    chanList.Add(cha);
                }
            }

            return chanList;

        }
    }
}
