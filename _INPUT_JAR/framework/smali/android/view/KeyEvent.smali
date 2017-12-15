.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$DispatcherState;,
        Landroid/view/KeyEvent$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_11:I = 0xe3

.field public static final KEYCODE_12:I = 0xe4

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_2ND_SCREEN_WAKEUP:I = 0x149

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_3G:I = 0x128

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ACTIVE:I = 0x145

.field public static final KEYCODE_ALT_GR:I = 0x10e

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APPLICATION:I = 0x106

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BLUETOOTH:I = 0x129

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_GAME:I = 0x136

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAMERA_FLASH:I = 0x120

.field public static final KEYCODE_CAMERA_FOCUS_RING_LEFT:I = 0x122

.field public static final KEYCODE_CAMERA_FOCUS_RING_RIGHT:I = 0x123

.field public static final KEYCODE_CAMERA_FUNCTION:I = 0x121

.field public static final KEYCODE_CAMERA_RECORD:I = 0x11a

.field public static final KEYCODE_CAMERA_ZOOM_RING_IN:I = 0x124

.field public static final KEYCODE_CAMERA_ZOOM_RING_MOVE:I = 0x126

.field public static final KEYCODE_CAMERA_ZOOM_RING_OUT:I = 0x125

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED1:I = 0x12a

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED2:I = 0x12b

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED3:I = 0x12c

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED4:I = 0x12d

.field public static final KEYCODE_CAM_QUICK:I = 0x146

.field public static final KEYCODE_CAM_QUICK_FRONT:I = 0x148

.field public static final KEYCODE_CAM_QUICK_REAR:I = 0x147

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_CLIPBOARD:I = 0x10d

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DMB_ANT_CLOSE:I = 0x116

.field public static final KEYCODE_DMB_ANT_OPEN:I = 0x115

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DUMMY_BACK:I = 0x11d

.field public static final KEYCODE_DUMMY_HOME:I = 0x11c

.field public static final KEYCODE_DUMMY_HOME1:I = 0x11e

.field public static final KEYCODE_DUMMY_HOME2:I = 0x11f

.field public static final KEYCODE_DUMMY_MENU:I = 0x11a

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_EMAIL:I = 0x10c

.field public static final KEYCODE_END:I = 0x127

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FINGER_DETECTED:I = 0x131

.field public static final KEYCODE_FINGER_REMOVED:I = 0x132

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HELP:I = 0x103

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_JOG_LEFT:I = 0x117

.field public static final KEYCODE_JOG_RIGHT:I = 0x118

.field public static final KEYCODE_JOG_SELECT:I = 0x119

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANG:I = 0x109

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LAST_CHANNEL:I = 0xe5

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_LOCK:I = 0x10f

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MEDIA_TOP_MENU:I = 0xe2

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINIMODE_ON_OFF:I = 0x104

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOUSE_ACTION:I = 0x140

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MULTI_WINDOW:I = 0x141

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NETWORK_SEL:I = 0x133

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PAIRING:I = 0xe1

.field public static final KEYCODE_PDCT:I = 0x114

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_QPANEL_ON_OFF:I = 0x107

.field public static final KEYCODE_QUESTION:I = 0x112

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RECENTAPPS:I = 0x105

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SCREEN_CAPTURE:I = 0x108

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SFINDER:I = 0x144

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SIDE_CAMERA_DETECTED:I = 0x13f

.field public static final KEYCODE_SIDE_GESTURE_LEFT:I = 0x14b

.field public static final KEYCODE_SIDE_GESTURE_RIGHT:I = 0x14a

.field public static final KEYCODE_SIDE_TOUCH_0:I = 0x137

.field public static final KEYCODE_SIDE_TOUCH_1:I = 0x138

.field public static final KEYCODE_SIDE_TOUCH_2:I = 0x139

.field public static final KEYCODE_SIDE_TOUCH_3:I = 0x13a

.field public static final KEYCODE_SIDE_TOUCH_4:I = 0x13b

