<<<<<<< HEAD
﻿using System;
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

        public bool PublishChallenge(int type,int salary,bool open)
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

            return false;
        }

        public ArrayList GetQuestionByTL(int level,int type)
        {
            return qDAL.GetQuestionByTandL(level, type);
        }
    }
}
=======
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Model;
using IDAL;
using DALFactory;
using SQLServerDAL;
using DBUtility;
using System.Collections;

namespace BLL
{
    public class ChallengeBLL
    {
        private static readonly IChallenge challengeDAL = DALFactory.DataAccess.CreateChallenge();
        private static readonly IPublishChallenge pcDAL = DALFactory.DataAccess.CreatePC();

        public ArrayList GetPCByUserID(int userID)
        {
            return pcDAL.GetPCByUserID(userID);
        }

        public ChallengeInfo GetChallengeByChanID(int chanID)
        {
            // Return the order from the DAL
            return challengeDAL.GetChallengeBychanID(chanID);
        }

        public SqlDataReader GetChallengeByCodition(int Type, int salary, String location)
        {
            return challengeDAL.GetChallengeByCondition(Type, salary, location);
        }
    }
}
>>>>>>> 719335d4d79572da20441227b3031528ac933298
