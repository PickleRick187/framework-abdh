﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ABDHFramework.Controllers
{
  public class BaseViewUserControl : System.Web.Mvc.ViewUserControl
  {
    public ABDHFramework.Routing.Routing _routing;
    public ABDHFramework.Routing.Routing Routing
    {
      get
      {
        if (_routing == null)
        {
          _routing = new ABDHFramework.Routing.Routing(Url);
        }
        return _routing;
      }
    }
  }

  public class BaseViewUserControl<T> : System.Web.Mvc.ViewUserControl<T> where T : class
  {
    public ABDHFramework.Routing.Routing _routing;
    public ABDHFramework.Routing.Routing Routing
    {
      get
      {
        if (_routing == null)
        {
          _routing = new ABDHFramework.Routing.Routing(Url);
        }
        return _routing;
      }
    }
  }
}
