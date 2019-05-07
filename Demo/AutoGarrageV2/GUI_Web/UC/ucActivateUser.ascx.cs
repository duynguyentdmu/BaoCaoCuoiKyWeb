using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucUserRoleSetting : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadNewUser();
                gvNewUser.Visible = false;
            }
        }

        protected void lbtnActivateUser_Click(object sender, EventArgs e)
        {
            gvNewUser.Visible = !gvNewUser.Visible;
        }

        private void LoadNewUser()
        {
            gvNewUser.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Users WHERE Role=0");
            gvNewUser.DataBind();
        }

        protected void gvNewUser_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            int userID = int.Parse(gvNewUser.DataKeys[chiso].Value.ToString());
            if(e.CommandName=="cmdAllow")
            {
                DataProvider.Instance.excuteNonQuery("UPDATE dbo.Users SET Role=3 WHERE IDuser='" + userID + "'");
                LoadNewUser();
            }
            if(e.CommandName=="cmdNotAllow")
            {
                DataProvider.Instance.excuteNonQuery("DELETE FROM dbo.Users WHERE IDuser='" + userID + "'");
                LoadNewUser();
            }
        }

        protected void gvNewUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvNewUser.PageIndex = e.NewPageIndex;
            LoadNewUser();
        }
    }
}