using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IDAL;
using DALFactory;
using SQLServerDAL;

namespace BLL
{
    public class ChallengeBLL
    {
        private static readonly IChallenge dal = DALFactory.DataAccess.CreateChallenge();
        
        public int[] GetChallengeIDByUserID(int userId)
        {

            return null;
        }

        public ChallengeInfo GetChallengeByChanID(int chanID)
        {
            // Return the order from the DAL
            return dal.GetChallengeBychanID(chanID);
        }
    }
}
