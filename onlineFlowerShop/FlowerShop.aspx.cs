using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineFlowerShop
{
    public partial class FlowerShop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void StartAgainClick(object sender, EventArgs e)
        {
            Response.Redirect("FlowerShop.aspx");
        }
        protected void CancelClick(object sender, EventArgs e)
        {

        }

        protected void Payment_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}