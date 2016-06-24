using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class CommonBLL
    {
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
