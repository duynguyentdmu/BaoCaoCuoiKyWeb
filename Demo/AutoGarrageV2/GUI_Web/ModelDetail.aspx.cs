using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web
{
    public partial class ModelDetail : System.Web.UI.Page
    {
        string idReview;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["idModel"] == null)
                Response.Redirect("~/Home.aspx");
            string idModel = Request.QueryString["idModel"].ToString();
            DataTable dt = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Reviews WHERE IDmodel='" + idModel + "'");
            if (dt.Rows.Count > 0)
            {
                DataTable dataModel = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Models WHERE IDmodel='" + idModel + "'");
                if (dataModel.Rows.Count == 0)
                    lblTitle.Text = "Không tìm thấy mẫu xe này!";
                else
                {
                    lblTitle.Text = dataModel.Rows[0][1].ToString() + " Review";
                    lblDescribe.Text = dataModel.Rows[0][2].ToString();
                    imgReview.ImageUrl = "~/img/Models/" + dataModel.Rows[0][4].ToString();
                    idReview = dt.Rows[0][0].ToString();
                    lblContent.Text = dt.Rows[0][1].ToString();
                    dlComment.DataSource = DataProvider.Instance.excuteQuery("EXEC DataCommentForReviewPage @idreview",
                        new object[] { idReview });
                    dlComment.DataBind();
                }
            }
            else
            {
                content.Visible = false;
                Comment.Visible = false;
                lblTitle.Text = "Chưa có thông tin review cho mẫu xe này!";
            }

        }

        protected void btnComment_Click(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
                Response.Write("<script>alert('Hãy đăng nhập để sử dụng chức năng này!')</script>");
            else
            {
                string idUser = DataProvider.Instance.excuteScarlar("SELECT IDuser FROM dbo.Users WHERE Username='"
                    + Session["Username"].ToString() + "'").ToString();
                int result = DataProvider.Instance.excuteNonQuery("EXEC dbo.InsertComment @content , @iduser , @idreview",
                    new object[] { txtComment.Text, idUser, idReview });
                if (result > 0 && Convert.ToInt32(Session["Role"]) == 3)
                    Response.Write("<script>alert('Bình luận sẽ xuất hiện sau khi đã được phê duyệt!');window.location='" + Request.Url.ToString() + "';</script>");
                else
                    if (result > 0)
                    Response.Write("<script>alert('Đã thêm bình luận!');window.location='" + Request.Url.ToString() + "';</script>");

                txtComment.Text = "";
            }
        }
    }
}