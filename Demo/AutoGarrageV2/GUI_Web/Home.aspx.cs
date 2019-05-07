using GUI_Web.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI_Web
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //slider
            Label1.Text = "Ferrari <br/>LaFerrari";
            Image1.ImageUrl = "img/LaFerrari-2014.jpg";
            HyperLink1.ImageUrl = Image1.ImageUrl;
            HyperLink1.NavigateUrl = "ModelDetail.aspx?idModel=8";
            Label2.Text = "BMW M3 2013";
            Image2.ImageUrl = "img/bmw-m3-2017.jpg";
            HyperLink2.ImageUrl = Image2.ImageUrl;
            HyperLink2.NavigateUrl = "ModelDetail.aspx?idModel=7";
            Label3.Text = "McLaren 675 LT";
            Image3.ImageUrl = "img/mclaren-675lt.jpg";
            HyperLink3.ImageUrl = Image3.ImageUrl;
            HyperLink3.NavigateUrl = "ModelDetail.aspx?idModel=11";
            Label4.Text = "Audi R8 2017";
            Image4.ImageUrl = "img/audi-r8-2017.jpg";
            HyperLink4.ImageUrl = Image4.ImageUrl;
            HyperLink4.NavigateUrl = "ModelDetail.aspx?idModel=5";
            Label5.Text = "Bentley Bentayga";
            Image5.ImageUrl = "img/bentley-bentayga-2016.jpg";
            HyperLink5.ImageUrl = Image5.ImageUrl;
            HyperLink5.NavigateUrl = "ModelDetail.aspx?idModel=9";

            //Videos
            linkVideo.ImageUrl = "img/Urus.png";
            linkVideo.NavigateUrl = DataProvider.Instance.excuteScarlar("SELECT TOP 1 URL FROM dbo.Videos").ToString();
            lblNameVideo.Text = DataProvider.Instance.excuteScarlar("SELECT TOP 1 Name FROM dbo.Videos").ToString();
            lblViews.Text = DataProvider.Instance.excuteScarlar("SELECT TOP 1 Views FROM dbo.Videos").ToString();
            lblAuthor.Text = DataProvider.Instance.excuteScarlar("SELECT TOP 1 Author FROM dbo.Videos").ToString();
            lblDate.Text = Convert.ToDateTime(DataProvider.Instance.excuteScarlar("SELECT TOP 1 Date FROM dbo.Videos").ToString()).ToShortDateString();
            //Newest
            linkNewest.ImageUrl = "img/page1-img2.jpg";
            linkNewest.NavigateUrl = "ModelDetail.aspx?idModel=1";
            lblNewest.Text = "FERRARI F430";
            lblDescribe.Text = "<p>Dòng xe cao cấp hiện đại trang bị nhiều công nghệ mới giúp tăng trải nghiệm lái xe</p>";
            //LatestReviews
            repeaterLatestReviews.DataSource = DataProvider.Instance.excuteQuery("EXEC dbo.Top3LatestReviews");
            repeaterLatestReviews.DataBind();
            //imglst1.ImageUrl = "img/page1-img3.jpg";
            //lblst1.Text = "land rover range rover sport 2013";
            //imglst2.ImageUrl = "img/page1-img4.jpg";
            //lblst2.Text = "Lamborghini Gallardo 2012";
            //imglst3.ImageUrl = "img/page1-img5.jpg";
            //lblst3.Text = "Aston Martin Dragon 88 Limited Edition";

            //Categories
            Repeater1.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name OFFSET 0 ROWS FETCH NEXT 8 ROWS ONLY");
            Repeater1.DataBind();
            Repeater2.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name OFFSET 8 ROWS FETCH NEXT 8 ROWS ONLY");
            Repeater2.DataBind();
            Repeater3.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name OFFSET 16 ROWS FETCH NEXT 8 ROWS ONLY");
            Repeater3.DataBind();
            Repeater4.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name OFFSET 24 ROWS FETCH NEXT 8 ROWS ONLY");
            Repeater4.DataBind();
            Repeater5.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name OFFSET 32 ROWS FETCH NEXT 8 ROWS ONLY");
            Repeater5.DataBind();
            Repeater6.DataSource = DataProvider.Instance.excuteQuery("SELECT * FROM dbo.Categories ORDER BY Name OFFSET 40 ROWS FETCH NEXT 8 ROWS ONLY");
            Repeater6.DataBind();
        }

    }
}