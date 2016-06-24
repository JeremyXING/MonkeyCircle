using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Collections;

namespace IDAL
{
    public interface IPublishChallenge
    {
        ArrayList GetPCByUserID(int userID);
    }
}
