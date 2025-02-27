﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faculty_attendance_display.aspx.cs" Inherits="faculty_attendance_display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
    body {
        font-family: Arial, sans-serif;
        font-size: 16px;
        background-color: #F2F2F2;
    }

    form {
        max-width: 960px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    h1 {
        font-size: 36px;
        font-weight: bold;
        color: #3F51B5;
        margin-top: 0;
        text-align: center;
        text-decoration: underline;
    }

    label {
        display: block;
        font-size: 18px;
        margin-bottom: 10px;
        color: #3F51B5;
    }

    input[type="date"],
    select {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        margin-bottom: 20px;
        border: 2px solid #3F51B5;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="date"]::-webkit-calendar-picker-indicator {
        color: #3F51B5;
    }

    table {
        border-collapse: collapse;
        width: 100%;
        margin-bottom: 20px;
    }

    th {
        background-color: #3F51B5;
        color: #fff;
        font-size: 18px;
        font-weight: normal;
        padding: 10px;
        text-align: left;
    }

    td {
        border: 2px solid #3F51B5;
        padding: 10px;
        font-size: 16px;
    }

    .btn {
        display: block;
        background-color: #3F51B5;
        color: #fff;
        text-transform: uppercase;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: all 0.3s ease;
        font-size: 18px;
        margin: 0 auto;
    }

    .btn:hover {
        background-color: #ff6600;
    }
</style>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
            <asp:TextBox ID="txtDate" runat="server" type="date"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Student_Id" HeaderText="Student ID" />
                    <asp:BoundField DataField="student_name" HeaderText="Student Name" />
                    <asp:TemplateField HeaderText="Attendance">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlAttendance" runat="server">
                                <asp:ListItem Text="P" Value="P"></asp:ListItem>
                                <asp:ListItem Text="A" Value="A"></asp:ListItem>
                                <asp:ListItem Text="L" Value="L"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br/>
            <asp:Button ID="btnSave" Class="btn" runat="server" Text="Save Attendance" OnClick="btnSave_Click" />
        </div>
    </form>
</body>
</html>
