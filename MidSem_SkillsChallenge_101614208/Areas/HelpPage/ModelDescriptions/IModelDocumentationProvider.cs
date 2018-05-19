using System;
using System.Reflection;

namespace MidSem_SkillsChallenge_101614208.Areas.HelpPage.ModelDescriptions
{
    public interface IModelDocumentationProvider
    {
        string GetDocumentation(MemberInfo member);

        string GetDocumentation(Type type);
    }
}