using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using OpenQA.Selenium.Chrome;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace LibraryManagement.Tests
{
    [TestFixture]
    public class UnitTest1 : TestBase
    {
        [Test]
        public void CheckCalculateFine()
        {

        }
        [Test]
        public void CheckUserNameAndPassword()
        {

        }
        /*public void VerfiyValidLogin()
        {
           // System.Threading.Thread.Sleep(10000);
            driver.Url = "http://localhost:2370/Account/Login";
            driver.FindElement(By.Id("email")).SendKeys("admin@gmail.com");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("password")).SendKeys("123");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("Button1")).Click();
            System.Threading.Thread.Sleep(1000);
            
           // IAlert alert=driver.SwitchTo().Alert();
            //NUnit.Framework.Assert.AreEqual(alert.Text, "Success");
            Console.WriteLine("Login Success");
        }
        [Test]
        public void VerfiyInValidLogin()
        {
            driver.Url = "http://localhost:2370/Account/Login";
            driver.FindElement(By.Id("email")).SendKeys("");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("password")).SendKeys("1234");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("Button1")).Click();
            System.Threading.Thread.Sleep(1000);
            //IAlert alert = driver.SwitchTo().Alert();
            //NUnit.Framework.Assert.AreEqual(alert.Text, "Fail");
            Console.WriteLine("LoginFail");

        }
        [Test]
        public void ValidManageAccount()
        {
            driver.Url = "http://localhost:2370/Account/Login";
            driver.FindElement(By.Id("email")).SendKeys("kanaiyaaryal@gmail.com");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("password")).SendKeys("123");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("Button1")).Click();
            System.Threading.Thread.Sleep(1000);
            
            driver.Url = "http://localhost:2370/MyAccount";
            driver.FindElement(By.Id("MainContent_edit")).Click();
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("MainContent_stdname")).SendKeys("111");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("MainContent_update")).Click();
            System.Threading.Thread.Sleep(1000);

        }
        [Test]
        public void BorrowBookStudent()
        {
            driver.Url = "http://localhost:2370/Account/Login";
            driver.FindElement(By.Id("email")).SendKeys("kanaiyaaryal@gmail.com");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("password")).SendKeys("123");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("Button1")).Click();
            System.Threading.Thread.Sleep(1000);

            driver.Url = "http://localhost:2370/student-borrow";
            driver.FindElement(By.Id("MainContent_DataList1_btnSelect_0")).Click();
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Name("ctl00$MainContent$ctl05")).Click();
            System.Threading.Thread.Sleep(1000);
            driver.Url = "http://localhost:2370/bookreport";
            System.Threading.Thread.Sleep(1000);


        }

        [Test]
        public void FeedBackInput()
        {
            driver.Url = "http://localhost:2370/Account/Login";
            driver.FindElement(By.Id("email")).SendKeys("kanaiyaaryal@gmail.com");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("password")).SendKeys("123");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("Button1")).Click();
            System.Threading.Thread.Sleep(1000);

            driver.Url = "http://localhost:2370/feedback";
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("MainContent_name")).SendKeys("Sithu");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("MainContent_email")).SendKeys("Si@gmail.com");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("MainContent_subject")).SendKeys("Something");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("MainContent_message")).SendKeys("Something");
            System.Threading.Thread.Sleep(1000);
            driver.FindElement(By.Id("MainContent_btnAdd")).Click();
            System.Threading.Thread.Sleep(1000);

        }
        /*public void User_With_Correct_Username_And_Pass_Login()
        {
            var accountService = new AccountService();

            // Act
            bool result = accountService.DoLogin("admin@gmail", "1234");

            // Assert
            Assert.IsTrue(result);
        }
        public class AccountService
        {
            public bool DoLogin(string username, string password)
            {
                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                    return false;

                return true;
            }
        }*/

    }
}
