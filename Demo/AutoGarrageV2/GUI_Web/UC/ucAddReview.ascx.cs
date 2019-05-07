using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucAddReview : System.Web.UI.UserControl
    {
        DataTable dtReview;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {                
                AddReview.Visible = false;
                ManageReview.Visible = false;
                EditReview.Visible = false;
                cbbCategory.DataSource = DataProvider.Instance.excuteQuery("EXEC dbo.DataCategoryNonReview");
                cbbCategory.DataValueField = "IDcategory";
                cbbCategory.DataTextField = "Name";
                cbbCategory.DataBind();
                cbbNameModel.DataSource = DataProvider.Instance.excuteQuery("EXEC dbo.DataModelNoneReview @category",
                    new object[] { cbbCategory.SelectedValue });
                cbbNameModel.DataValueField = "IDmodel";
                cbbNameModel.DataTextField = "Name";
                cbbNameModel.DataBind();
                LoadReview();

            }
        }

        private void LoadReview()
        {
            dtReview = DataProvider.Instance.excuteQuery("EXEC dbo.DataReview @role , @author",
                    new object[] { Session["Role"].ToString(), Session["Username"].ToString() });
            gvReview.DataSource = dtReview;
            gvReview.DataBind();
        }

        protected void lbtnAddReview_Click(object sender, EventArgs e)
        {
            AddReview.Visible = !AddReview.Visible;
            ManageReview.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtContent.Text == "")
                lblErrorText.Text = "Chưa có nội dung review.";
            else
            {
                if (cbbNameModel.SelectedValue == null)
                {
                    lblErrorText.Text = "Mẫu xe không hợp lệ!";
                }
                else
                {
                    lblErrorText.Text = "";
                    int result = DataProvider.Instance.excuteNonQuery("EXEC dbo.InsertReview @content , @idmodel , @author",
                        new object[] { txtContent.Text, cbbNameModel.SelectedValue, Session["Username"].ToString() });
                    if (result > 0)
                        Response.Write("<script>alert('Đã thêm bài review thành công!'); window.location.href='AdminPage.aspx'</script>");
                }
            }
        }

        protected void cbbCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbbNameModel.DataSource = DataProvider.Instance.excuteQuery("EXEC dbo.DataModelNoneReview @category",
                new object[] { cbbCategory.SelectedValue });
            cbbNameModel.DataValueField = "IDmodel";
            cbbNameModel.DataTextField = "Name";
            cbbNameModel.DataBind();
        }

        protected void lbtnManageReview_Click(object sender, EventArgs e)
        {
            AddReview.Visible = false;
            ManageReview.Visible = true;
        }

        protected void btnCancleEdit_Click(object sender, EventArgs e)
        {
            EditReview.Visible = false;
            gvReview.Visible = true;
        }

        protected void gvReview_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvReview.PageIndex = e.NewPageIndex;
            LoadReview();
        }

        int reviewID;

        protected void gvReview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            reviewID = int.Parse(gvReview.DataKeys[chiso].Value.ToString());
            if(e.CommandName=="cmdEdit")
            {
                EditReview.Visible = true;
                gvReview.Visible = false;
                //Xử lý dữ liệu
                lblNameEdit.Text = gvReview.Rows[chiso].Cells[0].Text;
                txtEditContent.Text = Convert.ToString(DataProvider.Instance.excuteScarlar("SELECT ContentReview FROM dbo.Reviews WHERE IDreviews='"
                    + reviewID + "'"));
            }
            else
                if(e.CommandName=="cmdDel")
            {
                int result = DataProvider.Instance.excuteNonQuery("DELETE FROM dbo.Reviews WHERE IDreviews='"
                    + reviewID + "'");
                if (result > 0)
                {
                    Response.Write("<script>alert('Đã xóa bài review thành công!')</script>");
                    LoadReview();
                }
            }
        }

        protected void btnSaveEdit_Click(object sender, EventArgs e)
        {
            if (txtEditContent.Text == "")
                lblErrorEdit.Text = "Nội dung không được để trống!";
            else
            {
                int result = DataProvider.Instance.excuteNonQuery("EXEC dbo.UpdateReview @idreview , @content",
                    new object[] { reviewID, txtEditContent.Text });
                if (result > 0)
                {
                    Response.Write("<script>alert('Đã lưu bài viết!')</script>");
                    lblErrorEdit.Text = "";
                    btnCancleEdit_Click(sender, e);
                }
                else
                    Response.Write("<script>alert('Đã có lỗi xảy ra, chưa lưu được bài viết!')</script>");
            }
        }
    }
}