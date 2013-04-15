<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainMenu.aspx.vb" Inherits="ISC567_Spring2013.MainMenu" %>

<%@ Register Assembly="JSIM" Namespace="JSIM.Custom_Controls" TagPrefix="ccJSIM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="styles/IFrameStyles.css" />

    <style>
                 
        .auto-style3 {
            width: 84%;
        }
    </style>

</head>
    
<body>
    <div class="entireSiteWrapper">     
    <form id="Form1" runat="server">
           <div class="PageCustomHeader" style="height:80px; margin-bottom:0px">
       <table style="height:98%; width:100%;">
           <tr>
               <td class="auto-style3">
                    <h1 style="text-align:left; width: 102px; margin-bottom: 0px; margin-top:2px" >EDTS</h1>
                    <p style="font-size:10pt;text-align:left; width: 80%; margin-bottom: 2px; margin-top: 2px;" >(Exam Development & Testing Services)</p>
               </td>
               <td colspan="2" style="text-align:right; font-size:10pt">
            <asp:Label ID="lblUserName" runat="server" Text="Welcome"></asp:Label>
        <br />
      <asp:Label ID="lblSVLineName" runat="server"></asp:Label>
               </td>
           </tr>
       </table>
    </div>
          <div class="menuWrapper">  
       <ul>  
            <li><a href="#">
                <ccJSIM:OpenIFrameLinkButton ID="lbtnSystemAdministratorFunctions" runat="server" FrameSrc="SystemAdministratorFunctions.aspx" HeightPosition="400" 
              IFrameName="ifSystemAdministratorFunctions" LeftPosition="250" TopPosition="100" WidthPosition="400"
             ZIndex="150" Visible="false" CssClass="LinkButton">System Administrator
                </ccJSIM:OpenIFrameLinkButton> </a></li>
                <li><a href="#">
            <ccJSIM:OpenIFrameLinkButton ID="lbtnInstitutionFunctions" runat="server" FrameSrc="MainMenu.aspx" OnClick="lbtnInstitutionFunctions_Click" HeightPosition="400" 
            IFrameName="ifInstitutionFunctions" LeftPosition="250" TopPosition="100" WidthPosition="400"
            ZIndex="150" Visible="false" CssClass="LinkButton">Institution Functions</ccJSIM:OpenIFrameLinkButton>
              </a> </li>    
                    <li> <a href="#">
            <ccJSIM:OpenIFrameLinkButton ID="lbtnExamProviderFunctions" runat="server" FrameSrc="ExamProviderFunctions.aspx" HeightPosition="400"
            IFrameName="ifExamProviderFunctions" LeftPosition="250" TopPosition="100" WidthPosition="400"
            ZIndex="170" Visible="false" CssClass="LinkButton">Exam Provider Functions</ccJSIM:OpenIFrameLinkButton>
                 </a>  </li>
                           <li>
            <ccJSIM:OpenIFrameLinkButton ID="lbtnTakerFunctions" runat="server" FrameSrc="TakerFunctions.aspx" HeightPosition="400"
            IFrameName="ifTakerFunctions" LeftPosition="150" TopPosition="150" WidthPosition="804"
            ZIndex="160" Visible="false" CssClass="LinkButton">Exam Taker</ccJSIM:OpenIFrameLinkButton>
                               </li>
        </ul>
              </div> 
        <div class="contentWrapper">
        </div>
        <div class="footerwrapper">
         <%--   <a href="#">
                <asp:LinkButton ID="lnkApplicantFooter" runat="server">Examinee</asp:LinkButton>
            </a>| <a href="#">
                <asp:LinkButton ID="lnkAdministrationFooter" runat="server">Administration</asp:LinkButton>
            </a>| <a href="#">
                <asp:LinkButton ID="lnkDodSkillSetFooter" runat="server">DOD Skill Set</asp:LinkButton>
            </a>| <a href="#">
                <asp:LinkButton ID="lnkCertificateFooter" runat="server">Certificate</asp:LinkButton>
            </a>| <a href="#">
                <asp:LinkButton ID="lnkProgramFooter" runat="server">Program</asp:LinkButton>
            </a>| <a href="#">
                <asp:LinkButton ID="lnkBuildExamFooter" runat="server">Build Exam</asp:LinkButton>
            </a>| <a href="#">
                <asp:LinkButton ID="lnkLogoutFooter" runat="server">Logout</asp:LinkButton>
            </a>--%>
            <br />
            <div class="copyright">
                Copyright © 2011 ISC567 Group Project All Rights Reserved.</div>
        </div>
        <!-- End of footer !-->
   </form>
        </div> 
</body>
</html>

