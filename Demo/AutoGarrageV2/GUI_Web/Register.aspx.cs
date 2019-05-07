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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = DataProvider.Instance.excuteQuery("SELECT * FROM Users WHERE Username='" + txtUsername.Text + "'");
                if (dt.Rows.Count > 0)
                    lblErrorText.Text = "Tên đăng nhập đã tồn tại. Mời nhập tên đăng nhập khác!";
                else
                {
                    dt = DataProvider.Instance.excuteQuery("SELECT * FROM Users WHERE Email='" + txtEmail.Value + "'");
                    if (dt.Rows.Count > 0)
                        lblErrorText.Text = "Email đã tồn tại. Mời nhập lại email khác!";
                    else
                    {
                        if (txtPassword.Value == txtPassword2.Value)
                        {
                            if (txtPassword.Value.Count() > 5)
                            {
                                int result = DataProvider.Instance.excuteNonQuery("EXEC dbo.Register @username , @email , @password",
                                    new object[] { txtUsername.Text, txtEmail.Value, txtPassword.Value });
                                if (result > 0)
                                    Response.Write("<script>alert('Đăng ký thành công! Tài khoản của bạn sẽ được xét duyệt! Hãy kiên nhẫn!'); window.location.href='Home.aspx'</script>");
                            }
                            else
                                lblErrorText.Text = "Mật khẩu quá ngắn!(Mật khẩu phải trên 5 kí tự)";
                        }
                        else
                            lblErrorText.Text = "Mật khẩu chưa trùng khớp!";
                    }
                }
            }
            catch(Exception mss)
            {
                lblErrorText.Text = mss.Message.ToString();
            }
        }
    }
}