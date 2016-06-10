using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Challenge
    {
        private int chanID;//挑战序号
        private int companyID;
        private int chanType;
        private int salary;
        private bool open;
        private DateTime publishTime;
        private int questionID;
        private int acceptNum;
        private int finishNum;
        private int lastAcceptNum;
        private int lastFinishNum;
        private bool status;
        private float passPer;
    }
}
