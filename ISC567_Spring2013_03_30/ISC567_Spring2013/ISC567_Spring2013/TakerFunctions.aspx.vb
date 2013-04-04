Imports JSIM.Bases.SVTable
Public Class TakerFunctions
    Inherits JSIM.Bases.BaseClass



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Login.UpdateSVT = True) Then
            UpdateSVTable()
        End If


       
    End Sub

    Private Sub UpdateSVTable()
        Dim cn As String = GetConnectionString("connectionString")
        Dim PersonID As Integer = GetSVTableValue(Of Integer)("personid")
        Dim oUser As New DataAccessTier.daUser
        Dim dtUserInfo As DataTable = oUser.GetUserProfileByID(PersonID, cn)
        Login.SVtable(dtUserInfo)
        Login.UpdateSVT = False
    End Sub

    Protected Sub ifLogout_Click(sender As Object, e As EventArgs) Handles ifLogout.Click

    End Sub

    Protected Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click

    End Sub

    Protected Sub btnAddEditPerson_Click(sender As Object, e As EventArgs) Handles btnAddEditPerson.Click
        Response.Redirect("AddEditPerson")
    End Sub
End Class