
using System;

namespace EasyCalc
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double number1, number2, answer = 0;

            if (double.TryParse(txtNumber1.Text, out number1) &&
                double.TryParse(txtNumber2.Text, out number2))
            {
                string operation = ddlOperation.SelectedValue;

                switch (operation)
                {
                    case "+":
                        answer = number1 + number2;
                        break;

                    case "-":
                        answer = number1 - number2;
                        break;

                    case "*":
                        answer = number1 * number2;
                        break;

                    case "/":
                        if (number2 == 0)
                        {
                            lblResult.Text = "Cannot divide by zero!";
                            return;
                        }

                        answer = number1 / number2;
                        break;
                }

                lblResult.Text = "Result: " + answer;
            }
            else
            {
                lblResult.Text = "Please enter valid numbers.";
            }
        }
    }
}
