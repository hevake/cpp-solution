#include <tbox/main/main.h>

#include "app1/app.h"
#include "app2/app.h"
#include "app3/app.h"

namespace tbox::main {
void RegisterApps(Apps &apps)
{
    apps.add(new app1::App);
    apps.add(new app2::App);
    apps.add(new app3::App);
}

std::string GetAppDescribe()
{
    return "This is app_demo, show you how to build a app.";
}

void GetAppVersion(int &major, int &minor, int &rev, int &build)
{
    major = 0;
    minor = 0;
    rev = 1;
    build = 0;
}

}
