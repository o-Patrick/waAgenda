using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceUsuarios_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                lblMsg.Text = e.Exception.Message;
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSourceUsuarios_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                lblMsg.Text = e.Exception.Message;
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSourceUsuarios_Updating(object sender, SqlDataSourceCommandEventArgs e)
        {
            //
        }
    }
}