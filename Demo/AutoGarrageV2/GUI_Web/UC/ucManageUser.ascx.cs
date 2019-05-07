using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucManageUser : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUser();
                gvUser.Visible = false;
            }
        }

        private void LoadUser()
        {
            gvUser.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM Users WHERE Role!=0");
            gvUser.DataBind();
        }

        protected void lbtnManageUser_Click(object sender, EventArgs e)
        {
            gvUser.Visible = !gvUser.Visible;
            if (gvUser.Visible)
                LoadUser();
        }

        protected void gvUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUser.EditIndex = e.NewEditIndex;
            LoadUser();
        }

        protected void gvUser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUser.EditIndex = -1;
            LoadUser();
        }

        protected void gvUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int userID = int.Parse(gvUser.DataKeys[e.RowIndex].Value.ToString());
            string userName = (gvUser.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
            string passWord = (gvUser.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string email = (gvUser.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            int role = Convert.ToInt16((gvUser.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text);

            if (userName == "")
                Response.Write("<script>alert('Tên không được rỗng!')</script>");
            else
            {
                if (passWord == "")
                    Response.Write("<script>alert('Password không hợp lệ!')</script>");
                else
                {
                    DataProvider.Instance.excuteNonQuery("UPDATE dbo.Users SET Username = '"
                       + userName + "' WHERE IDuser = '" + userID + "'");
                    DataProvider.Instance.excuteNonQuery("UPDATE dbo.Users SET Password='"
                         + passWord + "' WHERE IDuser='" + userID + "'");
                    DataProvider.Instance.excuteNonQuery("UPDATE dbo.Users SET Email='"
                        + email + "' WHERE IDuser='" + userID + "'");
                    DataProvider.Instance.excuteNonQuery("UPDATE dbo.Users SET Role='"
                        + role + "' WHERE IDuser='" + userID + "'");
                }
                gvUser.EditIndex = -1;
                LoadUser();
            }
        }

        protected void gvUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int userID = int.Parse(gvUser.DataKeys[e.RowIndex].Value.ToString());
            if (DataProvider.Instance.excuteNonQuery("DELETE FROM Users WHERE IDuser='" + userID + "'") > 0)
            {
                LoadUser();
                Response.Write("<script>alert('Đã xóa tài khoản!')</script>");
            }
            else
                Response.Write("<script>alert('Không thể xóa tài khoản! Hãy thử lại sau!')</script>");
        }

        protected void gvUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUser.PageIndex = e.NewPageIndex;
            LoadUser();
        }
    }
}