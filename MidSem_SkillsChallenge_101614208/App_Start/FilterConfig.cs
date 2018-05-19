using System.Web;
using System.Web.Mvc;

namespace MidSem_SkillsChallenge_101614208
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
