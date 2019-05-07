using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web.UC
{
    public partial class ucFooter : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            twitter.HRef = Convert.ToString(DataProvider.Instance.excuteScarlar("SELECT URL FROM Links WHERE Name='Twitter'"));
            youtube.HRef = Convert.ToString(DataProvider.Instance.excuteScarlar("SELECT URL FROM Links WHERE Name='Youtube'"));
            googleplus.HRef = Convert.ToString(DataProvider.Instance.excuteScarlar("SELECT URL FROM Links WHERE Name='GooglePlus'"));
            facebook.HRef = Convert.ToString(DataProvider.Instance.excuteScarlar("SELECT URL FROM Links WHERE Name='Facebook'"));
            twitter1.HRef = Convert.ToString(DataProvider.Instance.excuteScarlar("SELECT URL FROM Links WHERE Name='Twitter'"));
        }
    }
}