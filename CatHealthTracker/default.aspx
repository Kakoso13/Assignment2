<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CatHealthTracker._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Cat's Health Tracker</h1>

    <div class="well">
        Cat Health Tracker is useful site to track your cat's health.
        Also, you as human can be more caring to your cat.
        <br />These days is not just 'HUMAN' on diet, 'CAT' also can too.
        <br />If you want to know how much calories your cat needs, use this feline calories calculator.
    </div>
    <h4>Feline calories calculator</h4>
    <div class="form-group">
        <label for="txtWeight">Weight in pounds(lb):</label>
        <asp:TextBox ID="txtWeight" runat="server" required type="number"/>
    </div>
    <div class="col-sm-offset-2">
        <asp:Button ID="btnSubmit" runat="server" Text="Calculate" CssClass="btn btn-primary"
         OnClick="btnSubmit_Click" />
    </div>
    
    <asp:Panel ID="panelResults" runat="server" CssClass="col-sm3 col-md-3">
        <h4>Result</h4>
        <div>
            <label for="txtMass">Weight in kg: </label>
            <asp:TextBox ID="txtMass" runat="server" />
        </div>
        <div>
            <label for="txtCalorie">Calories per day: </label>
            <asp:TextBox ID="txtCalorie" runat="server" />
        </div>
    </asp:Panel>

</asp:Content>
