using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucAddModel : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                AddModel.Visible = false;
                ManageModel.Visible = false;
                EditModel.Visible = false;
                cbbCategory.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name ASC");
                cbbCategory.DataValueField = "IDcategory";
                cbbCategory.DataTextField = "Name";
                cbbCategory.DataBind();
                LoadModel();
                if (Convert.ToInt32(Session["Role"]) != 1)
                    lbtnManageModel.Visible = false;
            }
        }

        private void LoadModel()
        {
            gvModel.DataSource = DataProvider.Instance.excuteQuery("EXEC dbo.DataManageModel");
            gvModel.DataBind();
        }

        protected void lbtnAddModel_Click(object sender, EventArgs e)
        {
            AddModel.Visible = !AddModel.Visible;
            ManageModel.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(uploadImage.FileName=="")
            {
                lblErrorText.Text = "Chưa có ảnh đại diện!";
            }
            else
            {
                if (txtDescribe.Text == "")
                    lblErrorText.Text = "Chưa thêm mô tả!";
                else
                {
                    lblErrorText.Text = "";
                    string filename = uploadImage.FileName;
                    uploadImage.SaveAs(MapPath("~/img/Models/" + filename));
                    int result = DataProvider.Instance.excuteNonQuery("EXEC dbo.InsertModel @name , @describe , @idCategory , @image",
                        new object[] { txtName.Text, txtDescribe.Text, cbbCategory.SelectedValue, filename });
                    if(result>0)
                    {
                        Response.Write("<script>alert('Đã thêm mẫu xe thành công!'); window.location.href='AdminPage.aspx'</script>");
                    }
                }
            }
            
        }

        protected void lbtnManageModel_Click(object sender, EventArgs e)
        {
            AddModel.Visible = false;
            ManageModel.Visible = true;
        }

        protected void gvModel_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvModel.PageIndex = e.NewPageIndex;
            LoadModel();
        }

        int modelID;
        string editImage;
        protected void gvModel_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            cbbEditCategory.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name ASC");
            cbbEditCategory.DataValueField = "IDcategory";
            cbbEditCategory.DataTextField = "Name";
            cbbEditCategory.DataBind();
            int chiso = int.Parse(e.CommandArgument.ToString());
            modelID = int.Parse(gvModel.DataKeys[chiso].Value.ToString());
            if(e.CommandName=="cmdEdit")
            {
                txtEditModelName.Text = gvModel.Rows[chiso].Cells[0].Text;
                string categoryID = gvModel.Rows[chiso].Cells[1].Text;
                editImage = gvModel.Rows[chiso].Cells[2].Text;
                cbbEditCategory.Text = DataProvider.Instance.excuteScarlar("SELECT IDcategory FROM dbo.Categories WHERE Name='"
                    + categoryID + "'").ToString();
                txtEditDescribe.Text = DataProvider.Instance.excuteScarlar("SELECT Describe FROM dbo.Models WHERE IDmodel='" 
                    + modelID + "'").ToString();
                EditModel.Visible = true;
                gvModel.Visible = false;
            }
            else
                if(e.CommandName=="cmdDel")
            {
                int result = DataProvider.Instance.excuteNonQuery("DELETE FROM dbo.Models WHERE IDmodel='"
                    + modelID + "'");
                if(result>0)
                {
                    Response.Write("<script>alert('Đã xóa mẫu xe thành công!')</script>");
                    LoadModel();
                }
            }
        }

        protected void btnEditCancle_Click(object sender, EventArgs e)
        {
            EditModel.Visible = false;
            gvModel.Visible = true;
        }

        protected void btnSaveChange_Click(object sender, EventArgs e)
        {
            if (txtEditModelName.Text == "")
                lblErrorEdit.Text = "Chưa nhập tên mẫu xe!";
            else
            {
                if (txtEditDescribe.Text == "")
                    lblErrorEdit.Text = "Chưa có mô tả!";
                else
                {
                    int result;
                    if(uploadEditImage.FileName==null)
                    {
                        result = DataProvider.Instance.excuteNonQuery("EXEC dbo.UpdateModel @idmodel , @name , @describe , @idcategory , @image",
                            new object[] { modelID, txtEditModelName.Text, txtDescribe.Text, cbbEditCategory.SelectedValue, editImage });
                    }
                    else
                    {
                        result = DataProvider.Instance.excuteNonQuery("EXEC dbo.UpdateModel @idmodel , @name , @describe , @idcategory , @image",
                            new object[] { modelID, txtEditModelName.Text, txtDescribe.Text, cbbEditCategory.SelectedValue, uploadEditImage.FileName });

                    }
                    btnEditCancle_Click(sender, e);
                    lblErrorEdit.Text = "";

                }
            }
        }
    }
}