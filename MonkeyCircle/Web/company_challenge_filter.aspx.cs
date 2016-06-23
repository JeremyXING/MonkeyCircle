using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class company_challenge_filter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string titleString = "";
            //要传过来一个chanID
            int chanID = 2;
            ChallengeBLL cbll = new ChallengeBLL();
            //显示Title
            int? chanType = cbll.GetChallengeByChanID(chanID).chanType;
            int? salary = cbll.GetChallengeByChanID(chanID).salary;

            titleString += "<h1 class=\"pull - left\">";
            switch (salary)
            {
                case 1:
                    titleString += "[初级]";
                    break;
                case 2:
                    titleString += "[中级]";
                    break;
                case 3:
                    titleString += "[高级]";
                    break;
            }

            switch (chanType)
            {
                case 1:
                    titleString += "JAVA工程师";
                    break;
                case 2:
                    titleString += "C/C++工程师";
                    break;
                case 3:
                    titleString += "PHP工程师";
                    break;
            }
            titleString += "</h1>";
            titleDIV.InnerHtml = titleString;

            //显示时间
            timeSpan.InnerHtml = "发起时间："+cbll.GetChallengeByChanID(chanID).publishTime;
        }
    }
}