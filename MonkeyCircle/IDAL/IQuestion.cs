using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using Model;


namespace IDAL
{
    public interface IQuestion
    {
        ArrayList GetQuestionByTandL(int qType,int qLevel);
    }
}
