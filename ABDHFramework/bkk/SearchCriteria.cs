﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Superior.Data
{
  public class SearchCriteria
  {
    #region Null-object pattern

    private static readonly SearchCriteria _emptyCriteria = new SearchCriteria();
    public static SearchCriteria Empty
    {
      get
      {
        return _emptyCriteria;
      }
    }

    #endregion

    protected SearchCriteria()
    {
    }
  }
}
