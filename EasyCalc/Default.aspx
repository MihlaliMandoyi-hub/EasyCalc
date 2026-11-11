
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EasyCalc.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>EasyCalc - Simple Calculator</title>

    <style>
        body {
            font-family: Arial;
            background: #eaf4ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .calculator {
            background: white;
            padding: 30px;
            width: 320px;
            border-radius: 12px;
            box-shadow: 0 4px 15px #ccc;
        }

        h2 {
            text-align: center;
            color: #1672bd;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            box-sizing: border-box;
        }

        .btn {
            background: #1672bd;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .btn:hover {
            background: #10558e;
        }

        .result {
            text-align: center;
            font-size: 20px;
            color: green;
            margin-top: 15px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="calculator">

            <h2>EasyCalc</h2>
            <p style="text-align:center;">Simple Online Calculator</p>

            <asp:TextBox ID="txtNumber1" runat="server"
                placeholder="Enter first number"></asp:TextBox>

            <asp:TextBox ID="txtNumber2" runat="server"
                placeholder="Enter second number"></asp:TextBox>

            <asp:DropDownList ID="ddlOperation" runat="server">
                <asp:ListItem Value="+">Addition (+)</asp:ListItem>
                <asp:ListItem Value="-">Subtraction (-)</asp:ListItem>
                <asp:ListItem Value="*">Multiplication (*)</asp:ListItem>
                <asp:ListItem Value="/">Division (/)</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnCalculate" runat="server"
                Text="Calculate"
                CssClass="btn"
                OnClick="btnCalculate_Click" />

            <asp:Label ID="lblResult" runat="server"
                CssClass="result"></asp:Label>

        </div>

    </form>
</body>
</html>