.field public static final KEYCODE_SIDE_TOUCH_5:I = 0x13c

.field public static final KEYCODE_SIDE_TOUCH_6:I = 0x13d

.field public static final KEYCODE_SIDE_TOUCH_7:I = 0x13e

.field public static final KEYCODE_SIM:I = 0x134

.field public static final KEYCODE_SIP_ON_OFF:I = 0x10a

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SLEEP:I = 0xdf

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_SPEAKER:I = 0x110

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_TEXT:I = 0x111

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_ANTENNA_CABLE:I = 0xf2

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION:I = 0xfc

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN:I = 0xfe

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP:I = 0xfd

.field public static final KEYCODE_TV_CONTENTS_MENU:I = 0x100

.field public static final KEYCODE_TV_DATA_SERVICE:I = 0xe6

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_INPUT_COMPONENT_1:I = 0xf9

.field public static final KEYCODE_TV_INPUT_COMPONENT_2:I = 0xfa

.field public static final KEYCODE_TV_INPUT_COMPOSITE_1:I = 0xf7

.field public static final KEYCODE_TV_INPUT_COMPOSITE_2:I = 0xf8

.field public static final KEYCODE_TV_INPUT_HDMI_1:I = 0xf3

.field public static final KEYCODE_TV_INPUT_HDMI_2:I = 0xf4

.field public static final KEYCODE_TV_INPUT_HDMI_3:I = 0xf5

.field public static final KEYCODE_TV_INPUT_HDMI_4:I = 0xf6

.field public static final KEYCODE_TV_INPUT_VGA_1:I = 0xfb

.field public static final KEYCODE_TV_MEDIA_CONTEXT_MENU:I = 0x101

.field public static final KEYCODE_TV_NETWORK:I = 0xf1

.field public static final KEYCODE_TV_NUMBER_ENTRY:I = 0xea

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_TV_RADIO_SERVICE:I = 0xe8

.field public static final KEYCODE_TV_SATELLITE:I = 0xed

.field public static final KEYCODE_TV_SATELLITE_BS:I = 0xee

.field public static final KEYCODE_TV_SATELLITE_CS:I = 0xef

.field public static final KEYCODE_TV_SATELLITE_SERVICE:I = 0xf0

.field public static final KEYCODE_TV_TELETEXT:I = 0xe9

.field public static final KEYCODE_TV_TERRESTRIAL_ANALOG:I = 0xeb

.field public static final KEYCODE_TV_TERRESTRIAL_DIGITAL:I = 0xec

.field public static final KEYCODE_TV_TIMER_PROGRAMMING:I = 0x102

.field public static final KEYCODE_TV_ZOOM_MODE:I = 0xff

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_USER:I = 0x113

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VIRTUALEYE_BUTTON:I = 0x12f

.field public static final KEYCODE_VOICEMEMO_BUTTON:I = 0x130

.field public static final KEYCODE_VOICESEARCH:I = 0x10b

.field public static final KEYCODE_VOICE_ASSIST:I = 0xe7

.field public static final KEYCODE_VOICE_WAKEUP:I = 0x142

.field public static final KEYCODE_VOICE_WAKEUP_LPSD:I = 0x143

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WAKEUP:I = 0xe0

.field public static final KEYCODE_WATCH:I = 0x135

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_WPS_BUTTON:I = 0x12e

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LABEL_PREFIX:Ljava/lang/String; = "KEYCODE_"

.field private static final LAST_KEYCODE:I = 0x14b

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_GR_ON:I = 0x8000

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDisplayId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1148
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "META_SHIFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "META_ALT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "META_SYM_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "META_FUNCTION_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "META_ALT_LEFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "META_ALT_RIGHT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "META_SHIFT_LEFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "META_SHIFT_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "META_CAP_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "META_ALT_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "META_SYM_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0x00000800"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "META_CTRL_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "META_CTRL_LEFT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "META_CTRL_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "0x00008000"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "META_META_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "META_META_LEFT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "META_META_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "0x00080000"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "META_CAPS_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "META_NUM_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "META_SCROLL_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "0x00800000"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "0x01000000"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "0x02000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0x04000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "0x08000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "0x10000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "0x20000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "0x40000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "0x80000000"

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1564
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 3403
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1644
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1645
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 1654
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1655
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1656
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1657
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1658
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1659
    iput v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1660
    return-void
