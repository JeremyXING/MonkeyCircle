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

        public static IDAL.IPublishChallenge CreatePC()
        {
            string className = path + ".publishChallenge";
            return (IDAL.IPublishChallenge)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IDoChallenge CreateDC()
        {
            string className = path + ".DoChallenge";
            return (IDAL.IDoChallenge)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IQuestion CreateQuestion()
        {
            string className = path + ".Question";
            return (IDAL.IQuestion)Assembly.Load(path).CreateInstance(className);
        }
    }
}
