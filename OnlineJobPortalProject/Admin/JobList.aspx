<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="JobList.aspx.cs" Inherits="OnlineJobPortalProject.Admin.JobList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    
    <div style=" background-image:url('../Images/bg.jpg'); width: 100%; height:720px; background-repeat: no-repeat;
background-size:cover; background-attachment:fixed;">
       <div class="container-fluid pt-4 pb-4">
           <div>
           <asp:label ID="lblMsg" runat="server"></asp:label>

       </div>

       <h3 class="text-center"> Job List/Details</h3>
           <div>


               <div class="row mb-3 pt-sm-3 ">
<div class="col-md-12">
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered"
       EmptyDataText="No record to display..!"  AutoGenerateColumns="False" AllowPaging="True"
        PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" 
        DataKeyNames="JobId" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand">
        <Columns>
            
            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            
            <asp:BoundField DataField="Title" HeaderText="Job Title">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
            
            <asp:BoundField DataField="NoOfPost" HeaderText="Number of post">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
            
            <asp:BoundField DataField="Qualification" HeaderText="Qualification">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
            
            <asp:BoundField DataField="Experience" HeaderText="Experience">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
            
            <asp:BoundField DataField="LastDateToApply" HeaderText="Deadline" DataFormatString="{0:dd MMM yyyy}">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
            
            <asp:BoundField DataField="CompanyName" HeaderText="Company">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
            
            <asp:BoundField DataField="Country" HeaderText="Country">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
            
            <asp:BoundField DataField="State" HeaderText="State">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>

            <asp:BoundField DataField="CreateDate" HeaderText="Post Date" DataFormatString="{0:dd MMM yyyy}">
<ItemStyle HorizontalAlign="Center" />
</asp:BoundField>

<asp:TemplateField HeaderText="Edit">
    <ItemTemplate>
        <asp:LinkButton ID="btnEditJob" runat="server" CommandName="EditJob" 
            CommandArgument='<%# Eval("JobId") %>'>
            <asp:Image ID="Img" runat="server" ImageUrl="../assets/img/icon/editPencil.png" Height="25px"/>
        </asp:LinkButton>
    </ItemTemplate>
    <ItemStyle HorizontalAlign="Center" Width="50px" />
</asp:TemplateField>
            
            <asp:CommandField CausesValidation="false" HeaderText="Delete" ShowDeleteButton="true"
                DeleteImageUrl="../assets/img/icon/trashIcon.png" ButtonType="Image">
                <ControlStyle Height="25px" Width="25px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField> 

        </Columns>
        <HeaderStyle BackColor="#7200cf" ForeColor="White" />
    </asp:GridView>
</div>
               </div>
           </div>

       </div>
        </div>
</asp:Content>
