using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Linq.Dynamic;

namespace MvcNGDatatable.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult getData()
        {
            //Datatable parameter
            var draw = Request.Form.GetValues("draw").FirstOrDefault();

            List<ColumnSearch> lstColumnSearch = new List<ColumnSearch>();
            //Individual Column Filtering.
            foreach (string key in Request.Form)
            {
                if (key.StartsWith("columns") && key.Contains("[search][value]"))
                {
                    var columnName = Request.Form.GetValues(key.Replace("[search][value]","")+ "[name]").FirstOrDefault();
                    var searchText = Request.Form.GetValues(key).FirstOrDefault();
                    if (!string.IsNullOrEmpty(searchText))
                    {
                        var search = new ColumnSearch() { columnName = columnName, searchText = searchText };
                        lstColumnSearch.Add(search);
                    }
                }
            }



            //paging parameter
            var start = Request.Form.GetValues("start").FirstOrDefault();
            var length = Request.Form.GetValues("length").FirstOrDefault();
            //sorting parameter
            var sortColumn = Request.Form.GetValues("columns[" + Request.Form.GetValues("order[0][column]").FirstOrDefault() + "][name]").FirstOrDefault();
            var sortColumnDir = Request.Form.GetValues("order[0][dir]").FirstOrDefault();
            //filter parameter
            var searchValue = Request.Form.GetValues("search[value]").FirstOrDefault();



            List<SparePartsItem> allCustomer = new List<SparePartsItem>();
            int pageSize = length != null ? Convert.ToInt32(length) : 0;
            int skip = start != null ? Convert.ToInt32(start) : 0;
            int recordsTotal = 0;

            //Database query
            using (MyDatabaseEntities dc = new MyDatabaseEntities())
            {
                var v = (from a in dc.SparePartsItems select a);

                //search
                if (!string.IsNullOrEmpty(searchValue))
                {
                    v = v.Where(a => 
                        a.PartsName.Contains(searchValue) ||
                        a.PartsNo.Contains(searchValue) ||
                        //a.Quantity.ToString().Contains(searchValue) ||
                        //a.Amount.ToString().Contains(searchValue) || 
                        a.SheetNo.Contains(searchValue) ||
                        a.Supplier.Contains(searchValue)
                        );
                }
                //string columnFilter = "";
                //column search
                foreach (var item in lstColumnSearch)
                {
                    var searchtext = item.searchText.Split(',');
                    foreach (var text in searchtext)
                    {
                        var func = $"{item.columnName}.ToString().Contains(\"{text}\")";
                        v = (IQueryable<SparePartsItem>)v.ToList().Where(func);
                    }                   
                }

                //sort
                if (!(string.IsNullOrEmpty(sortColumn) && string.IsNullOrEmpty(sortColumnDir)))
                {
                    //for make sort simpler we will add Syste.Linq.Dynamic reference
                    v = v.OrderBy(sortColumn + " " + sortColumnDir);
                }

                recordsTotal = v.Count();
                allCustomer = v.Skip(skip).Take(pageSize).ToList();
            }

            return Json(new { draw = draw, recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = allCustomer });
        }
	}

    public class ColumnSearch
    {
        public string columnName { get; set; }
        public string searchText { get; set; }
    }
}

