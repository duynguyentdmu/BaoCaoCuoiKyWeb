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
    public partial class ucManageCategory : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategory();
                Category.Visible = false;
                AddCategory.Visible = false;
            }
        }

        private void LoadCategory()
        {
            gvCategory.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name ASC");
            gvCategory.DataBind();
        }

        protected void lbtnCategory_Click(object sender, EventArgs e)
        {
            Category.Visible = !Category.Visible;
        }

        protected void gvCategory_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvCategory.EditIndex = e.NewEditIndex;
            LoadCategory();
        }

        protected void gvCategory_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCategory.EditIndex = -1;
            LoadCategory();
        }

        protected void gvCategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int categoryID = int.Parse(gvCategory.DataKeys[e.RowIndex].Value.ToString());
            DataTable dt = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Models WHERE IDcategory='" + categoryID + "'");
            if (dt.Rows.Count > 0)
                Response.Write("<script>alert('Không thể xóa vì còn chứa nội dung!')</script>");
            else
            {
                if (DataProvider.Instance.excuteNonQuery("DELETE FROM dbo.Categories WHERE IDcategory='" + categoryID + "'") > 0)
                {
                    LoadCategory();
                    Response.Write("<script>alert('Đã xóa hãng xe!')</script>");
                }
                else
                    Response.Write("<script>alert('Không thể xóa hãng xe này!')</script>");
            }
        }

        protected void gvCategory_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int categoryID = int.Parse(gvCategory.DataKeys[e.RowIndex].Value.ToString());
            string name = (gvCategory.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
            string website = (gvCategory.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;

            if (name == "")
                Response.Write("<script>alert('Tên hãng xe không được rỗng!')</script>");
            else
                DataProvider.Instance.excuteNonQuery("EXEC dbo.UpdateCategory @idcat , @name , @website",
                    new object[] { categoryID, name, website });
            gvCategory.EditIndex = -1;
            LoadCategory();
        }

        protected void lbtnAddCategory_Click(object sender, EventArgs e)
        {
            lbtnAddCategory.Visible = false;
            gvCategory.Visible = false;
            AddCategory.Visible = true;
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            txtNameCategory.Text = "";
            txtWebsite.Text = "";
            AddCategory.Visible = false;
            lbtnAddCategory.Visible = true;
            gvCategory.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DataTable dt = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories WHERE Name='"
                + txtNameCategory.Text + "'");
            if (dt.Rows.Count > 0)
                lblErrorText.Text = "Đã tồn tại hãng xe này trong cơ sở dữ liệu!";
            else
            {
                int result = DataProvider.Instance.excuteNonQuery("EXEC dbo.InsertCategory @name , @website",
                    new object[] { txtNameCategory.Text, txtWebsite.Text });
                if(result>0)
                {
                    Response.Write("<script>alert('Đã thêm hãng xe thành công!')</script>");
                    btnCancle_Click(sender, e);
                }
            }
        }

        protected void gvCategory_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCategory.PageIndex = e.NewPageIndex;
            LoadCategory();
        }
    }
}