Imports JSIM.Bases.SVTable
Public Class AddEditPerson
    Inherits JSIM.Bases.BaseClass
    Dim dtUserInfo As DataTable
    Dim cn As String = GetConnectionString("connectionString")

    Public Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        SetForm()

    End Sub
#Region "Local Methods"
    Private Sub SetForm()

        Dim mode As String = Request.QueryString("mode")
        If mode = "add" Then
            AddNew()
        ElseIf mode = "edit" Then
            EditUser()
        Else
            'TO DO: Display Error message no mode was given
        End If

        btnSave.Parameters = CreateParameters()
    End Sub
    Private Sub AddNew()

    End Sub
    Private Sub EditUser()
        lblHeader.Text = "Edit User"

        dtUserInfo = GetSVTable()

        If Not IsNothing(dtUserInfo) AndAlso dtUserInfo.Rows.Count > 0 Then
            With dtUserInfo
                txtFirstName.Text = .Rows(0)("FirstName").ToString()
                txtLastName.Text = .Rows(0)("LastName").ToString()
                txtLogin.Text = .Rows(0)("username").ToString()
                txtPassword.Text = .Rows(0)("Password").ToString()
            End With
        Else
            ' Todo: Display Error Message
        End If
    End Sub

    Protected Overrides Function CreateParameters() As JSIM.ParameterContainer
        'Creates a new parameter container
        MyBase.paramContainer = New JSIM.ParameterContainer()

        Dim mode As String = Request.QueryString("mode")
        paramContainer.AddParameter("mode", mode, False)
        paramContainer.AddParameter("FirstName", txtFirstName)
        paramContainer.AddParameter("LastName", txtLastName)
        paramContainer.AddParameter("username", txtLogin)
        paramContainer.AddParameter("Password", txtPassword)

        Dim PersonID As Integer = (GetSVTableValue(Of Integer)("personid"))
        paramContainer.AddParameter("Personid", CStr(PersonID), False)

        Return MyBase.CreateParameters()

    End Function
#End Region
#Region "Local Functions"
    Private Shared Function UpdateUser(ByVal PersonID As Integer, ByVal FirstName As String, ByVal LastName As String,
                               ByVal username As String, ByVal Password As String) As String
        Dim StrStatus As String = ""
        Dim cn As String = GetConnectionString("connectionString")
        Dim oUser As New DataAccessTier.daUser
        oUser.UpdateUser(PersonID, FirstName, LastName, username, Password, cn)

        If oUser.TransactionSuccessful Then
            StrStatus = "User was successfully updated"

        Else
            StrStatus = " An error occured while trying to update user: " & oUser.ErrorMessage
        End If
        Login.UpdateSVT = True
        Return StrStatus
    End Function
#End Region

#Region "Local WEbservice Methods"
    <Services.WebMethod()> _
    Public Shared Function wsAddEditUser(ByVal mode As String, ByVal FirstName As String, ByVal LastName As String,
                                         ByVal username As String, ByVal Password As String,
                                         ByVal PersonID As Integer) As String
        Dim strMsg As String = ""
        If mode = "add" Then
            'Add Record
            'TODO Add a user in this if statement call insertuser method in DA tier
            'and proceed accordingly. Also authorize the person before allowing them 
            'to add a user - Ali 4/2/2012
            strMsg = ""
        ElseIf mode = "edit" Then
            'Edit Record
            strMsg = UpdateUser(PersonID, FirstName, LastName, username, Password)

        Else
            strMsg = "No mode were specified no operation could be formed"
        End If

        Return strMsg
    End Function
#End Region
End Class