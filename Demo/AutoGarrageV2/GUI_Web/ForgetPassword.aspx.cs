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
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAgree_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Users WHERE Username='" + txtUsername.Text +
                    "' AND Email='" + txtEmail.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    int result = DataProvider.Instance.excuteNonQuery("UPDATE dbo.Users SET Password='" + txtNewPassword.Text +
                        "' WHERE Username='" + txtUsername.Text + "'");
                    if (result > 0)
                    {
                        Response.Write("<script>alert('Đổi mật khẩu thành công!'); window.location.href='Login.aspx'</script>");
                        //Response.Redirect("~/Home.aspx");
                    }
                }
                else lbErrorText.Text = "Tên đăng nhập và email không trùng khớp!";
            }
            catch
            {
                lbErrorText.Text = "Đổi mật khẩu thất bại!";
            }
        }
    }
}