﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class blogsTBL
{
    public int Id { get; set; }
    public string title { get; set; }
    public string imageUrl { get; set; }
    public string content { get; set; }
}

public partial class userTBL
{
    public int Id { get; set; }
    public string f_name { get; set; }
    public string l_name { get; set; }
    public string bDate { get; set; }
    public string phone { get; set; }
    public string email { get; set; }
    public string pass { get; set; }
    public System.DateTime regDate { get; set; }
    public bool emailConfirmation { get; set; }
}