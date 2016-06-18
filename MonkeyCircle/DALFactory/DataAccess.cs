using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using System.Configuration;
using System.Reflection;

namespace DALFactory
{
    public sealed class DataAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["WebDAL"];

        public static IDAL.IChallenge CreateChallenge()
        {
            string className = path + ".Challenge";
            return (IDAL.IChallenge)Assembly.Load(path).CreateInstance(className);
        }
    }
}
