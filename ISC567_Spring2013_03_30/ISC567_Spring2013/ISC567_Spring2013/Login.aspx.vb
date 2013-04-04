Imports JSIM.Bases.SVTable
Public Class Login
    Inherits JSIM.Bases.BaseClass
    Public Shared UpdateSVT As Boolean = False

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        UserLogin.Focus()
    End Sub

    'Public Shared Function UpdateSvTable(ByVal UpdateSVT As Boolean) As Boolean
    '    Return UpdateSVT
    'End Function
    Private Sub AuthenticateUser(ByVal username As String, password As String)
        ' Get Connection String
        Dim cn As String = GetConnectionString("connectionString")

        ' Instance of Data Access Tier
        Dim oUser As New DataAccessTier.daUser

        ' Validate User based upon the login/password entered
        oUser.ValidateUser(username, password, cn)

        ' If the User was found for given login/password
        If oUser.IsFound Then
            ' Confirm that User information exists for additional confirmation
            Dim dtUserProfile As DataTable = oUser.GetUserProfile(username, password, cn)
            If Not IsNothing(dtUserProfile) AndAlso dtUserProfile.Rows.Count > 0 Then
                ' Store the user profile in our base class 
                UserProfile = dtUserProfile
                CreateSVTable(cn)
                SVtable(dtUserProfile)

                ' Redirect to main menu
                Response.Redirect("MainMenu.aspx")
            Else
                ' Display error message
                lblError.Text = "Login failed for User: " & username
            End If
        End If

    End Sub

    Protected Sub UserLogin_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles UserLogin.Authenticate
        Dim username As String = UserLogin.UserName
        Dim password As String = UserLogin.Password
        AuthenticateUser(username, password)
    End Sub
    Public Shared Sub SVtable(ByVal dtUserProfile As DataTable)
        'Create the SV Table

        'Place data from table into variables that will be passed to the SV table
        Dim personid As String = dtUserProfile.Rows(0)("personid").ToString()
        InsertSVTableValue(Of String)("personid", personid)
        Dim institutionid As String = dtUserProfile.Rows(0)("institutionid").ToString()
        InsertSVTableValue(Of String)("institutionid", institutionid)
        Dim firstname As String = dtUserProfile.Rows(0)("firstname").ToString()
        InsertSVTableValue(Of String)("firstname", firstname)
        Dim lastname As String = dtUserProfile.Rows(0)("lastname").ToString()
        InsertSVTableValue(Of String)("lastname", lastname)
        Dim username1 As String = dtUserProfile.Rows(0)("username").ToString()
        InsertSVTableValue(Of String)("username", username1)
        Dim pass As String = dtUserProfile.Rows(0)("Password").ToString()
        InsertSVTableValue(Of String)("Password", pass)

        Dim isTaker As String = dtUserProfile.Rows(0)("isTaker").ToString()
        InsertSVTableValue(Of String)("isTaker", isTaker)
        Dim isProvider As String = dtUserProfile.Rows(0)("isProvider").ToString()
        InsertSVTableValue(Of String)("isProvider", isProvider)
        Dim isInstitution As String = dtUserProfile.Rows(0)("isInstitution").ToString()
        InsertSVTableValue(Of String)("isInstitution", isInstitution)
        Dim isInstStaff As String = dtUserProfile.Rows(0)("isInstStaff").ToString()
        InsertSVTableValue(Of String)("isInstStaff", isInstStaff)
        Dim isExProvStaff As String = dtUserProfile.Rows(0)("isExProvStaff").ToString()
        InsertSVTableValue(Of String)("isExProvStaff", isExProvStaff)
        Dim isDeveloper As String = dtUserProfile.Rows(0)("isDeveloper").ToString()
        InsertSVTableValue(Of String)("isDeveloper", isDeveloper)
        Dim isRoster As String = dtUserProfile.Rows(0)("isRoster").ToString()
        InsertSVTableValue(Of String)("isRoster", isRoster)
        Dim isSA As String = dtUserProfile.Rows(0)("isSA").ToString()
        InsertSVTableValue(Of String)("isSA", isSA)
        'Dim email As String = dtUserProfile.Rows(0)("email").ToString()
        'InsertSVTableValue(Of String)("email", email)
        'Dim Login As String = dtUserProfile.Rows(0)("Login").ToString()
        'InsertSVTableValue(Of String)("Login", Login)
    End Sub
End Class
