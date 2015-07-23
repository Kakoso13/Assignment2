<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="goals.aspx.cs" Inherits="CatHealthTracker.goals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Goals log</h1>

    <a href="goals-details.aspx">Add a goal for your cat</a>

    <asp:GridView ID="grdGoals" runat="server" AutoGenerateColumns="false" 
         CssClass="table table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="GoalID" HeaderText="Goal ID" />
            <asp:BoundField DataField="GoalName" HeaderText="Goal Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:BoundField DataField="Goal Time" HeaderText="Goal Time" />
            <asp:HyperLinkField HeaderText="Edit" NavigateUrl="goals-details.aspx" Text="Edit"
                 DataNavigateUrlFormatString="goals-details.aspx?LogID={0}" DataNavigateUrlFields="GoalID" />
            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" HeaderText="Delete" />
        </Columns>
    </asp:GridView>
</asp:Content>
