﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navigation.ascx.cs" Inherits="ORBITA.UI.Controls.navigation" %>
<script src="../Scripts/sdmenu.js" type="text/javascript"></script>

<script type="text/javascript">
    // <![CDATA[
    var myMenu;
    window.onload = function () {
        myMenu = new SDMenu("my_menu");
        myMenu.init();
    };
    //]]>
</script>

<div id="my_menu" class="navmenu">
    <div class="parentnav">
        <h3 class="parentnav"><a href="#">新闻管理</a></h3>
        <ul>
            <li class="subnav"><a href="ArticleMgmt.aspx">新闻管理</a></li>
            <li class="subnav"><a href="ArticleAdd.aspx">新闻添加</a></li>
            <li class="subnav"><a href="ArticleClassMgmt.aspx">新闻分类管理</a></li>
            <li class="subnav"><a href="ArticleClassAdd.aspx">新闻分类添加</a></li>
        </ul>
    </div>

    <div>
        <h3 class="parentnav"><a href="#">产品管理</a></h3>
        <ul>
            <li class="subnav"><a href="ProductMgmt.aspx">产品管理</a></li>
            <li class="subnav"><a href="ProductAdd.aspx">产品添加</a></li>
            <li class="subnav"><a href="ProductClassMgmt.aspx">产品分类管理</a></li>
            <li class="subnav"><a href="ProductClassAdd.aspx">产品分类添加</a></li>
        </ul>
    </div>

    <div>
        <h3 class="parentnav"><a href="#">案例管理</a></h3>
        <ul>
            <li class="subnav"><a href="#">案例管理</a></li>
            <li class="subnav"><a href="CaseAdd.aspx">案例添加</a></li>
        </ul>
    </div>

    <div class="parentnav">
        <h3 class="parentnav"><a href="#">用户管理</a></h3>
        <ul>
            <li class="subnav"><a href="UserMgmt.aspx">用户管理</a></li>
            <li class="subnav"><a href="UserAdd.aspx">用户添加</a></li>
        </ul>
    </div>

    <div>
        <h3 class="parentnav"><a href="#">留言管理</a></h3>
        <ul>
            <li class="subnav"><a href="#">留言管理</a></li>
        </ul>
    </div>

</div>
