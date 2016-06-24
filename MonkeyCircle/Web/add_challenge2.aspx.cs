using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
<<<<<<< HEAD
using BLL;
using Model;
=======
>>>>>>> 719335d4d79572da20441227b3031528ac933298

namespace Web
{
    public partial class add_challenge2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
<<<<<<< HEAD
            //根据type和level判断要有哪些题
            int level = Convert.ToInt32(Request.Form["relevel"]);
            int type = Convert.ToInt32(Request.Form["retype"]);

            ChallengeBLL cbll = new ChallengeBLL();
            ArrayList questions = cbll.GetQuestionByTL(type,level);

            String s = "";
            QuestionInfo qInfo = new QuestionInfo();
            string star = "<i class=\"fa fa-star\"></i>";
            int num = questions.Count;

            while (num !=0)
            {
                
                qInfo=(QuestionInfo)questions[num-1];

                s += "<div class=\"col-md-4\"><div class=\"panel panel-default project\"><div class=\"panel-body\" style=\"padding-bottom: 0;\"><div class=\"row\"><div class=\"col-xs-12\"><div class=\"pull-left\">";
                s += "<h4>"+qInfo.qTitle+"</h4></div>";

                s += "<div class=\"pull-right client-info\"><button style=\"color: white\" class=\"btn btn-primary btn-sm\" onclick=\"add("+ qInfo + ")\">添加</button></div>";
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

                num--;
            }

            quizBoard.InnerHtml = s;
            Page.DataBind();
=======

>>>>>>> 719335d4d79572da20441227b3031528ac933298
        }

    }
}