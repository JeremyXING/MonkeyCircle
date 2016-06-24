using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Collections;
using IDAL;
using DBUtility;
using Model;

namespace SQLServerDAL
{
    public class Question : IQuestion
    {
        private const string SQL_SELECT_ID = "select qid,qtitle,qcontent,qtime from question where qtype=@qtype and qlevel=@qlevel";
        private const string PARM_QUESTION_TYPE = "@qtype";
        private const string PARM_QUESTION_LEVEL = "@qlevel";

        public ArrayList GetQuestionByTandL(int qType, int qLevel)
        {
            ArrayList result = new ArrayList();
            SqlParameter[] parm = {
                new SqlParameter(PARM_QUESTION_TYPE, SqlDbType.Int),
                new SqlParameter(PARM_QUESTION_LEVEL, SqlDbType.Int)
            };

            parm[0].Value = qType;
            parm[1].Value = qLevel;

            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL_SELECT_ID, parm))
            {
                while(rdr.Read())
                {
                    QuestionInfo qInfo = new QuestionInfo();
                    qInfo.qId = rdr.GetInt32(0);
                    qInfo.qTitle = rdr.GetString(1);
                    qInfo.qContent = rdr.GetString(2);
                    qInfo.qTime = rdr.GetInt32(3);

                    result.Add(qInfo);
                }
            }

                return result;
        }
    }
}
