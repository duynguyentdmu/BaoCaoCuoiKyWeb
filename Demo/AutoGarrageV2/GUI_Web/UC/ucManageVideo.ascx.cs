using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucManageVideo : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ManageVideo.Visible = false;
                LoadVideo();
                cbbModel.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Models ORDER BY IDcategory");
                cbbModel.DataValueField = "IDmodel";
                cbbModel.DataTextField = "Name";
                cbbModel.DataBind();
                AddVideo.Visible = false;
                cbbModel.Visible = false;
            }
        }

        private void LoadVideo()
        {
            gvVideo.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Videos");
            gvVideo.DataBind();
        }

        protected void lbtnManageVideo_Click(object sender, EventArgs e)
        {
            ManageVideo.Visible = !ManageVideo.Visible;
        }

        protected void gvVideo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvVideo.PageIndex = e.NewPageIndex;
            LoadVideo();
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            txtNameVideo.Text = "";
            txtURL.Text = "";
            chkbModel.Checked = false;
            lblErrorText.Text = "";
            AddVideo.Visible = false;
            lbtnAddVideo.Visible = true;
            gvVideo.Visible = true;
        }

        protected void lbtnAddVideo_Click(object sender, EventArgs e)
        {
            lbtnAddVideo.Visible = false;
            gvVideo.Visible = false;
            AddVideo.Visible = true;
        }

        protected void chkbModel_CheckedChanged(object sender, EventArgs e)
        {
            cbbModel.Visible = !cbbModel.Visible;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string model;
            if (chkbModel.Checked)
                model = cbbModel.SelectedValue;
            else model = "";
            if (txtNameVideo.Text == "")
                lblErrorText.Text = "Chưa nhập thông tin tên Video!";
            else
            {
                int result = DataProvider.Instance.excuteNonQuery("EXEC dbo.InsertVideo @name , @url , @author",
                    new object[] { txtNameVideo.Text, txtURL.Text, Session["Username"].ToString() });
                if (result > 0)
                {
                    Response.Write("<script>alert('Đã thêm Video vào cơ sở dữ liệu!')</script>");
                    Response.Redirect("~/AdminPage.aspx");
                }
                else
                    lblErrorText.Text = "Chưa thêm được!";
            }
        }

        protected void gvVideo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int videoID = int.Parse(gvVideo.DataKeys[e.RowIndex].Value.ToString());
            if (DataProvider.Instance.excuteNonQuery("DELETE FROM dbo.Videos WHERE IDvideo='" + videoID + "'") > 0)
            {
                LoadVideo();
                Response.Write("<script>alert('Đã xóa Video!')</script>");
            }
            else
                Response.Write("<script>alert('Không thể xóa Video này! Hãy thử lại sau!')</script>");
        }
    }
}