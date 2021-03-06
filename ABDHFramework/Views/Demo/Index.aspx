<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ABDHFramework.Data.SearchResult<ABDHFramework.Models.tblNew>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UpperMainContent" runat="server">
    <%--<%ABDHFramework.Utility.UIHelper.RenderRemotePartial(Html, "ListAllNewsID", "", (new UrlHelper(ViewContext.RequestContext)).Action("ListAllNews", "ABDHFramework") + "?pageSize=" + (int)ABDHFramework.Common.Constants.DefautPagingSize + "&page=1");%>--%>
    <div class="mainCtentSpRight" id="ListSearchResult">
        <%Html.RenderPartial("~/Views/Shared/Demo/ListResult.ascx", ViewData); %>
        <input type="hidden" id="SelectedMenuId" name="SelectedMenuId" value="3" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftMenu" runat="server">
  
<div id="QuickSearchID">
<%Html.RenderPartial("~/Views/Shared/Demo/QuickSearch.ascx"); %>
</div>
                    
<script language="javascript" type="text/javascript">
    var a= "";
    $(document).ready(function() {
        $.ajaxSetup();
        $.ajax({
            url: '<%=Url.Content("~/Category/ListCategory") %>',
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
        $(".msg_body").hide();
        //toggle the componenet with class msg_body
        $(".msg_head").click(function() {
        $(this).next(".msg_body").slideToggle(600);
        });
    })
    
    
    </script>
    <div id="ListCategoryID">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PromotionAnnoucement" runat="server">

                    <div id="ListNewsPromotionID">
                    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RiightNewsEvent" runat="server">

                   <div id="ListHotNewsID" class="boxNews">
                    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LowerMainContent" runat="server">
</asp:Content>
