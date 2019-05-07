using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //Tìm cookie trên máy khách
                HttpCookie cookie = Request.Cookies["Username"];
                if (cookie != null)
                    Session["Username"] = cookie.Value;
                ////////////////////
                AdminPage.Visible = false;
                if(Session["Username"]!=null)
                {
                    linkLogin.Visible = false;
                    linkRegister.Visible = false;
                    lblUsername.Text = Session["Username"].ToString();
                    //Kiểm tra quyền quản trị của account
                    int role = Convert.ToInt32(DataProvider.Instance.excuteScarlar("SELECT Role FROM Users WHERE Username='" + lblUsername.Text + "'"));
                    Session["Role"] = role;

                    lbtnLogout.Visible = true;
                    if (Convert.ToInt32(Session["Role"]) == 1 || Convert.ToInt32(Session["Role"]) == 2)
                    {
                        AdminPage.Visible = true;
                        if (Convert.ToInt32(Session["Role"]) == 1)
                            lblUsername.Text += " [Administrator]";
                        else lblUsername.Text += " [Reviewer]";
                    }
                    else AdminPage.Visible=false;
                }
                else
                {
                    lblUsername.Text = "";
                    lblUsername.Visible = false;
                    lbtnLogout.Visible = false;
                    linkLogin.Visible = true;
                    linkRegister.Visible = true;
                }
            }
        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session["Role"] = null;
            Response.Cookies.Add(Cookies.Instance.DeleteCookie());//Xóa cookies trên máy khách
            Response.Redirect("~/Home.aspx");
        }
    }
}