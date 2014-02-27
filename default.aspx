<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Mortgage Loan Calculator </title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1> Mortgage Loan Calculator </h1>
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="85px" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ClearButton" runat="server" Text="Clear" Width="85px" />
        
        <br />
        <br />
        Welcome to our Mortgage Calculator. Please complete the filelds above to have your monthly payment and loan repayment schedule calculated for you.<br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
        </div>
    </form>
</body>
</html>
