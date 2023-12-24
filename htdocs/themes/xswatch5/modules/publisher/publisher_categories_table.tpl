<{assign var=temp value=0}>
<div class="row">
<{foreach item=category from=$categories|default:null}>
    <div class="d-flex col-12 col-md-6">
        <{if !empty($category.image_path)}>
        <{if !empty($category.categoryurl)}><a href="<{$category.categoryurl}>"><{/if}>
        <img class="me-3 mb-2 xswatch-d-flex-img" src="<{$category.image_path}>" alt="<{$category.name}>">
        <{if !empty($category.categoryurl)}></a><{/if}>
        <{/if}>
        <div class="flex-grow-1">
            <h5 class="mt-0 mb-1"><{if $selected_category|default:false == $category.categoryid}><{$category.name}><{else}><{$category.categorylink}><{/if}></h5>
            <{$category.description}>
        <{if !empty($category.subcats)}>
        <br>
        <{foreach item=subcat from=$category.subcats|default:null}>
        <small><{$subcat.categorylink}> &nbsp;</small>
        <{/foreach}>
        <{/if}>
        </div>
    </div>
<{/foreach}>
</div>
    <{if !empty($catnavbar)}>
    <div class=""row">
        <div class="generic-pagination col text-end mt-2">
        <{$catnavbar|replace:'form':'div'|replace:'id="xo-pagenav"':''|replace:' //':'/'}>
        </div>
    </div>
    <{/if}>
<hr>
