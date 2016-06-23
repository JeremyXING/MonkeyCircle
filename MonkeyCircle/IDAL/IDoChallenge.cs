using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace IDAL
{
    public interface IDoChallenge
    {
        ArrayList GetAcceptDCByChanID(int chanID);
    }
}
