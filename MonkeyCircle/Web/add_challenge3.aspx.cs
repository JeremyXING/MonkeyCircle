using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web
{
    public partial class add_challenge3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String[] email = this.emails.Value.Split(new char[] {','});
            String[] message = new String [email.Length];
            CommonBLL comm = new CommonBLL();
            for (int i=0;i<email.Length;i++)
            {
                message[i] = "您好：<br>我们非常高兴的通知您，通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了"
                + "[职位]" + "的在线编程挑战，希望您能完成！<br>点击下面的链接进入在线编程挑战: :<br>" + "http://localhost:33227/individual_challenge_details.aspx?email=" + email[i] +
                "。<br>以下是您的登录信息:<br>用户名：" + email[i] + "<br>如未注册用户默认密码为：" + "666666" + "<br>感谢您的配合！<br><br>[北京猿圈科技有限责任公司]<br>"+
                DateTime.Now.ToLongDateString().ToString();
                comm.Send(email[i], "bywayadm@sina.com",
                "[北京猿圈科技有限责任公司]-在线笔试邀请函", message[i],
                "bywayadm", "shundaoer", "smtp.sina.com");
            }

            Response.Write("<script>alert('已发送！');</script>");
            Response.Redirect("companyIndex.aspx");
        }

        

    }
}