.end method

.method public constructor <init>(JJIII)V
    .registers 9
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I

    .prologue
    .line 1676
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1677
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1678
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1679
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1680
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1681
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1682
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1683
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1684
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .registers 10
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I

    .prologue
    .line 1701
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1702
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1703
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1704
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1705
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1706
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1707
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1708
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1709
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1710
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .registers 12
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I

    .prologue
    .line 1730
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1731
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1732
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1733
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1734
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1735
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1736
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1737
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1738
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1739
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1740
    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .registers 13
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I

    .prologue
    .line 1761
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1762
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1763
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1764
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1765
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1766
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1767
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1768
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1769
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1770
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1771
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1772
    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .registers 14
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I

    .prologue
    .line 1794
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1795
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1796
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1797
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1798
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1799
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1800
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1801
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1802
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1803
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1804
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1805
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1806
    return-void
.end method

.method public constructor <init>(JJIIIIIIIII)V
    .registers 15
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "displayId"    # I

    .prologue
    .line 1831
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1832
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1833
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1834
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1835
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1836
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1837
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1838
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1839
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1840
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1841
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1842
    iput p13, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1843
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .registers 9
    .param p1, "time"    # J
    .param p3, "characters"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .param p5, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1857
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1858
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1859
    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1860
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1861
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1862
    iput v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1863
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1864
    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1865
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1866
    iput v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1867
    const/16 v0, 0x101

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1868
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3420
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 3421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 3422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 3423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 3428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3430
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3431
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3432
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "origEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1873
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1874
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1875
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1876
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1877
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1878
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1879
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1880
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1881
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1882
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1883
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1884
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1885
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1886
    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .registers 5
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "action"    # I

    .prologue
    .line 2073
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2074
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2075
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2076
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2077
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2078
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2079
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2080
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2081
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2082
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2083
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2084
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2087
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .registers 7
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "eventTime"    # J
    .param p4, "newRepeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1900
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1901
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1902
    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1903
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1904
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1905
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1906
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1907
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1908
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1909
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1910
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1911
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1912
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1913
    return-void
.end method

.method static synthetic access$076(Landroid/view/KeyEvent;I)I
    .registers 3
    .param p0, "x0"    # Landroid/view/KeyEvent;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .prologue
    .line 3317
    packed-switch p0, :pswitch_data_12

    .line 3325
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 3319
    :pswitch_8
    const-string v0, "ACTION_DOWN"

    goto :goto_7

    .line 3321
    :pswitch_b
    const-string v0, "ACTION_UP"

    goto :goto_7

    .line 3323
    :pswitch_e
    const-string v0, "ACTION_MULTIPLE"

    goto :goto_7

    .line 3317
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "action"    # I

    .prologue
    .line 2097
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "flags"    # I

    .prologue
    .line 2108
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2109
    .end local p0    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2110
    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .registers 5
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    .prologue
    .line 2044
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .registers 6
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I
    .param p4, "newFlags"    # I

    .prologue
    .line 2060
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2061
    .local v0, "ret":Landroid/view/KeyEvent;
    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2062
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2063
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2064
    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3417
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .registers 3
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .prologue
    .line 1557
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static getMaxKeyCode()I
    .registers 1

    .prologue
    .line 1548
    const/16 v0, 0x14b

    return v0
.end method

.method public static getModifierMetaStateMask()I
    .registers 1

    .prologue
    .line 2445
    const v0, 0x770ff

    return v0
.end method

