using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference our db model
using CatHealthTracker.Models;

namespace CatHealthTracker
{
    public partial class foodlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetFoodlog();
            }
        }

        protected void GetFoodlog()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                var Foodlog = from f in db.Foodlogs
                              select f;

                grdFoodlog.DataSource = Foodlog.ToList();
                grdFoodlog.DataBind();
            }
        }
    }
}
