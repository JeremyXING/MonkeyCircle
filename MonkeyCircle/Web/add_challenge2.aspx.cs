using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

namespace Web
{
    public partial class add_challenge2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //根据type和level判断要有哪些题
            int level = Convert.ToInt32(Request.Form["relevel"]);
            int type = Convert.ToInt32(Request.Form["retype"]);
            int open = Convert.ToInt32(Request.Form["republic"]);

            levelTB.Text = level.ToString();
            typeTB.Text = type.ToString();
            publicTB.Text = open.ToString();

            ChallengeBLL cbll = new ChallengeBLL();
            ArrayList questions = cbll.GetQuestionByTL(type,level);

            String s = "";
            QuestionInfo qInfo = new QuestionInfo();
            string star = "<i class=\"fa fa-star\"></i>";
            int num = 1;

            while (num != questions.Count+1)
            {
                
                qInfo=(QuestionInfo)questions[num-1];

                s += "<div class=\"col-md-4\"><div class=\"panel panel-default project\"><div class=\"panel-body\" style=\"padding-bottom: 0;\"><div class=\"row\"><div class=\"col-xs-12\"><div class=\"pull-left\">";
                s += "<h4>"+num+"."+qInfo.qTitle+"</h4></div>";

                s += "<div class=\"pull-right client-info\"><button style=\"color: white\" class=\"btn btn-primary btn-sm\" onclick=\"add("+ num + ")\">添加</button></div>";
                s += "</div><div class=\"col-md-12\" style=\"min-height: 68px;\"><ul class=\"companyTags\">";
                s += "<li>";
                switch (type)
                {
                    case 1:
                        s += "JAVA";
                        break;
                    case 2:
                        s += "Android";
                        break;
                    case 3:
                        s += "IOS";
                        break;
                    case 4:
                        s += "C语言";
                        break;
                    case 5:
                        s += "C++";
                        break;
                    case 6:
                        s += "PHP";
                        break;
                    case 7:
                        s += "Python";
                        break;
                }
                s += "</li></ul></div></div></div><div class=\"panel-footer\"><div class=\"row\"><div class=\"col-sm-4\"><span class=\"small muted\">项目难度</span></div><div class=\"col-sm-8\"><p>";

                for(int i=0;i<level;i++)
                {
                    s += star;
                }
                s += "</p></div></div></div></div></div>";

                num++;
            }

            quizBoard.InnerHtml = s;
            //Page.DataBind();
        }
        protected void publish(object sender, EventArgs e)
        {
            int q1 = Convert.ToInt32(Request.Form["questionTB1"].Trim());
            int q2 = Convert.ToInt32(Request.Form["questionTB2"].Trim());
            int q3 = Convert.ToInt32(Request.Form["questionTB3"].Trim());
            if(q1==0)
            {
                Response.Write("<script>alert('没有选择题目！')</script>");
                return ;
            }
            

            
            ChallengeBLL cbll = new ChallengeBLL();
            int userid = 1;
            int level = Convert.ToInt32(Request.Form["levelTB"].Trim());
            int type = Convert.ToInt32(Request.Form["typeTB"].Trim());
            int open = Convert.ToInt32(Request.Form["publicTB"].Trim());
            bool openBool=true;
            if (open == 0) { openBool= false; }
            int newChanid = cbll.PublishChallenge(type, level, openBool, userid);
            cbll.addQuestion(newChanid, q1, q2, q3);
            Response.Write("<script>alert('发布成功！')</script>");
            Response.Redirect("company_challenge_management.aspx");
        }
    }
}