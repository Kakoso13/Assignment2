<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="exercise.aspx.cs" Inherits="CatHealthTracker.exercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Exercise log</h1>

    <a href="exercise-details.aspx">Add an exercise log</a>

    <asp:GridView ID="grdExerciselog" runat="server" AutoGenerateColumns="false" 
         CssClass="table table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="ExerciseID" HeaderText="Exercise ID" />
            <asp:BoundField DataField="ExerciseType" HeaderText="Exercise Type" />
            <asp:BoundField DataField="Duration" HeaderText="Exercise Duration" />
            <asp:BoundField DataField="CaloriesBurn" HeaderText="Calories Burned" />
            <asp:BoundField DataField="Daylist.Dayname" HeaderText="Day" />
            <asp:BoundField DataField="Calories" HeaderText="Food Calories" />
            <asp:HyperLinkField HeaderText="Edit" NavigateUrl="exercise-details.aspx" Text="Edit"
                 DataNavigateUrlFormatString="exercise-details.aspx?LogID={0}" DataNavigateUrlFields="LogID" />
            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" HeaderText="Delete" />
        </Columns>
    </asp:GridView>
</asp:Content>
