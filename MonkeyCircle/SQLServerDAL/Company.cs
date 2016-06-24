using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DBUtility;
using System.Data;
using System.Data.SqlClient;

namespace SQLServerDAL
{
    public class Company
    {
        public List<CompanyInfo> GetCompanyBylocation(String location)
        {
            String SQL = "SELECT userId,fullName,shortName,logo,scale,intro, location, tags, contactInfo, telephone, industry, certification FROM company WHERE location=@location";
            List<CompanyInfo> comList = new List<CompanyInfo>();
            SqlParameter[] parm = { 
                                      new SqlParameter("@location", location),                                  
                                  };

            //parm.Value = Type;

            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.ConnectionString, CommandType.Text, SQL, parm))
            {

                while (rdr.Read())
                {
                    CompanyInfo com = new CompanyInfo();
                    com.userId = rdr.GetInt32(0);
                    com.fullName = rdr.GetString(1);
                    com.shortName = rdr.GetString(2);
                    com.logo = rdr.GetString(3);
                    com.scale = rdr.GetInt32(4);
                    com.intro = rdr.GetString(5);
                    com.location = rdr.GetString(6);
                    com.tags = rdr.GetString(7);
                    com.contactInfo = rdr.GetString(8);
                    com.telephone = rdr.GetString(10);
                    com.certification = rdr.GetString(11);

                    comList.Add(com);
                }
            }

            return comList;

        }
    }
}
