<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="foodlog.aspx.cs" Inherits="CatHealthTracker.foodlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Food log</h1>

    <a href="foodlog-details.aspx">Add a food log</a>

    <asp:GridView ID="grdFoodlog" runat="server" AutoGenerateColumns="false" 
         CssClass="table table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="logID" HeaderText="Log ID" />
            <asp:BoundField DataField="Daylist.Dayname" HeaderText="Day" />
            <asp:BoundField DataField="FoodName" HeaderText="Food name" />
            <asp:BoundField DataField="Foodlist.FoodType" HeaderText="Food type" />
            <asp:BoundField DataField="Calories" HeaderText="Food Calories" />
            <asp:HyperLinkField HeaderText="Edit" NavigateUrl="foodlog-details.aspx" Text="Edit"
                 DataNavigateUrlFormatString="foodlog-details.aspx?LogID={0}" DataNavigateUrlFields="LogID" />
            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" HeaderText="Delete" />
        </Columns>
    </asp:GridView>
</asp:Content>
