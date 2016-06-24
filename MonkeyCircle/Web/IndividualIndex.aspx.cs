using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using BLL;
using Model;

namespace Web
{
    public partial class IndividualIndex : System.Web.UI.Page
    {
        List<ChallengeInfo> chanList = new List<ChallengeInfo>();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataSet data = new DataSet();
            }
          //  HtmlGenericControl div1 = new HtmlGenericControl("div");
           // div1.ID = "DIV1";
           // div1.Style.Add("width", "10");
          //  div1.Style.Add("height", "550x");
          //  div1.Style.Add("left", "10px");
           // div1.Style.Add("background", "yellow");
          //  div1.Style.Add("display", "block");
          //  Label lab1 = new Label();
         //   lab1.Text = "aaaa";
            //Page.Controls.Add(div1);

           // cplb_main.Controls.Add(div1);
            if (chanList.Count != 0)
            {
                Response.Write("<script language='javascript'>alert('" + chanList.Count + "')</scr" + "ipt>");
            }
        }

        protected void AreaSelectChanged(object sender, EventArgs e)
        {
            if (AreaSelectDropDownList.SelectedIndex != 0)
            {
                Response.Write("<script language='javascript'>alert('"
                    + AreaSelectDropDownList.SelectedValue 
                    + AreaSelectDropDownList.SelectedIndex 
                    + "')</scr" + "ipt>");
                int area = AreaSelectDropDownList.SelectedIndex;
            }

        }

        protected void TechSelectChanged(object sender, EventArgs e)
        {
            if (TechSelectDropDownList.SelectedIndex != 0)
            {
                Response.Write("<script language='javascript'>alert('" 
                    + TechSelectDropDownList.SelectedValue 
                    + TechSelectDropDownList.SelectedIndex 
                    + "')</scr" + "ipt>");
                int tech = TechSelectDropDownList.SelectedIndex;
            }
        }

        protected void PaySelectChanged(object sender, EventArgs e)
        {
            if (PaySelectDropDownList.SelectedIndex != 0) 
            {
            Response.Write("<script language='javascript'>alert('" 
                + PaySelectDropDownList.SelectedValue 
                + PaySelectDropDownList.SelectedIndex
                + "')</scr" + "ipt>");
            int pay = TechSelectDropDownList.SelectedIndex;
            }
            

        }

        protected void search_Click(object sender, EventArgs e)
        {
            int tech = TechSelectDropDownList.SelectedIndex;
            int pay = PaySelectDropDownList.SelectedIndex; 
            int area = AreaSelectDropDownList.SelectedIndex;
            
            ChallengeBLL chanBLL = new ChallengeBLL();
           // chanList = chanBLL.GetChallengeByCodition(tech, pay, area);
           // Response.Write("<script language='javascript'>alert('" + chanList.Count + "')</scr" + "ipt>");
           // Response.Write("<script language='javascript'>alert('" + chanList[0].publishTime + "')</scr" + "ipt>");
           // Response.Write("<script language='javascript'>alert('" + chanList[1].publishTime + "')</scr" + "ipt>");
            //Response.Redirect("IndividualIndex.aspx");

            //Control c = ParseControl();
            //DataSet data = new DataSet();
            //data.
            
            
        }
    }
}