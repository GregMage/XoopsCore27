<?php
/*
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**
 * @copyright    XOOPS Project https://xoops.org/
 * @license      GNU GPL 2.0 or later (https://www.gnu.org/licenses/gpl-2.0.html)
 * @package      system
 * @subpackage   menus
 * @since        2.7.0
 * @author       XOOPS Development Team, Grégory Mage (AKA GregMage)
 */

use Xmf\Request;

// Check users rights
if (!is_object($xoopsUser) || !is_object($xoopsModule) || !$xoopsUser->isAdmin($xoopsModule->mid())) {
    exit(_NOPERM);
}

// Define main template
$GLOBALS['xoopsOption']['template_main'] = 'system_menus.tpl';
// Call Header
xoops_cp_header();

// Define Stylesheet
$xoTheme->addStylesheet(XOOPS_URL . '/modules/system/css/admin.css');
// Define scripts
$xoTheme->addScript('modules/system/js/admin.js');
// Define Breadcrumb and tips
$xoBreadCrumb->addLink(_AM_SYSTEM_MENUS_NAV_MAIN, system_adminVersion('menus', 'adminpath'));
$xoBreadCrumb->render();


// Call Footer
xoops_cp_footer();
