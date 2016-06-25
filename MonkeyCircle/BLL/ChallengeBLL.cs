using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IDAL;
using DALFactory;
using SQLServerDAL;
using System.Collections;

namespace BLL
{
    public class ChallengeBLL
    {
        private static readonly IChallenge challengeDAL = DALFactory.DataAccess.CreateChallenge();
        private static readonly IPublishChallenge pcDAL = DALFactory.DataAccess.CreatePC();
        private static readonly IQuestion qDAL = DALFactory.DataAccess.CreateQuestion();

        public ArrayList GetPCByUserID(int userID)
        {
            return pcDAL.GetPCByUserID(userID);
        }

        public ChallengeInfo GetChallengeByChanID(int chanID)
        {
            return challengeDAL.GetChallengeBychanID(chanID);
        }

        public int PublishChallenge(int type,int salary,bool open,int userID)
        {
            IChallenge cDAL = new Challenge();
            ChallengeInfo chaInfo = new ChallengeInfo();

            chaInfo.chanID=cDAL.GetMaxChanID()+1;
            chaInfo.chanType = type;
            chaInfo.salary = salary;
            chaInfo.open = open;
            chaInfo.publishTime= DateTime.Now;
            chaInfo.status = true;

            cDAL.InsertCha(chaInfo);

            publishChallengeInfo pcInfo = new publishChallengeInfo();
            IPublishChallenge cpcDAL = new publishChallenge();
            pcInfo.chanID = cDAL.GetMaxChanID();
            pcInfo.userId = userID;
            pcInfo.publishTime = chaInfo.publishTime;

            cpcDAL.InsertPCInfo(pcInfo);

            return pcInfo.chanID;
        }

        public ArrayList GetQuestionByTL(int level,int type)
        {
            return qDAL.GetQuestionByTandL(level, type);
        }

        public bool addQuestion(int chanID,int q1,int q2,int q3)
        {
            IAddQuestion iqDAL = new addQuestion();
            addQuestionInfo aqInfo = new addQuestionInfo();

            if(q1 !=0)
            {
                aqInfo.chanID = chanID;
                aqInfo.qId = q1;
                aqInfo.addTime = DateTime.Now;

                iqDAL.InsertAddQ(aqInfo);
            }
            if (q2 != 0)
            {
                aqInfo.chanID = chanID;
                aqInfo.qId = q2;
                aqInfo.addTime = DateTime.Now;

                iqDAL.InsertAddQ(aqInfo);
            }
            if (q3 != 0)
            {
                aqInfo.chanID = chanID;
                aqInfo.qId = q3;
                aqInfo.addTime = DateTime.Now;

                iqDAL.InsertAddQ(aqInfo);
            }


            return true;
        }
    }
}
