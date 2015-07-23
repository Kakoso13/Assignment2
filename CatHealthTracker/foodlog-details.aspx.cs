using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference to db model
using CatHealthTracker.Models;

namespace CatHealthTracker
{
    public partial class foodlog_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if loading for the first time, 
                //fill the day dropdown and food type dropdown
                GetDay();
                GetFoodtype();
            }
            
        }

        protected void GetDay()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                //Get selected day list
                var Daylists = from d in db.Daylists
                              orderby d.DayID
                              select d;

                //bind to the dropdown list
                ddlDay.DataSource = Daylists.ToList();
                ddlDay.DataBind();

                //add default option to the dropdown after we fill it
                ListItem DefaultItem = new ListItem("-Select-", "0");
                ddlDay.Items.Insert(0, DefaultItem);

            }

        }

        protected void GetFoodtype()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                //Get selected day list
                var Foodlist = from d in db.Foodlists
                               orderby d.FoodID
                               select d;

                //bind to the dropdown list
                ddlFoodtype.DataSource = Foodlist.ToList();
                ddlFoodtype.DataBind();

                //add default option to the dropdown after we fill it
                ListItem DefaultItem = new ListItem("-Select-", "0");
                ddlFoodtype.Items.Insert(0, DefaultItem);

            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //connect
            using (DefaultConnection db = new DefaultConnection())
            {
                //create a new food log and fill the properties
                Foodlog objC = new Foodlog();

                objC.FoodName = txtFoodname.Text;
                objC.Calories = Convert.ToInt32(txtCalCount.Text);
                objC.FoodID = Convert.ToInt32(ddlFoodtype.SelectedValue);
                objC.DayID = Convert.ToInt32(ddlDay.SelectedValue);

                //save
                db.Foodlogs.Add(objC);
                db.SaveChanges();

                //redirect
                Response.Redirect("foodlog.aspx");
            }
        }
    }
}
