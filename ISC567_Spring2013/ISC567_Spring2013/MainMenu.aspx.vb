Imports JSIM.Bases.SVTable
Imports GlobalVariables.AppVariable
Public Class MainMenu
    Inherits JSIM.Bases.BaseClass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            SetForm()
        End If
    End Sub

    Protected Sub SetForm()
        'Retrieves the user's first and last names from the SVTableValue stored
        'in GlobalVariable displays them
        lblSVLineName.Text = firstname + " " + lastname
        
        'Enables all funtionality for the System Administrator
        If isSA = True Then
            lbtnSystemAdministratorFunctions.Visible = True
            lbtnInstitutionFunctions.Visible = True
            lbtnExamProviderFunctions.Visible = True
            lbtnTakerFunctions.Visible = True
        End If
        'Enables Institution functionality
        If isInstStaff = True Then
            lbtnInstitutionFunctions.Visible = True
        End If
        'Enables Exam Provider functionality
        If isExProvStaff = True Then
            lbtnExamProviderFunctions.Visible = True
        End If
        'Enables Taker functionality
        If isTaker = True Then
            lbtnTakerFunctions.Visible = True
        End If

    End Sub

    Protected Sub lbtnInstitutionFunctions_Click(sender As Object, e As EventArgs) Handles lbtnInstitutionFunctions.Click, lbtnInstitutionFunctions.PreRender
        If isInstStaff = True AndAlso isSA = False Then
            Response.Redirect("Institution_2.aspx")
        End If
    End Sub
End Class

