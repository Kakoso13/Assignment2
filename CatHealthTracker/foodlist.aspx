<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="foodlist.aspx.cs" Inherits="CatHealthTracker.foodlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Food list</h1>

    <p>Not enough food list for you?</p>
    <a href="foodlist-details.aspx">Add food list</a>

    <asp:GridView ID="grdFoodlist" runat="server" AutoGenerateColumns="false" 
         CssClass="table table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="FoodID" HeaderText="Food ID" />
            <asp:BoundField DataField="FoodType" HeaderText="Food Type" />
            <asp:BoundField DataField="FoodBrand" HeaderText="Food Brand" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" />
            <asp:HyperLinkField HeaderText="Edit" NavigateUrl="foodlist-details.aspx" Text="Edit"
                 DataNavigateUrlFormatString="foodlist-details.aspx?LogID={0}" DataNavigateUrlFields="FoodID" />
            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" HeaderText="Delete" />
        </Columns>
    </asp:GridView>
</asp:Content>
