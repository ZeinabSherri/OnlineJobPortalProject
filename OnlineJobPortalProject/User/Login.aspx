<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineJobPortalProject.User.Login" %>
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
                <h2 class="contact-title text-center">Log In</h2>
            </div>
            <div class="col-lg-8 mx-auto">
                <div class="form-contact contact_form">
                    <div class="row">
                        

                        <div class="col-12">
                            <div class="form-group">
                                <label>Username</label>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter username" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-12">
    <div class="form-group">
        <label>Login Type</label>
        <asp:DropDownList ID="ddlLoginType" runat="server" CssClass="form-control w-100">
           <asp:ListItem Value="0"> Choose Login Type </asp:ListItem>
            <asp:ListItem> Admin </asp:ListItem>
            <asp:ListItem> User </asp:ListItem>
        </asp:DropDownList>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserType is Required"
      ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0" ControlToValidate="ddlLogintype">
          </asp:RequiredFieldValidator>

</div>

                        </div>

                    <div class="form-group mt-3">
                        <asp:Button ID="btnLogin" runat="server" Text="Log in" CssClass="button button-contactForm boxed-btn"
                            OnClick="btnLogin_Click" />

                        <span class="clickLink"> <a href="../User/Register.aspx"> New User? Sign up here..</a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
</section>
</asp:Content>
