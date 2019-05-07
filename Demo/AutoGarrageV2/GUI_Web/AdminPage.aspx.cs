using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Convert.ToInt32(Session["Role"].ToString())!=1)
                {
                    ManageUser.Visible = false;
                    ActivateUser.Visible = false;
                    ManageCategory.Visible = false;
                    ManageLink.Visible = false;
                    ManageComment.Visible = false;
                }
            }
            catch
            { }
            
        }

        
    }
}