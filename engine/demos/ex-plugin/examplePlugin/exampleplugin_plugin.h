#ifndef EXAMPLEPLUGIN_PLUGIN_H
#define EXAMPLEPLUGIN_PLUGIN_H

#include <QQmlExtensionPlugin>

class ExamplePluginPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);
};

#endif // EXAMPLEPLUGIN_PLUGIN_H
