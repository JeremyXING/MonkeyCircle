using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBUtility;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using Model;
using IDAL;

namespace SQLServerDAL
{
    public class addQuestion:IAddQuestion
    {
        private const string SQL_INSERT_AQ = "insert into addQuestion values(@chanID,@qId,@addTime)";

        public void InsertAddQ(addQuestionInfo addQInfo)
        {
            SqlParameter[] par ={
                                    new SqlParameter("@chanID",SqlDbType.Int),
                                    new SqlParameter("@qId",SqlDbType.Int),
                                    new SqlParameter("@addTime",SqlDbType.DateTime),
                                };
            par[0].Value = addQInfo.chanID;
            par[1].Value = addQInfo.qId;
            par[2].Value = addQInfo.addTime;

            SqlHelper.ExecuteSql(SQL_INSERT_AQ, par);
        }
    }
}
