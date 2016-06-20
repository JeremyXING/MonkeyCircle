using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class company_challenge_management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ChallengeBLL cbll = new ChallengeBLL();

            typeLB.Text = cbll.GetChallengeByChanID(1).status.ToString();
            timeLable.Text = cbll.GetChallengeByChanID(1).publishTime.ToString();
            //if (i == 1)
            //{
            //    typeLB.Text = "试一试是不是初级";
            //    typeLB = "试一试是不是初级";
            //}
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
    }
}