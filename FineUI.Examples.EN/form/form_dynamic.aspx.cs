using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;


namespace FineUI.Examples.form
{
    public partial class form_dynamic : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Init(object sender, EventArgs e)
        {
            FormRow row = new FormRow();
            row.ID = "rowUser";
            Form2.Rows.Add(row);

            
            TextBox tbxUser = new TextBox();
            tbxUser.ID = "tbxUserName";
            tbxUser.Text = "";
            tbxUser.Label = "UserName";
            tbxUser.ShowLabel = true;
            tbxUser.ShowRedStar = true;
            tbxUser.Required = true;
            row.Items.Add(tbxUser);


            DropDownList ddlGender = new DropDownList();
            ddlGender.ID = "ddlGender";
            ddlGender.Label = "Gender (Auto PostBack)";
            ddlGender.Items.Add("man", "0");
            ddlGender.Items.Add("woman", "1");
            ddlGender.SelectedIndex = 0;
            ddlGender.AutoPostBack = true;
            ddlGender.SelectedIndexChanged += new EventHandler(ddlGender_SelectedIndexChanged);
            row.Items.Add(ddlGender);

        }

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            FormRow rowUser = Form2.FindControl("rowUser") as FormRow;
            DropDownList ddlGender = rowUser.FindControl("ddlGender") as DropDownList;

            Alert.ShowInTop("Please select gender: " + ddlGender.SelectedText);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            FormRow rowUser = Form2.FindControl("rowUser") as FormRow;
            TextBox tbxUserName = rowUser.FindControl("tbxUserName") as TextBox;
            DropDownList ddlGender = rowUser.FindControl("ddlGender") as DropDownList;


            Alert.ShowInTop("UserName: " + tbxUserName.Text + "  Gender: " + ddlGender.SelectedText);
        }
    }
}
