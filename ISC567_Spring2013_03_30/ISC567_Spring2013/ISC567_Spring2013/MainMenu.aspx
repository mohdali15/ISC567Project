<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainMenu.aspx.vb" Inherits="ISC567_Spring2013.MainMenu" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <style>
           ul li {
                  display: inline;
                  list-style-type: none;
                  margin-right: 34px;
                 }        
    </style>

</head>
    
<body>
        <div style="text-align:right">
    <h1 style="text-align:center">USA EDS <br />(Exam Development Services)</h1>
        <asp:Label ID="lblUserName" runat="server" Text="Welcome"></asp:Label>
        <br />
      <asp:Label ID="lblSVLineName" runat="server"></asp:Label>
   <br />
      </div>  
    
    <form runat="server">
    
        <ul style="text-align:center">
            <li>
                <ccJSIM:OpenIFrameLinkButton ID="lbtnSystemAdministratorFunctions" runat="server" FrameSrc="SystemAdministratorFunctions.aspx" HeightPosition="400" 
              IFrameName="ifSystemAdministratorFunctions" LeftPosition="250" TopPosition="100" WidthPosition="400"
             ZIndex="150" Visible="false">System Administrator</ccJSIM:OpenIFrameLinkButton>
           </li>
                <li>
            <ccJSIM:OpenIFrameLinkButton ID="lbtnInstitutionFunctions" runat="server" FrameSrc="InstitutionFunctions.aspx" HeightPosition="400" 
            IFrameName="ifInstitutionFunctions" LeftPosition="250" TopPosition="100" WidthPosition="400"
            ZIndex="150" Visible="false">Institution</ccJSIM:OpenIFrameLinkButton>
                </li>    
                    <li>
            <ccJSIM:OpenIFrameLinkButton ID="lbtnExamProviderFunctions" runat="server" FrameSrc="ExamProviderFunctions.aspx" HeightPosition="400"
            IFrameName="ifExamProviderFunctions" LeftPosition="250" TopPosition="100" WidthPosition="400"
            ZIndex="170" Visible="false">Exam Provider</ccJSIM:OpenIFrameLinkButton>
                     </li>
                           <li>
            <ccJSIM:OpenIFrameLinkButton ID="lbtnTakerFunctions" runat="server" FrameSrc="TakerFunctions.aspx" HeightPosition="400"
            IFrameName="ifTakerFunctions" LeftPosition="150" TopPosition="150" WidthPosition="804"
            ZIndex="160" Visible="false">Taker</ccJSIM:OpenIFrameLinkButton>
                               </li>
        </ul>
     

        </form>



    


</body>
</html>

