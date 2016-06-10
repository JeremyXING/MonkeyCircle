using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Collections;

namespace DBUtility
{
    public abstract class SqlHelper
    {
        private static Hashtable parmCache = Hashtable.Synchronized(new Hashtable());
    }
}
