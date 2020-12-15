using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Management;
using System.Net;
using System.IO;
using System.Net.Http;


namespace SharePoint_Edition_Detection
{
    public partial class PS2016_Edition : Form
    {
        public PS2016_Edition()
        {
            InitializeComponent();
        }
        //Instances
        SharePoint_Edition_Detection_Methods PSMethods = new SharePoint_Edition_Detection_Methods();

        private void PS2016_Home_Load(object sender, EventArgs e)
        {

        }

        private void timerprgbar_prerequisites_Tick(object sender, EventArgs e)
        {
            //Start Progress Bar
            prgbar_prerequisites.Increment(1);
            switch (prgbar_prerequisites.Value)
            {
                case 10: lbl_result.Text = "Check SharePoint Version";
                    break;
                case 50: lbl_result.Text = "Check SharePoint Edition";
                    break;
                case 100: lbl_result.Text = "Completed Successfully";
                    timerprgbar_prerequisites.Stop();
                    MessageBox.Show(lbl_SPEdition.Text,"SharePoint Edition and Build Number",MessageBoxButtons.OK,MessageBoxIcon.Information);
                    btn_check.Enabled = true;
                    break;
                default:
                    break;
            }

        }

        private void btn_check_Click(object sender, EventArgs e)
        {
            string edition = "";
            try
            {
                // Start timer
                timerprgbar_prerequisites.Start();
                lbl_result.Text = "Check SharePoint Version";
                btn_check.Enabled = false;
                // Check The SharePoint Edition \ Build Number
                edition = PSMethods.Get_SPEdition();
                if (!edition.Contains("error") && !edition.Contains("can't be determined"))
                {
                    lbl_SPEdition.Text = "The SharePoint Installed: " + edition + "\r\nThe Build Version: " + PSMethods.Get_SPVersion();    
                }
                else
                {
                    lbl_SPEdition.Text = edition;
                }
                
            }
            catch (Exception)
            {
                timerprgbar_prerequisites.Enabled = false;
                MessageBox.Show(edition,"Error",MessageBoxButtons.OK,MessageBoxIcon.Error);
                Application.Exit();
            }
        }

        

        private void btn_help_Click(object sender, EventArgs e)
        {
            MessageBox.Show("SharePoint 2016 Edition Detection is a simple program that used to detect the SharePoint Edition and Build Number for SharePoint 2016. \r\nFor any clarification please contact me at melqassas@outlook.com.","Info",MessageBoxButtons.OK,MessageBoxIcon.Information);
        }

        


    }
}
