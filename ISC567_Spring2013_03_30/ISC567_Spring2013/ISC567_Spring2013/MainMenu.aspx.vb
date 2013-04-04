Imports JSIM.Bases.SVTable
Public Class MainMenu
    Inherits JSIM.Bases.BaseClass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            SetForm()
        End If
    End Sub

    Protected Sub SetForm()
        'Retrieves the user's first and last names from the SVTable and displays them
        Dim localfirstname As String = GetSVTableValue(Of String)("firstname")
        Dim locallastname As String = GetSVTableValue(Of String)("lastname")
        lblSVLineName.Text = localfirstname + " " + locallastname
        'Determine the user's base privileges
        Dim localisSA As Boolean = GetSVTableValue(Of Boolean)("isSA")
        Dim localisInstStaff As Boolean = GetSVTableValue(Of Boolean)("isInstStaff")
        Dim localisExProvStaff As Boolean = GetSVTableValue(Of Boolean)("isExProvStaff")
        Dim localisTaker As Boolean = GetSVTableValue(Of Boolean)("isTaker")
        'Enables all funtionality for the System Administrator
        If localisSA = True Then
            lbtnSystemAdministratorFunctions.Visible = True
            lbtnInstitutionFunctions.Visible = True
            lbtnExamProviderFunctions.Visible = True
            lbtnTakerFunctions.Visible = True
        End If
        'Enables Institution functionality
        If localisInstStaff = True Then
            lbtnInstitutionFunctions.Visible = True
        End If
        'Enables Exam Provider functionality
        If localisExProvStaff = True Then
            lbtnExamProviderFunctions.Visible = True
        End If
        'Enables Taker functionality
        If localisTaker = True Then
            lbtnTakerFunctions.Visible = True
        End If

    End Sub

End Class

