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

    protected void btnMaakKaart_Click(object sender, EventArgs e)
    {
        //Het aanmaken van Variablen
        string Naam, Geslacht, Hobby, Opleiding;
        // De variablen Verbinden
        Naam = txtNaam.Text;
        Geslacht = rbGeslacht.SelectedValue;
        Opleiding = cbOpleiding.SelectedValue;
        Hobby = "hobby: ";
        // Als de value 1 is dan wordt Hobby gamen etc.
        if (chkHobby.SelectedValue=="1")
        {
            Hobby += "Gamen ";
        }
        if (chkHobby.SelectedValue == "2")
        {
            Hobby += "Programmeren";
        }
        //Alles wordt uitgeprint op het scherm
        //Response.Write("Naam : " + Naam + "<br ?>");
        //Response.Write(Hobby + "<br ?>");
        //Response.Write("Opleiding : " + Opleiding + "<br ?>");
        //.Write("Geslacht : " + Geslacht + "<br ?>");

        string nawTekst;
        nawTekst = "<br/>" + "Naam : " + Naam + "<br />" + Hobby + "<br />" + "Opleiding : " +
            Opleiding + "<br />" + "Geslacht : " + Geslacht + "<br />" + "<br />";
        lblNaw.Text = nawTekst;
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblForm.SelectedValue=="1")
        {
            Panel1.Visible = true;
        }
        if (rblForm.SelectedValue == "2")
        {
            Panel1.Visible = false;
        }
    }
}