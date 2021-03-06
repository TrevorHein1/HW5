﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Mortgage Loan Calculator </title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1> $ Mortgage Loan Calculator $ </h1>
        <br />
     
        <span class="auto-style1">*</span>Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
            ControlToValidate="tbLoanAmt"
             ErrorMessage="Loan Amount is a required field."
              ForeColor="Red">
            </asp:RequiredFieldValidator>

        <br /><br />      
        
        <span class="auto-style1">*</span>Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
            ControlToValidate="tbAnnualInterest"
             ErrorMessage="Annual Interest is a required field."
              ForeColor="Red">
            </asp:RequiredFieldValidator>

        <br /><br />

        <span class="auto-style1">*</span>Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
            ControlToValidate="tbLoanTerm"
             ErrorMessage="Loan Term is a required field."
              ForeColor="Red">
            </asp:RequiredFieldValidator>

        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="85px" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ClearButton" runat="server" Text="Clear" Width="85px" />
        
        <br />
        <br />

        <% If Not IsPostBack Then%>
            <!-- This is the first time the page has loaded. There is nothing to display. -->

        Welcome to our Mortgage Calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you. <span class="auto-style1">
        <br />
        *</span> Required Fields<br />
        <br />

        <% Else%>
            <!-- Then the page is in postback so show the monthly payment and payment schedule. -->

            <div id="payment">
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
            </div>

        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="grid-view" AlternatingRowStyle-CssClass="alternate" RowStyle-CssClass="row"  />

        <% End If%>
        
      
    </div>

    </form>
</body>
</html>
