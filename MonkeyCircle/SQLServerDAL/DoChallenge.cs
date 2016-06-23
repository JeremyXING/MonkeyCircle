using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using System.Collections;

namespace SQLServerDAL
{
    class DoChallenge:IDoChallenge
    {
        private const string SQL_SELECT_ACCEPT = "SELECT userId,finishStatus,useTime,score,acceptTime,finishTime FROM publishChallenge WHERE chanId=@chanId and acceptStatus=true";
        private const string PARM_USER_ID = "@chanId";

        public ArrayList GetAcceptDCByChanID(int chanID)
        {
            
            return null;
        }
    }
}
