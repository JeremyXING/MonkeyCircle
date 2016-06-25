using IDAL;

namespace BLL
{
    public class CompanyBLL
    {
        private static readonly ICompany companyDAL = DALFactory.DataAccess.CreateCompany();
        public int GetMoneyByID(int userId)
        {
            return companyDAL.GetMoneyByID(userId);
        }

        public int setMoneyByID(int userId,int money)
        {
           return companyDAL.setMoneyByID(userId,money);
        }
    }
}
