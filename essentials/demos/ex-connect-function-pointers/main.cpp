/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QtWidgets>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QWidget *window = new QWidget;

    QSlider *slider = new QSlider(Qt::Horizontal);
    slider->setRange(0, 100);

    QSpinBox *spin = new QSpinBox;

    QObject::connect(slider, &QSlider::valueChanged, spin, &QSpinBox::setValue);

    // From spin to slider
    QObject::connect(spin, static_cast<void (QSpinBox::*)(int)>(&QSpinBox::valueChanged), slider, &QSlider::setValue);

    // slider and spin are connected, change will be propagated to spinbox (and vice versa)
    // How an infite loop is avoided?

    slider->setValue(40);

    QHBoxLayout *layout = new QHBoxLayout;
    layout->addWidget(slider);
    layout->addWidget(spin);
    window->setLayout(layout);
    window->show();

    int returnValue = app.exec();
    delete layout;
    delete spin;
    delete slider;
    delete window;
    return returnValue;
}
