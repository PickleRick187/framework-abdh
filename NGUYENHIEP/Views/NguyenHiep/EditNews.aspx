﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NGUYENHIEP.Models.tblNew>" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<%@ Import Namespace="NguyenHiep.Utility" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UpperMainContent" runat="server">
<script type="text/javascript" language="javascript">
    var sBasePath = '<%= Url.Content("~/fckeditor/")%>';
</script>

<%Html.ValidationSummary(); %>
    <form id="form1" runat="server" method='POST' enctype='multipart/form-data' action="#">
    <%if (ViewData["AddNews"] != null)
      { %>
    <h2>
        <%=Resources.Global.AddNews %></h2>
    <%}
      else
      { %>
    <h2>
        <%=Resources.Global.EditNew %></h2>
    <%} %>
    <table width="100%">
    <%if ((ViewData["CurrentType"] != null && !((byte)ViewData["CurrentType"] == NguyenHiep.Common.NewsTypes.Recruitment)) && (ViewData["CurrentType"] != null && !((byte)ViewData["CurrentType"] == NguyenHiep.Common.NewsTypes.Introduction)))
      { %>
        <tr>
            <td class="l">
                <label for="TitleVN">
                    <%=Resources.Global.Title%>:</label>
            </td>
            <td class="l">
            <%if (HttpContext.Current.Response.Cookies["Culture"] != null && HttpContext.Current.Response.Cookies["Culture"].Value.Equals("en-US"))
              { %>
                                <%= Html.TextArea("TitleEN", Model.TitleVN, new { rows = 5, style = "width:100%" ,@class="noidung"})%>
                <%= Html.ValidationMessage("TitleEN")%>
                                <%}
              else
              { %>
                <%= Html.TextArea("TitleVN", Model.TitleVN, new { rows = 5, style = "width:100%", @class = "noidung" })%>
                <%= Html.ValidationMessage("TitleVN")%>
                                <%} %>
                
            </td>
        </tr>
        <tr>
            <td class="l">
                <label for="SubjectVN">
                    <%=Resources.Global.Subject%>:</label>
            </td>
            <td class="l">
            <%if (HttpContext.Current.Response.Cookies["Culture"] != null && HttpContext.Current.Response.Cookies["Culture"].Value.Equals("en-US"))
              { %>
                                <%= Html.TextArea("SubjectEN", Model.SubjectEN, new { rows = 10, style = "width:100%", @class = "noidung" })%>
                                <%= Html.ValidationMessage("SubjectEN")%>
                                <%}
              else
              { %>
                        <%= Html.TextArea("SubjectVN", Model.SubjectVN, new { rows = 10, style = "width:100%", @class = "noidung" })%>
                        <%= Html.ValidationMessage("SubjectVN")%>
                                <%} %>
                
                
            </td>
        </tr>
         <%} %>
        <tr>
            <td class="l">
                <label>
                    <%=Resources.Global.Content%>:</label>
            </td>
            <td>
                <div style="border:solid 1px">
                <%if (HttpContext.Current.Response.Cookies["Culture"] != null && HttpContext.Current.Response.Cookies["Culture"].Value.Equals("en-US"))
                  { %>
                                <%=Html.FckTextBox("ContentEN")%>
                                <%= Html.ValidationMessage("ContentEN")%>
                                <%}
                  else
                  { %>
                                <%=Html.FckTextBox("ContentVN")%>
                                <%= Html.ValidationMessage("ContentVN")%>
                                <%} %>
                    
                </div>
            </td>
        </tr>
       <%if ((ViewData["CurrentType"] != null && !((byte)ViewData["CurrentType"] == NguyenHiep.Common.NewsTypes.Recruitment)) && (ViewData["CurrentType"] != null && !((byte)ViewData["CurrentType"] == NguyenHiep.Common.NewsTypes.Introduction)))
         { %>
        <tr>
            <td class="l">
                <label>
                   <%=Resources.Global.Type%>:</label>
            </td>
            <td class="l">
                <%=Html.DropDownList("Type", ((List<SelectListItem>)ViewData["Type"]).AsEnumerable())%>
                <%= Html.ValidationMessage("Type")%>
            </td>
        </tr>
        <tr>
            <td class="l">
                <label> <%=Resources.Global.Image%>:</label>
                
            </td>
            <td class="l">
                <p>
                    <input type="file" id="UploadFile" name="UploadFile" size="23" />
                    
                </p>
                <%=Html.Hidden("Image", ((Model != null && !String.IsNullOrEmpty(Model.Image)) ? Model.Image : ""))%>
                <br />
                <%=Html.ValidationMessage("Image")%>
                <br />
            </td>
        </tr>
        
        <%if (Model != null && !String.IsNullOrEmpty(Model.Image) )
        { %>
      <tr>
        <td>
            Hình hiện tại:
        </td>
        <td >
         <span style="float:left">
    	<a href="#"><img class="imgGthieu" src='<%= Url.Content("~"+Model.Image)%>' /></a>
    	</span>
        </td>
      </tr>
      <%} %>
      <%} %>
        <tr>
            <td colspan="2" class="c">
            <span style="float:right">
                <%if (ViewData["AddNews"] != null)
                  { %>
                <input type="submit" value="<%=Resources.Global.AddNews %>" />
                <%}
                  else
                  { %>
                <input type="submit" value="<%=Resources.Global.Update %>" />
                <%} %>
                </span>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftMenu" runat="server">
