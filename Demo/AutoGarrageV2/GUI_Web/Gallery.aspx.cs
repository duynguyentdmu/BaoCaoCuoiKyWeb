using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dlImage.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Models");
            dlImage.DataBind();
        }
    }
}