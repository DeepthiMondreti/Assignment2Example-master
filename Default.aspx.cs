using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //on the button click we make an instance of our donor
        //class and then write the values in the text boxes
        //to the class properties
        People people = new People();
        people.FirstName = txtFirstName.Text;
        people.LastName = txtLastName.Text;
        people.Address = txtAddress.Text;
        people.City = txtCity.Text;
        people.State = txtState.Text;
        people.Zip = txtZip.Text;
        people.Phone = txtPhone.Text;
        people.Email = txtEmail.Text;

        //we create a session variable to store our class
        //with all the values in it
        //so we can access it on other pages
        Session["donation"] = people;
        //then we redirect to the second page
        Response.Redirect("Default2.aspx");
    }
}