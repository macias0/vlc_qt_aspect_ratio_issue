win32:CONFIG(release, debug|release): LIBS += -L$$PWD/vlc/lib/ -lVLCQtCore
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/vlc/lib/ -lVLCQtCore
else:unix: LIBS += -L$$PWD/vlc/lib/ -lVLCQtCore

INCLUDEPATH += $$PWD/vlc/include
DEPENDPATH += $$PWD/vlc/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/vlc/lib/libVLCQtCore.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/vlc/lib/libVLCQtCore.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/vlc/lib/VLCQtCore.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/vlc/lib/VLCQtCore.lib
else:unix: PRE_TARGETDEPS += $$PWD/vlc/lib/libVLCQtCore.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/vlc/lib/ -lVLCQtQml
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/vlc/lib/ -lVLCQtQml
else:unix: LIBS += -L$$PWD/vlc/lib/ -lVLCQtQml

INCLUDEPATH += $$PWD/vlc/include
DEPENDPATH += $$PWD/vlc/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/vlc/lib/libVLCQtQml.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/vlc/lib/libVLCQtQml.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/vlc/lib/VLCQtQml.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/vlc/lib/VLCQtQml.lib
else:unix: PRE_TARGETDEPS += $$PWD/vlc/lib/libVLCQtQml.a
