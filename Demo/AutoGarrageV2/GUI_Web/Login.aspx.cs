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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = DataProvider.Instance.excuteQuery("EXEC Login @username , @password", new object[] { txtUsername.Text, txtPassword.Value });
                if (dt.Rows.Count > 0)
                {
                    if (Convert.ToInt32(DataProvider.Instance.excuteScarlar("SELECT Role FROM dbo.Users WHERE Username='"
                        + txtUsername.Text + "'")) != 0)
                    {
                        Session["Username"] = txtUsername.Text;
                        Response.Cookies.Add(Cookies.Instance.CreateCookie(txtUsername.Text));//Tạo cookies trên máy khách
                        Session.Timeout = 60;
                        Response.Redirect("~/Home.aspx");
                    }
                    else
                        lblErrorText.Text = "Tài khoản chưa được xét duyệt!";
                }
                else
                    lblErrorText.Text = "Tên đăng nhập hoặc mật khẩu không trùng khớp!";
            }
            catch
            {
                lblErrorText.Text = "Đăng nhập thất bại!";
            }
        }
    }
}