.method public static final isConfirmKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2196
    sparse-switch p0, :sswitch_data_8

    .line 2201
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2199
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2196
    nop

    :sswitch_data_8
    .sparse-switch
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isGamepadButton(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2154
    sparse-switch p0, :sswitch_data_8

    .line 2188
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2186
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2154
    nop

    :sswitch_data_8
    .sparse-switch
        0x60 -> :sswitch_5
        0x61 -> :sswitch_5
        0x62 -> :sswitch_5
        0x63 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_5
        0x6c -> :sswitch_5
        0x6d -> :sswitch_5
        0x6e -> :sswitch_5
        0xbc -> :sswitch_5
        0xbd -> :sswitch_5
        0xbe -> :sswitch_5
        0xbf -> :sswitch_5
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_5
        0xc2 -> :sswitch_5
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_5
        0xc5 -> :sswitch_5
        0xc6 -> :sswitch_5
        0xc7 -> :sswitch_5
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_5
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isMediaKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2212
    sparse-switch p0, :sswitch_data_8

    .line 2226
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2224
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2212
    nop

    :sswitch_data_8
    .sparse-switch
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isMetaKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2306
    const/16 v0, 0x75

    if-eq p0, v0, :cond_8

    const/16 v0, 0x76

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isModifierKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2465
    sparse-switch p0, :sswitch_data_8

    .line 2480
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2478
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2465
    nop

    :sswitch_data_8
    .sparse-switch
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3f -> :sswitch_5
        0x4e -> :sswitch_5
        0x71 -> :sswitch_5
        0x72 -> :sswitch_5
        0x75 -> :sswitch_5
        0x76 -> :sswitch_5
        0x77 -> :sswitch_5
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isSystemKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2234
    sparse-switch p0, :sswitch_data_8

    .line 2265
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2262
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2234
    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x4f -> :sswitch_5
        0x50 -> :sswitch_5
        0x52 -> :sswitch_5
        0x54 -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isWakeKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2270
    sparse-switch p0, :sswitch_data_8

    .line 2301
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2299
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2270
    nop

    :sswitch_data_8
    .sparse-switch
        0x3 -> :sswitch_5
        0x1a -> :sswitch_5
        0xdf -> :sswitch_5
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0x113 -> :sswitch_5
        0x115 -> :sswitch_5
        0x116 -> :sswitch_5
        0x142 -> :sswitch_5
        0x143 -> :sswitch_5
    .end sparse-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .registers 4
    .param p0, "symbolicName"    # Ljava/lang/String;

    .prologue
    .line 3353
    const-string v2, "KEYCODE_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3354
    const-string v2, "KEYCODE_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3355
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeFromString(Ljava/lang/String;)I

    move-result v1

    .line 3356
    .local v1, "keyCode":I
    if-lez v1, :cond_19

    .line 3363
    .end local v1    # "keyCode":I
    :goto_18
    return v1

    .line 3361
    :cond_19
    const/16 v2, 0xa

    :try_start_1b
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result v1

    goto :goto_18

    .line 3362
    :catch_20
    move-exception v0

    .line 3363
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "keyCode"    # I

    .prologue
    .line 3340
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3341
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19
    return-object v1

    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .registers 11
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2606
    and-int v4, p1, p2

    if-eqz v4, :cond_4b

    move v1, v2

    .line 2607
    .local v1, "wantBasic":Z
    :goto_7
    or-int v0, p3, p4

    .line 2608
    .local v0, "directional":I
    and-int v4, p1, v0

    if-eqz v4, :cond_4d

    .line 2610
    .local v2, "wantLeftOrRight":Z
    :goto_d
    if-eqz v1, :cond_53

    .line 2611
    if-eqz v2, :cond_4f

    .line 2612
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifiers must not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " combined with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "directional":I
    .end local v1    # "wantBasic":Z
    .end local v2    # "wantLeftOrRight":Z
    :cond_4b
    move v1, v3

    .line 2606
    goto :goto_7

    .restart local v0    # "directional":I
    .restart local v1    # "wantBasic":Z
    :cond_4d
    move v2, v3

    .line 2608
    goto :goto_d

    .line 2616
    .restart local v2    # "wantLeftOrRight":Z
    :cond_4f
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr p0, v3

    .line 2620
    .end local p0    # "metaState":I
    :cond_52
    :goto_52
    return p0

    .line 2617
    .restart local p0    # "metaState":I
    :cond_53
    if-eqz v2, :cond_52

    .line 2618
    xor-int/lit8 v3, p2, -0x1

    and-int/2addr p0, v3

    goto :goto_52
.end method

.method public static metaStateHasModifiers(II)Z
    .registers 6
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .prologue
    const/4 v0, 0x1

    .line 2585
    const v1, 0x700f00

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    .line 2586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2592
    :cond_10
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    const v2, 0x770ff

    and-int p0, v1, v2

    .line 2593
    const/16 v1, 0x40

    const/16 v2, 0x80

    invoke-static {p0, p1, v0, v1, v2}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2595
    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2597
    const/16 v1, 0x1000

    const/16 v2, 0x2000

    const/16 v3, 0x4000

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2599
    const/high16 v1, 0x10000

    const/high16 v2, 0x20000

    const/high16 v3, 0x40000

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2601
    if-ne p0, p1, :cond_41

    :goto_40
    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method public static metaStateHasNoModifiers(I)Z
    .registers 3
    .param p0, "metaState"    # I

    .prologue
    .line 2549
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "metaState"    # I

    .prologue
    .line 3378
    if-nez p0, :cond_5

    .line 3379
    const-string v2, "0"

    .line 3400
    :cond_4
    :goto_4
    return-object v2

    .line 3381
    :cond_5
    const/4 v3, 0x0

    .line 3382
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3383
    .local v0, "i":I
    :goto_7
    if-eqz p0, :cond_2d

    .line 3384
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_22

    const/4 v1, 0x1

    .line 3385
    .local v1, "isSet":Z
    :goto_e
    ushr-int/lit8 p0, p0, 0x1

    .line 3386
    if-eqz v1, :cond_1f

    .line 3387
    sget-object v4, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 3388
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_24

    .line 3389
    if-eqz p0, :cond_4

    .line 3392
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3398
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    .line 3399
    goto :goto_7

    .line 3384
    .end local v1    # "isSet":Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_e

    .line 3394
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_24
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3395
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 3400
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private static native nativeKeyCodeFromString(Ljava/lang/String;)I
.end method

.method private static native nativeKeyCodeToString(I)Ljava/lang/String;
.end method

.method public static normalizeMetaState(I)I
    .registers 2
    .param p0, "metaState"    # I

    .prologue
    .line 2509
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_6

    .line 2510
    or-int/lit8 p0, p0, 0x1

    .line 2512
    :cond_6
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_c

    .line 2513
    or-int/lit8 p0, p0, 0x2

    .line 2515
    :cond_c
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_12

    .line 2516
    or-int/lit16 p0, p0, 0x1000

    .line 2518
    :cond_12
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1a

    .line 2519
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 2521
    :cond_1a
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_21

    .line 2522
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 2524
    :cond_21
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_27

    .line 2525
    or-int/lit8 p0, p0, 0x2

    .line 2527
    :cond_27
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_2d

    .line 2528
    or-int/lit8 p0, p0, 0x4

    .line 2530
    :cond_2d
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .registers 3

    .prologue
    .line 1917
    sget-object v2, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1918
    :try_start_3
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 1919
    .local v0, "ev":Landroid/view/KeyEvent;
    if-nez v0, :cond_e

    .line 1920
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "ev":Landroid/view/KeyEvent;
    invoke-direct {v0}, Landroid/view/KeyEvent;-><init>()V

    monitor-exit v2

    .line 1927
    .restart local v0    # "ev":Landroid/view/KeyEvent;
    :goto_d
    return-object v0

    .line 1922
    :cond_e
    iget-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 1923
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 1924
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 1925
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 1926
    invoke-virtual {v0}, Landroid/view/KeyEvent;->prepareForReuse()V

    goto :goto_d

    .line 1924
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 16
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "displayId"    # I
    .param p12, "source"    # I
    .param p13, "characters"    # Ljava/lang/String;

    .prologue
    .line 1962
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 1963
    .local v0, "ev":Landroid/view/KeyEvent;
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1964
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1965
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    .line 1966
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1967
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1968
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1969
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1970
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1971
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 1972
    iput p12, v0, Landroid/view/KeyEvent;->mSource:I

    .line 1973
    iput-object p13, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1974
    iput p11, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1975
    return-object v0
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 15
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "characters"    # Ljava/lang/String;

    .prologue
    .line 1938
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 1939
    .local v0, "ev":Landroid/view/KeyEvent;
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1940
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1941
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    .line 1942
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1943
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1944
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1945
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1946
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1947
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 1948
    iput p11, v0, Landroid/view/KeyEvent;->mSource:I

    .line 1949
    iput-object p12, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1950
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1951
    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 5
    .param p0, "other"    # Landroid/view/KeyEvent;

    .prologue
    .line 1984
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 1985
    .local v0, "ev":Landroid/view/KeyEvent;
    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v2, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1986
    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1987
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 1988
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1989
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1990
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1991
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1992
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1993
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 1994
    iget v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1995
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 1996
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1997
    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/view/InputEvent;
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .registers 2

    .prologue
    .line 2003
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .registers 3
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3126
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Landroid/view/KeyEvent$DispatcherState;
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3142
    iget v4, p0, Landroid/view/KeyEvent;->mAction:I

    packed-switch v4, :pswitch_data_76

    move v3, v2

    .line 3192
    :cond_8
    :goto_8
    return v3

    .line 3144
    :pswitch_9
    iget v4, p0, Landroid/view/KeyEvent;->mFlags:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3147
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 3148
    .local v3, "res":Z
    if-eqz p2, :cond_8

    .line 3149
    if-eqz v3, :cond_2a

    iget v4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v4, :cond_2a

    iget v4, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_2a

    .line 3151
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_8

    .line 3152
    :cond_2a
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3154
    :try_start_36
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3156
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_41
    .catch Ljava/lang/AbstractMethodError; {:try_start_36 .. :try_end_41} :catch_73

    .line 3157
    const/4 v3, 0x1

    goto :goto_8

    .line 3168
    .end local v3    # "res":Z
    :pswitch_43
    if-eqz p2, :cond_48

    .line 3169
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 3171
    :cond_48
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_8

    .line 3173
    :pswitch_4f
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3174
    .local v1, "count":I
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3175
    .local v0, "code":I
    invoke-interface {p1, v0, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3178
    if-eqz v0, :cond_71

    .line 3179
    iput v2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3180
    iput v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3181
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3182
    .local v2, "handled":Z
    if-eqz v2, :cond_6a

    .line 3183
    iput v3, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3184
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 3186
    :cond_6a
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3187
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    move v3, v2

    .line 3188
    goto :goto_8

    .end local v2    # "handled":Z
    :cond_71
    move v3, v2

    .line 3190
    goto :goto_8

    .line 3159
    .end local v0    # "code":I
    .end local v1    # "count":I
    .restart local v3    # "res":Z
    :catch_73
    move-exception v4

    goto :goto_8

    .line 3142
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_9
        :pswitch_43
        :pswitch_4f
    .end packed-switch
.end method

.method public final getAction()I
    .registers 2

    .prologue
    .line 2833
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2891
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()I
    .registers 2

    .prologue
    .line 2312
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public final getDisplayId()I
    .registers 2

    .prologue
    .line 2400
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return v0
.end method

.method public getDisplayLabel()C
    .registers 3

    .prologue
    .line 2995
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .registers 3

    .prologue
    .line 2929
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEventTime()J
    .registers 3

    .prologue
    .line 2941
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .registers 5

    .prologue
    .line 2960
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFlags()I
    .registers 2

    .prologue
    .line 2391
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    .prologue
    .line 2985
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyCode()I
    .registers 2

    .prologue
    .line 2879
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .registers 4
    .param p1, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3057
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final getKeyboardDevice()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2971
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .registers 3
    .param p1, "chars"    # [C

    .prologue
    .line 3072
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public getMatch([CI)C
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "metaState"    # I

    .prologue
    .line 3085
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .registers 2

    .prologue
    .line 2362
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final getModifiers()I
    .registers 3

    .prologue
    .line 2382
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumber()C
    .registers 3

    .prologue
    .line 3109
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .registers 2

    .prologue
    .line 2914
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .registers 2

    .prologue
    .line 2902
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final getSource()I
    .registers 2

    .prologue
    .line 2318
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public getUnicodeChar()I
    .registers 2

    .prologue
    .line 3018
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .registers 4
    .param p1, "metaState"    # I

    .prologue
    .line 3042
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final hasModifiers(I)Z
    .registers 3
    .param p1, "modifiers"    # I

    .prologue
    .line 2670
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final hasNoModifiers()Z
    .registers 2

    .prologue
    .line 2639
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final isAltGrPressed()Z
    .registers 3

    .prologue
    .line 2786
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isAltPressed()Z
    .registers 2

    .prologue
    .line 2683
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isAltRightPressed()Z
    .registers 2

    .prologue
    .line 2691
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isCanceled()Z
    .registers 2

    .prologue
    .line 2841
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isCapsLockOn()Z
    .registers 3

    .prologue
    .line 2799
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isCtrlPressed()Z
    .registers 2

    .prologue
    .line 2746
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isDown()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2135
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isFunctionPressed()Z
    .registers 2

    .prologue
    .line 2771
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isLongPress()Z
    .registers 2

    .prologue
    .line 2869
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isMetaPressed()Z
    .registers 3

    .prologue
    .line 2759
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isNumLockOn()Z
    .registers 3

    .prologue
    .line 2811
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isPrintingKey()Z
    .registers 3

    .prologue
    .line 3118
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isScrollLockOn()Z
    .registers 3

    .prologue
    .line 2823
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isShiftPressed()Z
    .registers 2

    .prologue
    .line 2721
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isSymPressed()Z
    .registers 2

    .prologue
    .line 2733
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isSystem()Z
    .registers 2

    .prologue
    .line 2141
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .registers 3

    .prologue
    .line 2116
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isTracking()Z
    .registers 2

    .prologue
    .line 2861
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isWakeKey()Z
    .registers 2

    .prologue
    .line 2146
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isWakeKey(I)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .registers 4

    .prologue
    .line 2015
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2016
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2018
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2019
    :try_start_9
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1b

    .line 2020
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2021
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v0, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2022
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2024
    :cond_1b
    monitor-exit v1

    .line 2025
    return-void

    .line 2024
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final recycleIfNeededAfterDispatch()V
    .registers 1

    .prologue
    .line 2031
    return-void
.end method

.method public final setClearRightShiftPressed()V
    .registers 2

    .prologue
    .line 2706
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2707
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_12

    .line 2708
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2709
    :cond_12
    return-void
.end method

.method public final setSource(I)V
    .registers 2
    .param p1, "source"    # I

    .prologue
    .line 2324
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2325
    return-void
.end method

.method public final setTainted(Z)V
    .registers 4
    .param p1, "tainted"    # Z

    .prologue
    .line 2122
    if-eqz p1, :cond_a

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2123
    return-void

    .line 2122
    :cond_a
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    goto :goto_7
.end method

.method public final startTracking()V
    .registers 3

    .prologue
    .line 2852
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2853
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3290
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "KeyEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3291
    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3292
    const-string v1, ", scanCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3293
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 3294
    const-string v1, ", characters=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3296
    :cond_43
    const-string v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3297
    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3298
    const-string v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3299
    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3300
    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3301
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3302
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3303
    const-string v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3435
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3437
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3438
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3439
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3440
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3441
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3442
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3443
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3444
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3445
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3446
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3447
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3448
    return-void
.end method
