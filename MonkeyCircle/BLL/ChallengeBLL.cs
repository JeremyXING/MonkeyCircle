using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IDAL;
using DALFactory;

namespace BLL
{
    public class ChallengeBLL
    {
        private static readonly IChallenge dal = DALFactory.DataAccess.CreateChallenge();

        public ChallengeInfo GetChallenge(int companyId)
        {
            // Return the order from the DAL
            return dal.GetChallengeByCompanyID(companyId);
        }
    }
}
