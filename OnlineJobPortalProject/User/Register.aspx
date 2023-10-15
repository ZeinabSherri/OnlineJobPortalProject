<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineJobPortalProject.User.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
    <div class="container pt-50 pt-40"> <%--padding top and button--%>
        <div class="row">
            <div class="col-12 pb-20">
                <asp:Label ID="LblMsg" runat="server" Visible="false"></asp:Label>
            </div>
            <div class="col-12">
                <h2 class="contact-title text-center">Sign Up</h2>
            </div>
            <div class="col-lg-8 mx-auto">
                <div class="form-contact contact_form">
                    <div class="row">
                        <div class="col-12">
                            <h6>Login Information</h6>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label>Username</label>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter username" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Re-enter Password" TextMode="Password" required></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match."
                                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                    Font-Size="Small"></asp:CompareValidator>
                            </div>
                        </div>
                        <div class="col-12">
                            <h6>Personal Information</h6>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label>Full Name</label>
                                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter Full Name" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error input value!Please enter characters" ForeColor="Red" Display="Dynamic"
                                    SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtFullName"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label>Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label>Mobile Number</label>
                                <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control" placeholder="Enter Mobile Number" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone number must be 8 numbers" ForeColor="Red" Display="Dynamic"
                                    SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[0-9]{8}$" ControlToValidate="txtMobileNumber"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label>Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email" required TextMode="Email"></asp:TextBox>
                            </div>
                        </div>

                       

                        <div class="col-12">
                            <div class="form-group">

                                <label>Country</label> 

<asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control w-100"
   AutoPostBack="true" AppendDataBoundItems="true" DataTextField="CountryName" DataValueField="CountryName">
    <asp:ListItem Value="0">Select Country</asp:ListItem>
   
</asp:DropDownList>
                               

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Country is Required"
                                    ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0" ControlToValidate="ddlCountry"></asp:RequiredFieldValidator>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CountryName] FROM [country]"></asp:SqlDataSource>

                               
    

                            </div>
                        </div>
                            </div>
                    
                    <div class="form-group mt-3">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="button button-contactForm boxed-btn"
                            OnClick="btnRegister_Click" />

                        <span class="clickLink"> <a href="../User/Login.aspx"> Already a member? Click Here</a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</asp:Content>