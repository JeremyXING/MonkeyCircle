using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using DBUtility;
using Model;
using IDAL;

namespace SQLServerDAL
{
    public class publishChallenge:IPublishChallenge
    {
        //publishChallenge相关的
        private const string SQL_SELECT_CHALLENGEID = "SELECT chanId,publishTime FROM publishChallenge WHERE userId=@userId";
        private const string PARM_USER_ID = "@userId";

        private const string SQL_INSERT_PC = "insert into publishChallenge values(@chanID,@userId,@publishTime)";

        public ArrayList GetPCByUserID(int userID)
        {
            ArrayList pcArrayList = new ArrayList();
            SqlParameter parm = new SqlParameter(PARM_USER_ID, SqlDbType.Int);
            parm.Value = userID;
            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL_SELECT_CHALLENGEID, parm))
            {
                while (rdr.Read())
                {
                    publishChallengeInfo pc = new publishChallengeInfo();
                    pc.chanID = rdr.GetInt32(0);
                    pc.publishTime = rdr.GetDateTime(1);
                    pcArrayList.Add(pc);
                }
            }
            return pcArrayList;
        }

        public void InsertPCInfo(publishChallengeInfo pcInfo)
        {
            SqlParameter[] par ={
                                    new SqlParameter("@chanID",SqlDbType.Int),
                                    new SqlParameter("@userId",SqlDbType.Int),
                                    new SqlParameter("@publishTime",SqlDbType.DateTime),
                                };

            par[0].Value = pcInfo.chanID;
            par[1].Value = pcInfo.userId;
            par[2].Value = pcInfo.publishTime;

            SqlHelper.ExecuteSql(SQL_INSERT_PC, par);
        }
    }
}