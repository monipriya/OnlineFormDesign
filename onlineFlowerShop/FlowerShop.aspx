<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlowerShop.aspx.cs" Inherits="onlineFlowerShop.FlowerShop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
       
        
    </title>
</head>
<body>
     <script src="Validation.js"></script>
    <link rel="StyleSheet" type="text/css" href="CSS/Design.css" />
    <form id="FlowerShop" runat="server">
    <div>
            <h1 class="title">FLOWER SHOP ONLINE</h1>
        <h2 class="design"></h2>
        <div class="page">
            <img class="flower" src="CSS/img.png" />
            </div>
            <div class="column">
                <h2>Secure Payment Page</h2>
                <div>
                    <table style="width: 130%">
                        <tr>
                            <td><asp:Label ID="language" runat="server" Text="<b>Select Language</b>"></asp:Label></td>
                            <td><asp:DropDownList ID="landuage" runat="server" Width="200px">
                                    <asp:ListItem Text="English" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Tamil"></asp:ListItem>
                                    <asp:ListItem Text="Malayalam"></asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="paymentMethod" runat="server" Text="Payment Method"></asp:Label></td>
                            <td><asp:Label ID="method" runat="server" Text="<b>Visa</b>"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="description" runat="server" Text="Description"></asp:Label></td>
                            <td><asp:Label ID="amount" runat="server" Text="<b>Item ordered</b>"></asp:Label></td>
                            <td rowspan="2">
                                <asp:Image ID="logo" runat="server" ImageUrl="~/CSS/logo.png" CssClass="logo" /></td>
                        </tr>
                        <tr>
                            <td>Amount</td>
                            <td><b>£100.00</b></td>
                        </tr>
                    </table>
                </div>
                <div class="tableColor">
                    <h3>Card details</h3>
                    <table style="width: 85%">
                        <tr>
                            <td>You must fill in fields marked with *</td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="cardNumber" runat="server" Text="*Card number"></asp:Label></td>
                            <td><asp:TextBox ID="txtcardNumber" runat="server" Width="120%" onchange="validateCardNumber()" required=""></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:HyperLink runat="server" NavigateUrl="https://en.wikipedia.org/wiki/Card_security_code" Text="*Security Code"></asp:HyperLink></td>
                            <td><asp:TextBox ID="txtSecurityCode" runat="server" MaxLength="3" Width="30%" onchange="validateSecurityCode()" required=""></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="date" runat="server" Text="*Expiry date"></asp:Label></td>
                            <td><asp:DropDownList ID="listMonth" runat="server" with="30%" onchange="validateExpiryMonth()" required="">
                                    <asp:ListItem Value=" "></asp:ListItem>
                                    <asp:ListItem Value="01"></asp:ListItem>
                                    <asp:ListItem Value="02"></asp:ListItem>
                                    <asp:ListItem Value="03"></asp:ListItem>
                                    <asp:ListItem Value="04"></asp:ListItem>
                                    <asp:ListItem Value="05"></asp:ListItem>
                                    <asp:ListItem Value="06"></asp:ListItem>
                                    <asp:ListItem Value="07"></asp:ListItem>
                                    <asp:ListItem Value="08"></asp:ListItem>
                                    <asp:ListItem Value="09"></asp:ListItem>
                                    <asp:ListItem Value="10"></asp:ListItem>
                                    <asp:ListItem Value="11"></asp:ListItem>
                                    <asp:ListItem Value="12"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="listYear" runat="server" Width="30%" onchange="validateExpiryYear()" required="">
                                    <asp:ListItem Value="    "></asp:ListItem>
                                    <asp:ListItem Value="2030"></asp:ListItem>
                                    <asp:ListItem Value="2029"></asp:ListItem>
                                    <asp:ListItem Value="2028"></asp:ListItem>
                                    <asp:ListItem Value="2027"></asp:ListItem>
                                    <asp:ListItem Value="2026"></asp:ListItem>
                                    <asp:ListItem Value="2025"></asp:ListItem>
                                    <asp:ListItem Value="2024"></asp:ListItem>
                                    <asp:ListItem Value="2023"></asp:ListItem>
                                    <asp:ListItem Value="2022"></asp:ListItem>
                                    <asp:ListItem Value="2021"></asp:ListItem>
                                    <asp:ListItem Value="2020"></asp:ListItem>
                                    <asp:ListItem Value="2019"></asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="cardholderName" runat="server" Text="*Cardholder's name"></asp:Label></td>
                            <td><asp:TextBox ID="txtname" runat="server" Width="120%" onchange="validateName()" required=""></asp:TextBox></td>
                        </tr>
                    </table>
                    <div>
                        <h3>Carholder details</h3>
                        <table style="width: 100%">
                            <tr>
                                <td>You must filled in fields marked with *</td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="address1" runat="server" Text="*Address 1"></asp:Label></td>
                                <td><asp:TextBox ID="txtAddress1" runat="server" Width="250px" onchange="validateAddress()" required=""></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="address2" runat="server" Text="&nbsp;&nbsp;Address 2"></asp:Label></td>
                                <td><asp:TextBox ID="txtAddress2" runat="server" Width="250px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="address3" runat="server" Text="&nbsp;&nbsp;Address 3"></asp:Label></td>
                                <td><asp:TextBox ID="txtAddress3" runat="server" Width="250px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="city" runat="server" Text="*Town/City"></asp:Label></td>
                                <td><asp:TextBox ID="txtCity" runat="server" Width="250px" required=""></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="region" runat="server" Text="&nbsp;&nbsp;Region"></asp:Label></td>
                                <td><asp:TextBox ID="txtRegion" runat="server" Width="250px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="code" runat="server" Text="*Postcode/Zip code"></asp:Label></td>
                                <td><asp:TextBox ID="txtCode" runat="server" onchange="validatePostcode()" Width="100px" required=""></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="country" runat="server" Text="*Country"></asp:Label></td>
                                <td><asp:DropDownList ID="listCountry" runat="server" Width="50%" required="">
                                        <asp:ListItem Text="United Kingdom"></asp:ListItem>
                                        <asp:ListItem Text="India"></asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="telephone" runat="server" Text="&nbsp;&nbsp;Telephone"></asp:Label></td>
                                <td><asp:TextBox ID="txtTelephone" runat="server" onchange="validatePhoneNo()"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="fax" runat="server" Text="&nbsp;&nbsp;Fax"></asp:Label></td>
                                <td><asp:TextBox ID="txtFax" runat="server" onchange="validateFax()"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="email" runat="server" Text="*Email address"></asp:Label></td>
                                <td><asp:TextBox ID="txtEmail" runat="server" Width="250px" onchange="validateEmail()" required=""></asp:TextBox></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div>
                    <table style="width: 100%">
                        <tr>
                            <td><asp:ImageButton ImageUrl="~/CSS/startAgain.png" runat="server" CssClass="imageAction"  />
                                <asp:Label ID="startAgain" runat="server" CssClass="action" Text="START AGAIN"></asp:Label></td>
                            <td style="text-align: right">
                                <asp:Label ID="payment" runat="server" CssClass="action" Text="MAKE PAYMENT"></asp:Label>
                                <asp:ImageButton ImageUrl="~/CSS/Payment.png" runat="server" CssClass="imageAction" OnClick="Payment_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ImageUrl="~/CSS/cancel.png" runat="server" CssClass="imageAction" />
                                <asp:Label  runat="server" CssClass="ACTION" Text="CANCEL"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <hr />
                <div class="ACTION">
                    <h2>Refunds and Returns</h2>
                    <p>
                        For more information visit our
                    <asp:HyperLink NavigateUrl="http://support.worldpay.com/support/kb/bg/transactionmanagement/tm5100.html" runat="server" Text="Refunds and Returns Policy" />
                        <br />
                    </p>
                    <table style="width: 100%">
                        <tr>
                            <td><asp:Image ImageUrl="~/CSS/pay.png" runat="server" /></td>
                            <td><a style="color: black">For help with your payment visit the </a>
                                <asp:HyperLink NavigateUrl="https://www.worldpay.com/en-gb/enterprise-support" runat="server" Text="WorldPay Help" ForeColor="Black" /></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="end">
                <asp:Image ID="question" runat="server" ImageUrl="~/CSS/gg1.png" CssClass="image" /><br />
                <asp:Image ID="questionMark" runat="server" ImageUrl="~/CSS/gg1.png" CssClass="secondImage" />
            </div>
        </div>
        <div class="footer" >
        <h1 >Thank you for shopping at Flowershop. Have a nice day</h1>
        </div>
    </form>
     </body>
</html>
   