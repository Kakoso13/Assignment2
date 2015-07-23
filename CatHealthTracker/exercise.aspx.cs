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
    public partial class exercise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetExercise();
            }
        }

        protected void GetExercise()
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                var Exercise = from e in db.Exerciselogs
                              select e;

                grdExerciselog.DataSource = Exercise.ToList();
                grdExerciselog.DataBind();
            }
        }
    }
}
