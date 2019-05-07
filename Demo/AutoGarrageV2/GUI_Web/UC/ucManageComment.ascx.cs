using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucManageComment : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadComment();
                gvComment.Visible = false;
            }
        }

        private void LoadComment()
        {
            gvComment.DataSource = DataProvider.Instance.excuteQuery("EXEC dbo.DataCommentForAdminPage");
            gvComment.DataBind();
        }

        protected void lbtnManageComment_Click(object sender, EventArgs e)
        {
            gvComment.Visible = !gvComment.Visible;
        }

        protected void gvComment_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvComment.PageIndex = e.NewPageIndex;
            LoadComment();
        }

        int commmentID;

        protected void gvComment_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            commmentID = int.Parse(gvComment.DataKeys[chiso].Value.ToString());
            if(e.CommandName=="cmdAllow")
            {
                DataProvider.Instance.excuteNonQuery("UPDATE dbo.Comments SET Status='1' WHERE IDcomment='" + commmentID + "'");
                LoadComment();
            }
            else
                if(e.CommandName=="cmdDel")
            {
                int result = DataProvider.Instance.excuteNonQuery("DELETE FROM dbo.Comments WHERE IDcomment='"
                    + commmentID + "'");
                if (result > 0)
                {
                    Response.Write("<script>alert('Đã xóa comment thành công!')</script>");
                    LoadComment();
                }
            }
        }
    }
}