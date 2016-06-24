using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IDAL;
using DALFactory;
using SQLServerDAL;
using System.Collections;

namespace BLL
{
    public class CompanyBLL
    {
        private static readonly ICompany companyDAL = DALFactory.DataAccess.CreateCompany();
        public List<CompanyInfo> GetCompanyInfoBylocation(String location)
        {
            return companyDAL.GetCompanyInfoBylocation(location);
        }
    }
}