<script language="javascript" type="text/javascript">
    var a= "";
    $(document).ready(function() {
        $.ajaxSetup();
        $.ajax({
            url: '<%=Url.Content("~/NguyenHiep/ListCategory") %>',
            global: false,
            type: "POST",
            async: false,
            dataType: "html",
            success: function(msg) {
                
                if (document.layers) {
                    document.getElementById('ListCategoryID').open();
                    document.getElementById('ListCategoryID').write(msg);
                    document.getElementById('ListCategoryID').close();
                    document.getElementById('ListCategoryID').innerHTML = msg;
                }
                else {
                    document.getElementById('ListCategoryID').innerHTML = msg;
                }

            }

        });
    })
                    </script>
                    <div id="ListCategoryID">
                    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PromotionAnnoucement" runat="server">
<script language="javascript" type="text/javascript">

    var content2 = "";
    $(document).ready(function() {

        content2 = $.ajax({
            url: '<%=Url.Content("~/NguyenHiep/ListPromotionNews") %>',
            global: false,
            type: "POST",
            dataType: "html",
            async: false,
            success: function(msg) {
                
                if (document.layers) {
                    document.getElementById('ListNewsPromotionID').open();
                    document.getElementById('ListNewsPromotionID').write(msg);
                    document.getElementById('ListNewsPromotionID').close();
                    document.getElementById('ListNewsPromotionID').innerHTML = msg;
                }
                else {
                    document.getElementById('ListNewsPromotionID').innerHTML = msg;
                }

            }

        }).responseText;
    })
                    </script>
                    <div id="ListNewsPromotionID">
                    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RiightNewsEvent" runat="server">
<script language="javascript" type="text/javascript">

    var content3 = "";
    $(document).ready(function() {

        content3 = $.ajax({
            url: '<%=Url.Content("~/NguyenHiep/ListHotNews") %>',
            global: false,
            type: "POST",
            dataType: "html",
            async: false,
            success: function(msg) {
                
                if (document.layers) {
                    document.getElementById('ListHotNewsID').open();
                    document.getElementById('ListHotNewsID').write(msg);
                    document.getElementById('ListHotNewsID').close();
                    document.getElementById('ListHotNewsID').innerHTML = msg;
                }
                else {
                    document.getElementById('ListHotNewsID').innerHTML = msg;
                }

            }

        }).responseText;
    })
                    </script>
                    <div id="ListHotNewsID">
                    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LowerMainContent" runat="server">
</asp:Content>