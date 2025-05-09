<{* enable adhesive menus by setting value to 'yes', disable using 'no' *}>
<{assign var='stickyHeader' value='yes'}>
<{if isset($stickyHeader) && $stickyHeader === 'yes'}><header class="adhesiveHeader"><{/if}>
<div class="navbar-wrapper">
    <div class="navbar navbar-inverse navbar-static-top global-nav">
        <div class="container">
            <div class="navbar-header">
                <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="<{$xoops_url}>" class="navbar-brand xlogo" title="<{$xoops_sitename}>">
                    <img src="<{$xoops_imageurl}>images/logo.png" alt="<{$xoops_sitename}>">
                </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<{$xoops_url}>"><{$smarty.const.THEME_HOME}></a></li>
                    <li><a href="javascript:;"><{$smarty.const.THEME_MODULE1}></a></li>
                    <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;"><{$smarty.const.THEME_MODULE2}><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Topic 1</a></li>
                            <li><a href="#">Topic 2</a></li>
                            <li><a href="#">Topic 3</a></li>
                            <li class="dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Topic 4</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Sub-Topic A</a></li>
                                    <li><a href="#">Sub-Topic B</a></li>
                                    <li><a href="#">Sub-Topic C</a></li>
                                    <li><a href="#">Sub-Topic D</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Topic 5</a></li>
                        </ul>
                    </li>
                    <li><a href="<{$xoops_url}>/modules/newbb"><{$smarty.const.THEME_MODULE3}></a></li>
                    <li><a href="<{$xoops_url}>/modules/contact"><{$smarty.const.THEME_MODULE4}></a></li>
                </ul>
                <{if !empty($xoops_search)}>
                <form class="navbar-form navbar-right" role="search" action="<{xoAppUrl url='search.php'}>" method="get">
                    <div class="form-group">
                        <input type="text" name="query" class="form-control" placeholder="<{$smarty.const.THEME_SEARCH_TEXT}>">
                        <input type="hidden" name="action" value="results">
                    </div>
                    <button class="btn btn-primary" type="submit"><{$smarty.const.THEME_SEARCH_BUTTON}></button>
                </form>
                <{/if}>
            </div>
        </div>
    </div>
</div><!-- .navbar-wrapper -->
<{if isset($stickyHeader) && $stickyHeader === 'yes'}></header><{/if}>
