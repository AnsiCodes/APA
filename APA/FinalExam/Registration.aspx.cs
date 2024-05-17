using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APA.APA
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void ShowMessage(String MessageToDisplay)
        {
            // define the name and type of the client script
            String csName = "PopupScript";
            Type csType = this.GetType();

            // get a ClientScriptManager object
            System.Web.UI.ClientScriptManager cs = Page.ClientScript;

            // check to see if the startup script is already registered
            if (!cs.IsStartupScriptRegistered(csType, csName))
            {
                String csText = "alert('" + MessageToDisplay + "');";
                cs.RegisterStartupScript(csType, csName, csText, true);
            }
        }

        protected bool VerifyForm()
        {
            if (APANum.Text == "")
            {
                ShowMessage("Please Provide APA Number.");
                APANum.Focus();
                return false;
            }

            else if (TxtFirstName.Text == "")
            {
                ShowMessage("Please Provide First Name");
                TxtFirstName.Focus();
                return false;
            }

            else if (TxtLastName.Text == "")
            {
                ShowMessage("Please Provide Last Name");
                TxtLastName.Focus();
                return false;
            
            }

            else if (TxtEmail.Text == "")
            {
                ShowMessage("Please Provide Email");
                TxtEmail.Focus(); 
                return false;
            }
            else if(TxtNum.Text=="")
            {
                ShowMessage("Please Provide Number");
                TxtNum.Focus();
                return false;
            }
            else if (Street.Text=="")
            {
                ShowMessage("Please Provide Street Name");
                Street.Focus();
                return false;
            }
            else if (City.Text=="")
            {
                ShowMessage("Please Provide City");
                    City.Focus();
                return false;
            }
            else if (State.Text=="")
            {
                ShowMessage("Please Provide State");
                State.Focus();
                return false;
            }
            else if (Zip.Text=="")
            {
                ShowMessage("Please Enter ZIP Code");
                Zip.Focus();
                return false;
            }
            else if (Fee1.Checked == false && Fee2.Checked == false && Fee3.Checked== false && Fee4.Checked==false && Fee5.Checked==false) 
            {
                ShowMessage("Please Select Fee Category");
                Fee1.Focus();
                return false;

            }
            else if (CEFee1.Checked == false && CEFee2.Checked==false)
            {
                ShowMessage("Select CE Extra Credit Fee");
                CEFee1.Focus();
                return false;
            }
            else if (InsCode.Text=="")
            {
                ShowMessage("Please provide Institutional Code");
                InsCode.Focus(); 
                return false;
            }
            else if (FirstConventionNo.Checked == false && FirstConventionYes.Checked == false) 
            {
                ShowMessage("Have you attended this convention before?");
                FirstConventionNo.Focus();
                return false;
                 }
            else if (CareerPsy1.Checked== false && CareerPsy2.Checked==false)
            {
                ShowMessage("Are you an early career psychologist?");
                CareerPsy1.Focus();
                return false;
            }
            else if (CardNumber.Text=="")
            {
                ShowMessage("Please provide card number");
                CardNumber.Focus();
                return false;
            }

            else if (CardType.Text=="")
            {
                ShowMessage("Please enter card type.");
                CardType.Focus();
                return false;
            }
            else if (CardName.Text=="")
            {
                ShowMessage("Please enter name on card");
                CardName.Focus();
                return false;
            }
            else if (CVV.Text=="")
            {
                ShowMessage("Please enter CVV");
                CVV.Focus();
                return false;
            }
            else if (Month.SelectedValue=="" && Year.SelectedValue=="")
            {
                ShowMessage("Please enter expiry date on card");
                Month.Focus();
                return false;

            }
            else
            {
                return true;
            }
        }
        
        protected bool AddReg()
        {
         //try
            //{
                ADODB.Connection objConnect = new ADODB.Connection();
                ADODB.Recordset objRS = new ADODB.Recordset();

                string strConnection = "Data Source=sql.elmcsis.com; Initial Catalog=MIT543-APA2024-Ansar;User ID=e0777203; Password=Elmhurst1871; Provider=msoledbsql";
                string SQL = "SELECT * FROM [Registrations];";

                objConnect.Open(strConnection);
                objRS.Open(SQL, objConnect, ADODB.CursorTypeEnum.adOpenStatic, ADODB.LockTypeEnum.adLockOptimistic);

                objRS.AddNew();

                objRS.Fields["RegistrationID"].Value = Guid.NewGuid().ToString();
                objRS.Fields["APANumber"].Value = APANum.Text;
                objRS.Fields["FirstName"].Value = TxtFirstName.Text;
                objRS.Fields["LastName"].Value = TxtLastName.Text;
                objRS.Fields["Email"].Value = TxtEmail.Text;
                objRS.Fields["PhoneNumber"].Value = TxtNum.Text;
                objRS.Fields["Street"].Value = Street.Text;
                objRS.Fields["City"].Value = City.Text;
                objRS.Fields["State"].Value = State.Text;
                objRS.Fields["ZIP"].Value = Zip.Text;
                //fee radio buttons
                if (Fee1.Checked == true)
                {
                    objRS.Fields["Fee"].Value = "275$/330$";
                }
                else if (Fee2.Checked == true) 
                {
                    objRS.Fields["Fee"].Value = "70$/80$";
                }
                else if (Fee3.Checked) 
                {
                    objRS.Fields["Fee"].Value = "120$/130$";
                }
                else if (Fee4.Checked == true) 
                {
                    objRS.Fields["Fee"].Value = "10$";
                }
                else if (Fee5.Checked == true)
                {
                    objRS.Fields["Fee"].Value = "375$/430$";
                }

                //ce fee radio buttons
                if (CEFee1.Checked == true) 
                {
                    objRS.Fields["CEFee"].Value = "85$/105$";
                }
                else if (CEFee2.Checked == true)
                {
                    objRS.Fields["CEFee"].Value = "120$/150$";
                }
                
                objRS.Fields["InstitutionalCode"].Value = InsCode.Text;
                
                //first apa convention radio
                if (FirstConventionYes.Checked == true) 
                {
                    objRS.Fields["FirstConvention"].Value = 1;
                }
                else if(FirstConventionNo.Checked == true) 
                {
                    objRS.Fields["FirstConvention"].Value = 0;
                }
                
                objRS.Fields["Disability"].Value = Disability.Text;
                
                //early career psy radio
                if (CareerPsy1.Checked == true) 
                {
                    objRS.Fields["EarlyCareerPsy"].Value= 1;
                }
                else if (CareerPsy2.Checked == true)
                {
                    objRS.Fields["EarlyCareerPsy"].Value = 0;
                }

                objRS.Fields["Family1"].Value = TextBox5.Text;
                objRS.Fields["Family1Last"].Value = TextBox6.Text;
                objRS.Fields["Family2"].Value = TextBox7.Text;
                objRS.Fields["Family2Last"].Value = TextBox8.Text;
                objRS.Fields["Family3"].Value = TextBox9.Text;
                objRS.Fields["Family3Last"].Value = TextBox10.Text;
                objRS.Fields["Family4"].Value = TextBox11.Text;
                objRS.Fields["Family4Last"].Value = TextBox12.Text;
                objRS.Fields["CardNumber"].Value = CardNumber.Text;
                objRS.Fields["CardName"].Value = CardName.Text;
                objRS.Fields["CVV"].Value = CVV.Text;
                objRS.Fields["ExpMonth"].Value = Month.Text;
                objRS.Fields["ExpYear"].Value = Year.Text;
                
                //time stamp
                objRS.Fields["DateTimeCreated"].Value = DateTime.Now;




                //saving the record
                objRS.Update();

                //closing the connection
                objRS.Close();
                objConnect.Close();
                //destroy the object
                objRS = null;
                objConnect = null;


                return true;

            //}
            //catch (Exception)
            //{ 
                //return false; 
            //}
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (VerifyForm() == true)
            {
                if (AddReg() == true)
                {
                    Response.Redirect("Thank You.aspx");
                }


                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
        }
        
        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.youtube.com/watch?v=xvFZjo5PgG0");

        }
    }
}