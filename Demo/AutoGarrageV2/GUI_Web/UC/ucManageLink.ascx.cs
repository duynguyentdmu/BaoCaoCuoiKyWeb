using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucManageLink : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadLink();
                gvLink.Visible = false;
            }
        }

        private void LoadLink()
        {
            gvLink.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM Links");
            gvLink.DataBind();
        }

        protected void gvLink_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvLink.EditIndex = e.NewEditIndex;
            LoadLink();
        }

        protected void gvLink_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvLink.EditIndex = -1;
            LoadLink();
        }

        protected void gvLink_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int linkID = int.Parse(gvLink.DataKeys[e.RowIndex].Value.ToString());
            string url = (gvLink.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
            DataProvider.Instance.excuteNonQuery("UPDATE Links SET URL='" + url + "' WHERE Name='" + linkID + "'");
            gvLink.EditIndex = -1;
            LoadLink();
        }

        protected void lbtnManageLink_Click(object sender, EventArgs e)
        {
            gvLink.Visible = !gvLink.Visible;
        }
    }
}