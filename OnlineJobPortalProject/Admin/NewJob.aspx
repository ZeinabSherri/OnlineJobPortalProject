<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="NewJob.aspx.cs" Inherits="OnlineJobPortalProject.Admin.NewJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style=" background-image:url('../Images/bg.jpg'); width: 100%; height:720px; background-repeat: no-repeat;
 background-size:cover; background-attachment:fixed;">
        <div class="container pt-4 pb-4">
            <%--<div>
            <asp:label ID="lblMsg" runat="server"></asp:label>
        </div>--%>
            <div class="btn-toolbar justify-content-between mb-3">
                <div class="btn-group"> 
                     <asp:label ID="lblMsg" runat="server"></asp:label>
                </div>
                <div class="input-group h-25">
                    <asp:HyperLink ID="LinkBack" runat="server" NavigateUrl="~/Admin/JobList.aspx" CssClass="btn btn-secondary"
                        visible="false">< Back </asp:HyperLink>
                </div>
            </div>
        <h3 class="text-center"><%Response.Write(Session["title"]); %> </h3>

        <div class="row mr-lg-5 mb-lg-5 mb-3">
            <div class="col-md-6 pt-3">
                <label for="txtJobTitle" style="font-weight:600"> Job Title </label>
                <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control" placeholder="Ex. Web developer, App developer" required></asp:TextBox>
            </div>
            <div class="col-md-6 pt-3">
                <label for="txtNoOfPost" style="font-weight:600"> Number Of Posts</label>
                     <asp:TextBox ID="txtNoOfPost" runat="server" CssClass="form-control" placeholder="Enter Number of Positions"
                         TextMode="Number" required>

                     </asp:TextBox>
                </div>
            </div>


            <div class="row mr-lg-5 mb-lg-5 mb-3">
    <div class="col-md-12 pt-3">
        <label for="txtDescription" style="font-weight:600"> Description </label>
        <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" 
            placeholder="Enter Job description" TextMode="MultiLine" required></asp:TextBox>
    </div>
    
       
    </div>
            <div class="row mr-lg-5 mb-lg-5 mb-3">
    <div class="col-md-6 pt-3">
        <label for="txtQualification" style="font-weight:600"> Qualification /Education Required </label>
        <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" placeholder="Ex. BS, BA, MBA... " required></asp:TextBox>
    </div>
    <div class="col-md-6 pt-3">
        <label for="txtExperience" style="font-weight:600"> Experience Required</label>
             <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placehold="Enter the number of years of experience"
                 TextMode="Number" required>

             </asp:TextBox>
        </div>
    </div>


                    <div class="row mr-lg-5 mb-lg-5 mb-3">
<div class="col-md-6 pt-3">
    <label for="txtSpecialization" style="font-weight:600"> Specialization Required </label>
    <asp:TextBox ID="txtSpecialization" runat="server" CssClass="form-control" 
        placeholder="Enter specialization" TextMode="MultiLine" required>

    </asp:TextBox>
</div>
<div class="col-md-6 pt-3">
    <label for="txtLastDate" style="font-weight:600"> Deadline</label>
         <asp:TextBox ID="txtLastDate" runat="server" CssClass="form-control" placehold="Enter the deadline to apply"
             TextMode="Date" required>

         </asp:TextBox>
    </div>
</div>


                    <div class="row mr-lg-5 mb-lg-5 mb-3">
<div class="col-md-6 pt-3">
    <label for="txtSalary" style="font-weight:600"> Salary </label>
    <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control" 
        placeholder="Enter Salary in USD" required>

    </asp:TextBox>
</div>
<div class="col-md-6 pt-3">
    <label for="txtJobType" style="font-weight:600"> Job Type</label>
         <asp:DropDownList  ID="ddlJobType" runat="server" CssClass="form-control"> 
             <asp:ListItem Value="0">Select Job Type</asp:ListItem>
             <asp:ListItem >Full Time</asp:ListItem>
             <asp:ListItem >Part time</asp:ListItem>
             <asp:ListItem >Remote</asp:ListItem>
             <asp:ListItem >Freelance</asp:ListItem>
             
<asp:ListItem >Internship</asp:ListItem>

         </asp:DropDownList>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Job Type is required" ForeColor="Red"
        ControlToValidate="ddlJobType" InitialValue="0" Display="Dynamic" SetFocusOnError="true"> </asp:RequiredFieldValidator>
    </div>
</div>

                                <div class="row mr-lg-5 mb-lg-5 mb-3">
<div class="col-md-6 pt-3">
    <label for="txtCompany" style="font-weight:600"> Company/ Organisation Name </label>
    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" 
        placeholder="Enter Company Name" required>

    </asp:TextBox>
</div>
<div class="col-md-6 pt-3">
    <label for="ddlJobType" style="font-weight:600"> Company/ Organisation Logo</label>
       <asp:FileUpload ID="fuCompanyLogo" runat="server" CssClass="form-control" 
           ToolTip=".jpg, .jpeg, .png extension only"  />
   
    </div>
</div>

            
                    <div class="row mr-lg-5 mb-lg-5 mb-3">
<div class="col-md-6 pt-3">
    <label for="txtWebsite" style="font-weight:600"> Website </label>
    <asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control" 
        placeholder="Enter Website" TextMode="Url" >

    </asp:TextBox>
</div>
<div class="col-md-6 pt-3">
    <label for="txtEmail" style="font-weight:600"> Email </label>
         <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placehold="Enter Email"
             TextMode="Email">

         </asp:TextBox>
    </div>
</div>
            
            <div class="row mr-lg-5 mb-lg-5 mb-3">
    <div class="col-md-12 pt-3">
        <label for="txtAddress" style="font-weight:600"> Address </label>
        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" 
            placeholder="Enter Work Location" TextMode="MultiLine" required></asp:TextBox>
      
    </div>
                </div>
            
             
                    <div class="row mr-lg-5 mb-lg-5 mb-3">
                        <div class="col-md-6 pt-3">
                            <label for="txtCountry" style="font-weight: 600">Country </label>
                            <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control w-100"
                                AutoPostBack="true" AppendDataBoundItems="true" DataTextField="CountryName" DataValueField="CountryName">
                                <asp:ListItem Value="0">Select Country</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Country is Required"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0" ControlToValidate="ddlCountry"> </asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CountryName] FROM [country]"></asp:SqlDataSource>

                        </div>
<div class="col-md-6 pt-3">
    <label for="txtState" style="font-weight:600"> State </label>
         <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placehold="Enter State"
             required>

         </asp:TextBox>
    </div>
</div>      
    
        

        <div class="row mr-lg-5 mb-lg-5 mb-3 pt-4">
             <div class="col-md-3 col-md-offset-2 nb-3">
                 <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block"
                     BackColor="#7200cf" Text="Add Job" OnClick="btnAdd_Click"/>

             </div>
        </div>
        </div>
    </div>
</asp:Content>
