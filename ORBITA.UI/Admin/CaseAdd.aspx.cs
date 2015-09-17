using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ORBITA.Model;
using ORBITA.BLL;
using System.Text.RegularExpressions;

namespace ORBITA.UI.Admin
{
    public partial class CaseAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            CKEditor1.config.toolbar = new object[]
			{
				new object[] { "Image"},
				"/",
				
			};

            CKEditor1.config.width = "400px";
            CKEditor1.config.height = "200px";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Case mycase = new Case();

            mycase.country = this.txtCountry.Text;
            mycase.hotel = this.txtHotel.Text;

            string fckStr = CKEditor1.Text;

            MatchCollection matchs = Regex.Matches(fckStr, @"<img[^src]*src=""[^http\://]*(?<src>[^""]*?)""", RegexOptions.IgnoreCase);
            foreach(Match m in matchs)
            {
                mycase.image = m.Groups["src"].Value.ToString();
                break;
            }

           // if (string.IsNullOrEmpty(my))

        }
    }
}