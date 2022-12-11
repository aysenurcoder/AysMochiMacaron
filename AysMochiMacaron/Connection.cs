using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AysMochiMacaron
{
    public class Connection
    {
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        }
        // public static SqlConnection connection = new SqlConnection("Data Source=(localdb)/Aysenur;Initial Catalog=MacaronvemochiDB;Integrated Security=True");
        //public static SqlConnection connection = new SqlConnection("Data Source=94.73.170.76;Initial Catalog=u0959630_macaron; User Id=u0959630_macaron;Password=Ug.jU3wg.A5@R_25");
         
       
    }
    public class Utils
    {
        public static bool IsValidExtension(string fileName)
        {
            bool isValid = false;
            string[] fileExtension = { ".jpg", ".png", ".jpeg" };
            for (int i = 0; i<= fileExtension.Length - 1; i++)
            {
                if (fileName.Contains(fileExtension[i]))
                {
                    isValid = true;
                    break;
                }

            }
            return isValid;
        }

        public static string GetImageUrl(Object url)
        {
            string url1 = "";
            if (string.IsNullOrEmpty(url.ToString())|| url == DBNull.Value)
            {
                url1 = "../Images/No_image.png";
            }
            else
            {
                url1 = string.Format("../{0}", url);
            }
            return url1;
        }
    }
}