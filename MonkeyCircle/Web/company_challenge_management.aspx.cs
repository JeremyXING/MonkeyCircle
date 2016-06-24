using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using System.Collections;

namespace Web
{
    public partial class company_challenge_management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //先根据userID判断这个公司都发布了哪些挑战
            int useID = 1;
            ChallengeBLL cbll = new ChallengeBLL();
            ArrayList pc=cbll.GetPCByUserID(useID);
            //每一个挑战生成一个框框
            string s="";
            int chanID = 0;
            int? chanType = 0;
            int? salary = 0;
            string time = "";
            int newAccept = 0;
            int newFinish = 0;
            int percent = 0;
            int i = 0;
            
            foreach (publishChallengeInfo pci in pc)
            {
                chanID = pci.chanID;
                chanType = cbll.GetChallengeByChanID(chanID).chanType;
                salary = cbll.GetChallengeByChanID(chanID).salary;
                time = cbll.GetChallengeByChanID(chanID).publishTime.ToString();
                s += "<div class=\"row\"><div class=\"col-md-12\"><div class=\"panel panel-default project \">";
                s += "<div class=\"panel-body\"><div class=\"row\"><div class=\"col-md-5\"><h2 style = \"margin: 12px 0 2px 0;\"><a>";
            
                switch (salary)
                {
                    case 1:
                        s += "[初级]";
                        break;
                    case 2:
                        s += "[初级]";
                        break;
                    case 3:
                        s += "[中级]";
                        break;
                    case 4:
                        s += "[中级]";
                        break;
                    case 5:
                        s += "[高级]";
                        break;
                    case 6:
                        s += "[高级]";
                        break;
                }

                switch (chanType)
                {
                    case 1:
                        s += "JAVA工程师";
                        break;
                    case 2:
                        s += "Android工程师";
                        break;
                    case 3:
                        s += "IOS工程师";
                        break;
                    case 4:
                        s += "C语言工程师";
                        break;
                    case 5:
                        s += "C++工程师";
                        break;
                    case 6:
                        s += "PHP工程师";
                        break;
                    case 7:
                        s += "Python工程师";
                        break;
                }

                s += "</a></h2><div style = \"width: 280px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;\" > ";
                s += "<small class=\"text - muted\">["+time+"]";
                s += "</small></div></div>";
                s += "<div class=\"col-md-2\"><ul class=\"list-unstyled\" style=\"margin: 7px 0;\"><li><span class=\"badge badge-info\">"+newAccept;
                s += "</span>个新接受</li><li><span class=\"badge badge-danger\">"+newFinish+ "</span>个新完成</li></ul></div>";

                s += "<div class=\"col-md-2\"><ul class=\"list-unstyled\" style=\"margin: 20px 0;\"><li><span class=\"red\">"+percent+"</span>%已合格</li></ul></div>";

                s += "<div class=\"col-md-3\"><a href=\".\a.htm\" ><button class=\"btn btn-new1\">去筛选</button></a>";
                s += "<a href = \".\a.htm\" ><button class=\"btn btn-new1\" style=\"margin: 16px 5px;\" >邀请</button></a></div>";
                
                s += "</div></div></div>";

                i++;
            }
            content1.InnerHtml = s;
            Page.DataBind();

            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
    }
}