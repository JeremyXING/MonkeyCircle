using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class add_challenge3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Send("13301025@bjtu.edu.cn", "bywayadm@sina.com",
                "[北京猿圈科技有限责任公司]-在线笔试邀请函", "您好：<br>我们非常高兴的通知您，通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了[职位]的在线编程挑战，希望您能完成！<br>点击下面的链接进入在线编程挑战: :<br>[链接]。<br>以下是您的登录信息:<br>用户名：[用户名]<br>密码[密码]<br>感谢您的配合！<br><br>[公司名]<br>[时间]",
                "bywayadm", "shundaoer", "smtp.sina.com");

            //MailMessage mailObj = new MailMessage();
            //mailObj.From = new MailAddress("bywayadm@sina.com"); //发送人邮箱地址
            //mailObj.To.Add("z13301025@bjtu.edu.cn");   //收件人邮箱地址
            //mailObj.Subject = "11111111";    //主题
            //mailObj.Body = "222222";    //正文
            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtp.sina.com";         //smtp服务器名称
            //smtp.UseDefaultCredentials = true;
            //smtp.Credentials = new NetworkCredential("bywayadm", "shundaoer");  //发送人的登录名和密码
            //smtp.Send(mailObj);
        }

        public void Send(string to, string from, string subject, string body, string userName, string password, string smtpHost)
        {
            MailAddress f = new MailAddress(from);
            MailAddress t = new MailAddress(to);
            MailMessage message = new MailMessage(f, t);
            message.Subject = subject;//设置邮件主题
            message.IsBodyHtml = true;//设置邮件正文为html格式
            message.Body = body;//设置邮件内容
            SmtpClient client = new SmtpClient(smtpHost);
            //设置发送邮件身份验证方式
            //注意如果发件人地址是abc@def.com，则用户名是abc而不是abc@def.com
            client.Credentials = new NetworkCredential(userName, password);
            client.Send(message);
        }

    }
}