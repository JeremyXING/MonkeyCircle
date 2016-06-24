using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IChallenge
    {
        void Insert(ChallengeInfo cha);//新建挑战

        //ChallengeInfo GetChallengeByCompanyID(int companyID);
        ChallengeInfo GetChallengeBychanID(int chanID);

        List<ChallengeInfo> GetChallengeByCondition(int Type, int salary, String location);
    }
}
