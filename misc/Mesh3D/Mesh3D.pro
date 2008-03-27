######################################################################
# Automatically generated by qmake (2.01a) to 27. maalis 11:19:57 2008
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH += . forms plugins tmp\rcc\release_shared
INCLUDEPATH += .
QT += opengl
QT += xml

# Input
HEADERS += bcpropertyeditor.h \
           bodypropertyeditor.h \
           boundarydivision.h \
           dynamiceditor.h \
           edfeditor.h \
           generalsetup.h \
           glwidget.h \
           helpers.h \
           mainwindow.h \
           matpropertyeditor.h \
           meshcontrol.h \
           meshingthread.h \
           meshtype.h \
           meshutils.h \
           pdepropertyeditor.h \
           sifgenerator.h \
           sifwindow.h \
           solverparameters.h \
           summaryeditor.h \
           plugins/egconvert.h \
           plugins/egdef.h \
           plugins/egmain.h \
           plugins/egmesh.h \
           plugins/egnative.h \
           plugins/egtypes.h \
           plugins/egutils.h \
           plugins/elmergrid_api.h \
           plugins/nglib.h \
           plugins/nglib_api.h \
           plugins/tetgen.h \
           plugins/tetlib_api.h
FORMS += forms/bcpropertyeditor.ui \
         forms/bodypropertyeditor.ui \
         forms/boundarydivision.ui \
         forms/generalsetup.ui \
         forms/matpropertyeditor.ui \
         forms/meshcontrol.ui \
         forms/pdepropertyeditor.ui \
         forms/solverparameters.ui \
         forms/summaryeditor.ui
SOURCES += bcpropertyeditor.cpp \
           bodypropertyeditor.cpp \
           boundarydivision.cpp \
           dynamiceditor.cpp \
           edfeditor.cpp \
           generalsetup.cpp \
           glwidget.cpp \
           helpers.cpp \
           main.cpp \
           mainwindow.cpp \
           matpropertyeditor.cpp \
           meshcontrol.cpp \
           meshingthread.cpp \
           meshutils.cpp \
           pdepropertyeditor.cpp \
           sifgenerator.cpp \
           sifwindow.cpp \
           solverparameters.cpp \
           summaryeditor.cpp \
           plugins/egconvert.cpp \
           plugins/egmain.cpp \
           plugins/egmesh.cpp \
           plugins/egnative.cpp \
           plugins/egutils.cpp \
           plugins/elmergrid_api.cpp \
           plugins/nglib_api.cpp \
           plugins/tetlib_api.cpp
RESOURCES += Mesh3D.qrc
