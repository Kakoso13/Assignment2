using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference to the db model
using CatHealthTracker.Models;

namespace CatHealthTracker
{
    public partial class foodlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGoals();
            }
        }

        protected void GetGoals()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                var Foodlist = from f in db.Foodlists
                               select f;

                grdFoodlist.DataSource = Foodlist.ToList();
                grdFoodlist.DataBind();

            }
        }
    }
}
