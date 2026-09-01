using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace ASP
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            // ----------------------------------------------------------------
            // Custom /admin/... routes.
            // These MUST be registered before routes.EnableFriendlyUrls(...)
            // below: ASP.NET routing walks the RouteTable in registration
            // order and uses the first match, so explicit routes need to
            // come first or FriendlyUrls' catch-all matching could shadow
            // them. Each route maps a clean public URL to the physical
            // page under the (still physically named) Adminpanel folder,
            // without renaming that folder.
            // ----------------------------------------------------------------
            routes.MapPageRoute(
                "AdminLogin",
                "admin/login",
                "~/Adminpanel/Login.aspx"
            );

            routes.MapPageRoute(
                "AdminDashboard",
                "admin/dashboard",
                "~/Adminpanel/Dashboard.aspx"
            );

            routes.MapPageRoute(
                "AdminApplication",
                "admin/application",
                "~/Adminpanel/Application.aspx"
            );

            routes.MapPageRoute(
                "AdminApplicationList",
                "admin/application-list",
                "~/Adminpanel/ApplicationList.aspx"
            );

            routes.MapPageRoute(
                "AdminContactList",
                "admin/contact-list",
                "~/Adminpanel/ContactList.aspx"
            );

            routes.MapPageRoute(
                "AdminIsoStandard",
                "admin/iso-standard",
                "~/Adminpanel/ISOStandard.aspx"
            );

            routes.MapPageRoute(
                "AdminEditIsoStandard",
                "admin/edit-iso-standard",
                "~/Adminpanel/EditISOStandard.aspx"
            );

            routes.MapPageRoute(
                "AdminEditApplication",
                "admin/edit-application",
                "~/Adminpanel/EditApplication.aspx"
            );

            routes.MapPageRoute(
                "AdminChangePassword",
                "admin/change-password",
                "~/Adminpanel/Changepassword.aspx"
            );

            // Existing Friendly URLs (public site). Registered last so the
            // explicit /admin/... routes above always win first.
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;

            routes.EnableFriendlyUrls(settings);
        }
    }
}
