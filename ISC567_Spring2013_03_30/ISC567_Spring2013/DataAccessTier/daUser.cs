using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;


namespace DataAccessTier
{
    public class daUser
    {
        #region " Public properties "

        public static bool pTransactionSuccessful;
        public bool TransactionSuccessful()
        {
            return pTransactionSuccessful;
        }
        public static string pErrorMessage;
        public string ErrorMessage()
        {
            return pErrorMessage;
        }
        public static int pErrorNumber;
        public int ErrorNumber()
        {
            return pErrorNumber;
        }
        public static int pErrorClass;
        public int ErrorClass()
        {
            return pErrorClass;
        }
        public static int pErrorState;
        public int ErrorState()
        {
            return pErrorState;
        }
        public static int pErrorLineNumber;
        public int ErrorLineNumber()
        {
            return pErrorLineNumber;
        }
        public static bool pIsFound;
        public bool IsFound()
        {
            return pIsFound;
        }
        public static int pInsertedPersonID;
        public int InsertedPersonID()
        {
            return pInsertedPersonID;
        }
        #endregion

        #region " Read methods "

        public void ValidateUser(String username, String password, String ConnectionString)
        {
            // Set up parameters in parameter array 
            SqlParameter[] arParms = new SqlParameter[3];

            arParms[0] = new SqlParameter("@username", SqlDbType.VarChar);
            arParms[0].Value = username;
            arParms[1] = new SqlParameter("@password", SqlDbType.VarChar);
            arParms[1].Value = password;
            arParms[2] = new SqlParameter("@IsFound", SqlDbType.Bit);
            arParms[2].Direction = ParameterDirection.Output;

            pTransactionSuccessful = true;

            try
            {
                SqlHelper.ExecuteNonQuery(ConnectionString, CommandType.StoredProcedure, "ValidateUser", arParms);
            }
            catch (SqlException ReadError)
            {
                pErrorMessage = ReadError.Message.ToString();
                pErrorNumber = ReadError.Number;
                pErrorClass = ReadError.Class;
                pErrorState = ReadError.State;
                pErrorLineNumber = ReadError.LineNumber;

                pTransactionSuccessful = false;
            }
            if (pTransactionSuccessful == true)
            {
                pIsFound = (bool)arParms[2].Value;
            }
            else
            {
                pIsFound = false;
            }

        }

        public DataTable GetUserProfileByID(int personid, string ConnectionString)
        {
            // Set up parameters in parameter array 
            SqlParameter[] arParms = new SqlParameter[1];

            arParms[0] = new SqlParameter("@personid", SqlDbType.Int);
            arParms[0].Value = personid;
           

            pTransactionSuccessful = true;

            DataTable dtUserInfo = new DataTable("UserInfo");

            try
            {
                DataSet dsUserInfo = SqlHelper.ExecuteDataset(ConnectionString, CommandType.StoredProcedure, "GetUserProfileByID", arParms);
                dtUserInfo = dsUserInfo.Tables[0];
            }
            catch (SqlException ReadError)
            {
                pErrorMessage = ReadError.Message.ToString();
                pErrorNumber = ReadError.Number;
                pErrorClass = ReadError.Class;
                pErrorState = ReadError.State;
                pErrorLineNumber = ReadError.LineNumber;

                pTransactionSuccessful = false;
            }
            return dtUserInfo;
        }

        public DataTable GetUserProfile(String username, String password, string ConnectionString)
        {
            // Set up parameters in parameter array 
            SqlParameter[] arParms = new SqlParameter[2];

            arParms[0] = new SqlParameter("@username", SqlDbType.VarChar);
            arParms[0].Value = username;
            arParms[1] = new SqlParameter("@password", SqlDbType.VarChar);
            arParms[1].Value = password;

            pTransactionSuccessful = true;

            DataTable dtUserInfo = new DataTable("UserInfo");

            try
            {
                DataSet dsUserInfo = SqlHelper.ExecuteDataset(ConnectionString, CommandType.StoredProcedure, "GetUserProfile", arParms);
                dtUserInfo = dsUserInfo.Tables[0];
            }
            catch (SqlException ReadError)
            {
                pErrorMessage = ReadError.Message.ToString();
                pErrorNumber = ReadError.Number;
                pErrorClass = ReadError.Class;
                pErrorState = ReadError.State;
                pErrorLineNumber = ReadError.LineNumber;

                pTransactionSuccessful = false;
            }
            return dtUserInfo;
        }

        #endregion

        #region " Insert methods "

        #endregion

        #region " Update methods "
        public void UpdateUser(int PersonID, string FirstName, string LastName, string username,
                               string Password, string ConnectionString)
        {
            // Set up parameters in parameter array 
            SqlParameter[] arParms = new SqlParameter[5];
            arParms[0] = new SqlParameter("@PersonID", SqlDbType.Int);
            arParms[0].Value = PersonID;
            arParms[1] = new SqlParameter("@FirstName", SqlDbType.NVarChar);
            arParms[1].Value = FirstName;
            arParms[2] = new SqlParameter("@LastName", SqlDbType.NVarChar);
            arParms[2].Value = LastName;
            arParms[3] = new SqlParameter("@username", SqlDbType.NVarChar);
            arParms[3].Value = username;
            arParms[4] = new SqlParameter("@Password", SqlDbType.NVarChar);
            arParms[4].Value = Password;


            pTransactionSuccessful = true;

            try
            {
                SqlHelper.ExecuteNonQuery(ConnectionString, CommandType.StoredProcedure, "UpdatePerson", arParms);
            }
            catch (SqlException UpdateError)
            {
                pErrorMessage = UpdateError.Message.ToString();
                pErrorNumber = UpdateError.Number;
                pErrorClass = UpdateError.Class;
                pErrorState = UpdateError.State;
                pErrorLineNumber = UpdateError.LineNumber;

                pTransactionSuccessful = false;
            }
            //If using output paramters
            //pUpdateedPersonID = (int)arParms[5].Value;
        }
        #endregion

        #region " Delete methods "

        #endregion

    }

}
