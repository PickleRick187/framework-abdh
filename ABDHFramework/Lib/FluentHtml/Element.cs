﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ABDHFramework.Lib.FluentHtml
{
  public class Element : ElementBase<Element>
  {
    public Element(string tag) : base(tag) { }
  }
}
