#include "exampleplugin_plugin.h"
#include "imageitem.h"

#include <qqml.h>

void ExamplePluginPlugin::registerTypes(const char *uri)
{
    // @uri com.theqtcompany.demoItems
    qmlRegisterType<ImageItem>(uri, 1, 0, "ImageItem");
}

