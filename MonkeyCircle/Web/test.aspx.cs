using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SQLServerDAL;
using Model;


namespace Web
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Challenge c = new Challenge();
            c.GetChallengeByCompanyID(1);
            Label1.Text = "p";
        }
    }
}