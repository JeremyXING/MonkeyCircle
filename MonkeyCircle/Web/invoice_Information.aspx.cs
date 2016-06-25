using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class invoice_Information : System.Web.UI.Page
    {
        int planId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["usrId"] = 1;
            planId = Int32.Parse(Request["planId"]);
            if(planId == 1)
            {
                Label1.Text = "年付：499元";
                Label2.Text = "类型：创新型套餐";
            }else if(planId == 2)
            {
                Label1.Text = "年付：5800元";
                Label2.Text = "类型：高成长型套餐";
            }else if(planId == 3)
            {
                Label1.Text = "年付：7999元";
                Label2.Text = "类型：旗舰型套餐";
            }
        }

        protected void invoice_info_sub_btn_Click(object sender, EventArgs e)
        {
            CompanyBLL comp = new CompanyBLL();
            int usrId = (int)Session["usrId"];
            int old = comp.GetMoneyByID(usrId);
            if (planId == 1)
            {
                comp.setMoneyByID(usrId, old + 15);
            }
            else if (planId == 2)
            {
                comp.setMoneyByID(usrId, old + 200);
            }
            else if (planId == 3)
            {
                comp.setMoneyByID(usrId, old + 300);
            }
            Response.Write("<script>alert('支付成功！');</script>");
            Response.Redirect("companyIndex.aspx");
        }
    }
}