using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.SharePoint;
using System.Windows.Forms;
using Microsoft.SharePoint.Administration;

namespace SharePoint_Edition_Detection
{
    class SharePoint_Edition_Detection_Methods
    {
        public string Get_SPVersion()
        {
            try
            {
                string buildversion = "";
                SPSecurity.RunWithElevatedPrivileges(delegate()
                {
                    buildversion = SPFarm.Local.BuildVersion.ToString();
                });
                return buildversion;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public string Get_SPEdition()
        {
            try
            {
                string edition = "";
                SPSecurity.RunWithElevatedPrivileges(delegate()
                {
                    var editionguid = SPFarm.Local.Products;
                    foreach (var item in editionguid)
                    {
                        switch (item.ToString().ToUpper())
                        {
                            // SharePoint 2016
                            case "5DB351B8-C548-4C3C-BFD1-82308C9A519B":
                                edition = "SharePoint Server 2016 Trail.";
                                break;
                            case "4F593424-7178-467A-B612-D02D85C56940":
                                edition = "SharePoint Server 2016 Standard.";
                                break;
                            case "716578D2-2029-4FF2-8053-637391A7E683":
                                edition = "SharePoint Server 2016 Enterprise.";
                                break;
                            default: edition = "The SharePoint Edition can't be determined.";
                                break;
                        }
                    }
                });

                return edition;
            }
            catch (Exception)
            {
                return "An error occured! Make sure that\r\n- The SharePoint is installed\r\n- You are running the program as Administrator\r\n- The current user has sufficient permission (Farm Account)";
            }
        }
    }
}
