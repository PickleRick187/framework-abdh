﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using ABDHFramework.Models;
using ABDHFramework.Services;
using ABDHFramework.Data;
using ABDHFramework.Common;
using System.IO;
using System.Configuration;
using System.Text;
using System.Text.RegularExpressions;
using ABDHFramework.Utility;
using ABDHFramework.Lib;

namespace ABDHFramework.Controllers
{
    [HandleError]
  public class DemoController : BaseController
    {
        #region
        #endregion
        public ActionResult Index(int? pageSize, int? page)
        {
            string sortColumn = !String.IsNullOrEmpty(Request["sortColumn"]) ? Request["sortColumn"] : "TitleEN";
            string sortOption = !String.IsNullOrEmpty(Request["SortOption"]) ? Request["SortOption"] : SortOption.Asc.ToString();
            SearchResult<tblNew> listAllNews = new SearchResult<tblNew>();

            listAllNews = Service.SearchNews(ABDHFramework.Common.Constants.DefautPagingSizeForNews, (page.HasValue ? (int)page : 1), sortColumn, sortOption);
            
            return View(listAllNews);
        }
       
        public ActionResult ListResult(int? page)
        {
          string sortColumn = !String.IsNullOrEmpty(Request["sortColumn"]) ? Request["sortColumn"] : "TitleEN";
          string sortOption = !String.IsNullOrEmpty(Request["SortOption"]) ? Request["SortOption"] : SortOption.Asc.ToString();
          string criteria = !String.IsNullOrEmpty(Request["Title"]) ? Request["Title"] : "";
          if (!String.IsNullOrEmpty(Request["Command"]) && Request["Command"].ToString() == "Search")
          {
            SearchResult<tblNew> listAllNews = new SearchResult<tblNew>();
            listAllNews = Service.SearchNewsByCriteria(ABDHFramework.Common.Constants.DefautPagingSizeForNews, (page.HasValue ? (int)page : 1), criteria, sortColumn, sortOption);
            return View(listAllNews);
          }
          else
          {
            SearchResult<tblNew> listAllNews = new SearchResult<tblNew>();
            listAllNews = Service.SearchNews(ABDHFramework.Common.Constants.DefautPagingSizeForNews, (page.HasValue ? (int)page : 1), sortColumn, sortOption);
            return View(listAllNews);
          }
        }
        public ActionResult Delete(String listIDToDelete)
       {
           if (listIDToDelete != null)
           {
               string[] listID  = listIDToDelete.Split('|');
               foreach (string id in listID)
               {
                   if (Tool.IsGuid(id))
                   {
                       Guid guid = new Guid(id);
                       Service.Delete(guid);
                   }
               }
           }
           return RedirectToAction("ListResult") ;
       }
    }
}
