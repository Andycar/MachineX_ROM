.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final BUTTON_LIGHT_TIMEOUT_CHANGED:I = 0x800000

.field public static final COVER_MODE_CHANGED:I = 0x2000000

.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final EVERYTHING_CHANGED:I = -0x1

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000

.field public static final FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000

.field public static final FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final FLAG_NEEDS_MENU_KEY:I = 0x40000000

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000

.field public static final FLAG_SLIPPERY:I = 0x20000000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final INPUT_FEATURE_DISABLE_POINTER_GESTURES:I = 0x1

.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x2

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final METADATA_COVER_MODE:Ljava/lang/String; = "com.sec.android.sdk.cover.MODE"

.field public static final MULTIWINDOW_FLAGS_CHANGED:I = 0x4000000

.field public static final MULTIWINDOW_FLAG_ABSOLUTE_LAYOUT_WITH_MULTI_WINDOW:I = 0x8

.field public static final MULTIWINDOW_FLAG_DISABLE_MULTI_WINDOW_TRAY_BAR:I = 0x2

.field public static final MULTIWINDOW_FLAG_FORCE_HIDE_POPUP_WINDOW:I = 0x40

.field public static final MULTIWINDOW_FLAG_NEEDS_OFFSET_TITLEBAR:I = 0x20

.field public static final MULTIWINDOW_FLAG_NOTIFY_SYSTEMUI_VISIBILITY_CHANGED:I = 0x4

.field public static final MULTIWINDOW_FLAG_NOT_FORCE_HIDE:I = 0x1

.field public static final MULTIWINDOW_FLAG_NOT_MULTIPHONEWINDOW:I = 0x10

.field public static final PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED:I = 0x1

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final PRIVATE_FLAG_FULLY_TRANSPARENT:I = 0x10000000

.field public static final PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR:I = 0x200

.field public static final PRIVATE_FLAG_KEYGUARD:I = 0x400

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final PRIVATE_FLAG_SCALED_SURFACE:I = 0x1000000

.field public static final PRIVATE_FLAG_SET_NEEDS_MENU_KEY:I = 0x8

.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final SAMSUNG_FLAGS_CHANGED:I = 0x1000000

.field public static final SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I = 0x2

.field public static final SAMSUNG_FLAG_FIXED_ORIENTATION_LANDSCAPE:I = 0x4

.field public static final SAMSUNG_FLAG_FIXED_ORIENTATION_PORTRAIT:I = 0x8

.field public static final SAMSUNG_FLAG_FULLSCREEN_COCKTAIL:I = 0x20000000

.field public static final SAMSUNG_FLAG_INTERNAL_PRESENTATION:I = -0x80000000

.field public static final SAMSUNG_FLAG_NO_RESIZE_ANIMATION_INCLUDE_CHILD:I = 0x10

.field public static final SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I = 0x1

.field public static final SAMSUNG_FLAG_SVIEW_COVER:I = 0x10000000

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_DIM_DURATION_CHANGED:I = 0x400000

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_COCKTAIL:I = 0x62

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final TYPE_BOTTOM_SOFTKEY:I = 0x8d0

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_COCKTAIL_BAR:I = 0x8ac

.field public static final TYPE_COCKTAIL_BAR_BACKGROUND:I = 0x8ae

.field public static final TYPE_COCKTAIL_BAR_OVERLAY:I = 0x8ad

.field public static final TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final TYPE_DRAG:I = 0x7e0

.field public static final TYPE_DREAM:I = 0x7e7

.field public static final TYPE_EASYONEHAND_ADDON:I = 0x8cc

.field public static final TYPE_EASYONEHAND_BACKGROUND:I = 0x8cf

.field public static final TYPE_EASYONEHAND_CONTROLLER:I = 0x8ca

.field public static final TYPE_EASYONEHAND_SIDE_PANEL:I = 0x8cd

.field public static final TYPE_EASYONEHAND_SIDE_SOFTKEY:I = 0x8ce

.field public static final TYPE_HIDDEN_NAV_CONSUMER:I = 0x7e6

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_KEYGUARD_EFFECT:I = 0x832

.field public static final TYPE_KEYGUARD_SCRIM:I = 0x7ed

.field public static final TYPE_KMS:I = 0x8cb

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final TYPE_MINI_APP:I = 0x834

.field public static final TYPE_MINI_APP_DIALOG:I = 0x835

.field public static final TYPE_MINI_APP_ON_KEYGUARD:I = 0x836

.field public static final TYPE_MINI_APP_ON_KEYGUARD_DIALOG:I = 0x837

.field public static final TYPE_MULTI_WINDOW_CONTROLLER:I = 0x3ee

.field public static final TYPE_MULTI_WINDOW_CONTROLLER_PANEL:I = 0x3ef

.field public static final TYPE_MULTI_WINDOW_CONTROL_BAR:I = 0x898

.field public static final TYPE_MULTI_WINDOW_DRAG_MODE:I = 0x89c

.field public static final TYPE_MULTI_WINDOW_EDIT_MODE:I = 0x89a

.field public static final TYPE_MULTI_WINDOW_GUIDE_MODE:I = 0x89b

.field public static final TYPE_MULTI_WINDOW_GUIDE_VIEW:I = 0x8d4

.field public static final TYPE_MULTI_WINDOW_SWITCH_WINDOW:I = 0x8a4

.field public static final TYPE_MULTI_WINDOW_TRAY_BAR:I = 0x899

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_PHONE:I = 0x7d2

.field public static final TYPE_POINTER:I = 0x7e2

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7

.field public static final TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final TYPE_RECENTS_OVERLAY:I = 0x7ec

.field public static final TYPE_RECENTS_PANEL:I = 0x82f

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_SIDE_SYNC_OVERLAY:I = 0x8b6

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_OVERLAY:I = 0x831

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_STATUS_BAR_PANEL_USER:I = 0x830

.field public static final TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final TYPE_SVIEW_COVER_DIALOG:I = 0x833

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6

.field public static final TYPE_TOAST:I = 0x7d5

.field public static final TYPE_UNIVERSE_BACKGROUND:I = 0x7e9

.field public static final TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final TYPE_VR_APPLICATION:I = 0x61

.field public static final TYPE_VR_BACKGROUND:I = 0x7f3

.field public static final TYPE_VR_MODE_TRANSITION:I = 0x7f2

.field public static final TYPE_VR_POPUP:I = 0x7f1

.field public static final TYPE_WALLPAPER:I = 0x7dd

.field public static final USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public alpha:F

.field public buttonBrightness:F

.field public buttonLightTimeout:J

.field public coverMode:I

.field public dimAmount:F

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FLAG_DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "FLAG_BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "FLAG_NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "FLAG_NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "FLAG_NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "FLAG_TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "FLAG_KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "FLAG_LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "FLAG_LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FLAG_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FLAG_FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FLAG_DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "FLAG_SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FLAG_SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "FLAG_IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "FLAG_LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FLAG_ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "FLAG_WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "FLAG_SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "FLAG_SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "FLAG_TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "FLAG_DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "FLAG_SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "FLAG_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FLAG_LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "FLAG_TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "FLAG_TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public format:I

.field public gravity:I

.field public hasSystemUiListeners:Z

.field public horizontalMargin:F

.field public horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public inputFeatures:I

.field private mCompatibilityParamsBackup:[I

.field private mTitle:Ljava/lang/CharSequence;

.field public memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public multiWindowFlags:I

.field public packageName:Ljava/lang/String;

.field public preferredRefreshRate:F

.field public privateFlags:I

.field public rotationAnimation:I

.field public samsungFlags:I

.field public screenBrightness:F

.field public screenDimDuration:J

.field public screenOrientation:I

.field public softInputMode:I

.field public subtreeSystemUiVisibility:I

.field public surfaceInsets:Landroid/graphics/Rect;

.field public systemUiVisibility:I

.field public token:Landroid/os/IBinder;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "TYPE_BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TYPE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TYPE_APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "TYPE_APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "TYPE_APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "TYPE_APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "TYPE_APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "TYPE_APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "TYPE_STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "TYPE_SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "TYPE_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "TYPE_SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TYPE_TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "TYPE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "TYPE_PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "TYPE_SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "TYPE_KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "TYPE_SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "TYPE_INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "TYPE_INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "TYPE_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "TYPE_STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "TYPE_SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "TYPE_DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "TYPE_STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "TYPE_POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "TYPE_NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "TYPE_VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "TYPE_BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "TYPE_HIDDEN_NAV_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e7
                to = "TYPE_DREAM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "TYPE_NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "TYPE_DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "TYPE_MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "TYPE_PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "TYPE_VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x833
                to = "TYPE_SVIEW_COVER_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x61
                to = "TYPE_VR_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "TYPE_VR_POPUP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "TYPE_VR_MODE_TRANSITION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "TYPE_VR_BACKGROUND"
            .end subannotation
        }
    .end annotation
.end field

.field public userActivityTimeout:J

.field public verticalMargin:F

.field public verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public windowAnimations:I

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2097
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1992
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1644
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1663
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1670
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1699
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1707
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1739
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1745
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1750
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1760
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1848
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1863
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1875
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 1988
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2209
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2561
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1993
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1994
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1995
    return-void
.end method

.method public constructor <init>(I)V
    .registers 9
    .param p1, "_type"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1998
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1644
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1663
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1670
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1699
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1707
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1739
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1745
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1750
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1760
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1848
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1863
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1875
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 1988
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2209
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2561
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1999
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2000
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2001
    return-void
.end method

.method public constructor <init>(II)V
    .registers 10
    .param p1, "_type"    # I
    .param p2, "_flags"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2004
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1644
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1663
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1670
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1699
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1707
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1739
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1745
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1750
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1760
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1848
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1863
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1875
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 1988
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2209
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2561
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2005
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2006
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2007
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2008
    return-void
.end method

.method public constructor <init>(III)V
    .registers 11
    .param p1, "_type"    # I
    .param p2, "_flags"    # I
    .param p3, "_format"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2011
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1644
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1663
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1670
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1699
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1707
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1739
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1745
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1750
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1760
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1848
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1863
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1875
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 1988
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2209
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2561
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2012
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2013
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2014
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2015
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "_type"    # I
    .param p4, "_flags"    # I
    .param p5, "_format"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 2018
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1644
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1663
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1670
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1699
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1707
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1739
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1745
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1750
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1760
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1848
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1863
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1875
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 1988
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2209
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2561
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2019
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2020
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2021
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2022
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 15
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "xpos"    # I
    .param p4, "ypos"    # I
    .param p5, "_type"    # I
    .param p6, "_flags"    # I
    .param p7, "_format"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 2026
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1644
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1663
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1670
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1699
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1707
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1739
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1745
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1750
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1760
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1848
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1863
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1875
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 1988
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2209
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2561
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2027
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2028
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2029
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2030
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2031
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2032
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2109
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 1644
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1663
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1670
    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1699
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1707
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1739
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1745
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1750
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1760
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1848
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1863
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1875
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 1988
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2209
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2561
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2119
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 2120
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 2121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2123
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2124
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2125
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2126
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2128
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2130
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2132
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 2133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x1

    :goto_d2
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 2136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2138
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2139
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2140
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2141
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 2144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 2145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2155
    return-void

    :cond_11f
    move v0, v1

    .line 2135
    goto :goto_d2
.end method

.method public static mayUseInputMethod(I)Z
    .registers 2
    .param p0, "flags"    # I

    .prologue
    .line 1481
    const v0, 0x20008

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_c

    .line 1486
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 1484
    :sswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 1481
    nop

    :sswitch_data_c
    .sparse-switch
        0x0 -> :sswitch_9
        0x20008 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method backup()V
    .registers 4

    .prologue
    .line 2536
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2537
    .local v0, "backup":[I
    if-nez v0, :cond_9

    .line 2539
    const/4 v1, 0x4

    new-array v0, v1, [I

    .end local v0    # "backup":[I
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2541
    .restart local v0    # "backup":[I
    :cond_9
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    .line 2542
    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    .line 2543
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    .line 2544
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    .line 2545
    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .registers 8
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2212
    const/4 v0, 0x0

    .line 2214
    .local v0, "changes":I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v3, :cond_d

    .line 2215
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2216
    or-int/lit8 v0, v0, 0x1

    .line 2218
    :cond_d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v3, :cond_19

    .line 2219
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2220
    or-int/lit8 v0, v0, 0x1

    .line 2222
    :cond_19
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v2, v3, :cond_25

    .line 2223
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2224
    or-int/lit8 v0, v0, 0x1

    .line 2226
    :cond_25
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, v3, :cond_31

    .line 2227
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2228
    or-int/lit8 v0, v0, 0x1

    .line 2230
    :cond_31
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3f

    .line 2231
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 2232
    or-int/lit8 v0, v0, 0x1

    .line 2234
    :cond_3f
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4d

    .line 2235
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 2236
    or-int/lit8 v0, v0, 0x1

    .line 2238
    :cond_4d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5b

    .line 2239
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 2240
    or-int/lit8 v0, v0, 0x1

    .line 2242
    :cond_5b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_69

    .line 2243
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 2244
    or-int/lit8 v0, v0, 0x1

    .line 2246
    :cond_69
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_75

    .line 2247
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2248
    or-int/lit8 v0, v0, 0x2

    .line 2250
    :cond_75
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_8f

    .line 2251
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int v1, v2, v3

    .line 2252
    .local v1, "diff":I
    const/high16 v2, 0xc000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_89

    .line 2253
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 2255
    :cond_89
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2256
    or-int/lit8 v0, v0, 0x4

    .line 2258
    .end local v1    # "diff":I
    :cond_8f
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eq v2, v3, :cond_9c

    .line 2259
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2260
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 2262
    :cond_9c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v2, v3, :cond_a8

    .line 2263
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2264
    or-int/lit16 v0, v0, 0x200

    .line 2266
    :cond_a8
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v3, :cond_b4

    .line 2267
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2268
    or-int/lit8 v0, v0, 0x1

    .line 2270
    :cond_b4
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v2, v3, :cond_c0

    .line 2271
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2272
    or-int/lit8 v0, v0, 0x8

    .line 2274
    :cond_c0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_cc

    .line 2275
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2276
    or-int/lit8 v0, v0, 0x10

    .line 2278
    :cond_cc
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v2, :cond_d4

    .line 2281
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2283
    :cond_d4
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v2, :cond_dc

    .line 2286
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2288
    :cond_dc
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ec

    .line 2289
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2290
    or-int/lit8 v0, v0, 0x40

    .line 2292
    :cond_ec
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_fa

    .line 2293
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2294
    or-int/lit16 v0, v0, 0x80

    .line 2296
    :cond_fa
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_108

    .line 2297
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2298
    or-int/lit8 v0, v0, 0x20

    .line 2300
    :cond_108
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_116

    .line 2301
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2302
    or-int/lit16 v0, v0, 0x800

    .line 2304
    :cond_116
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_124

    .line 2305
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 2306
    or-int/lit16 v0, v0, 0x2000

    .line 2308
    :cond_124
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v2, v3, :cond_130

    .line 2309
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 2310
    or-int/lit16 v0, v0, 0x1000

    .line 2313
    :cond_130
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v2, v3, :cond_13c

    .line 2314
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2315
    or-int/lit16 v0, v0, 0x400

    .line 2318
    :cond_13c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_14b

    .line 2319
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 2320
    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    .line 2323
    :cond_14b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v2, v3, :cond_157

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v2, v3, :cond_161

    .line 2325
    :cond_157
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2326
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2327
    or-int/lit16 v0, v0, 0x4000

    .line 2330
    :cond_161
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v2, v3, :cond_16f

    .line 2331
    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 2332
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 2335
    :cond_16f
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v2, v3, :cond_17c

    .line 2336
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2337
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 2340
    :cond_17c
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v4, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18b

    .line 2341
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2342
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 2345
    :cond_18b
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19f

    .line 2346
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2347
    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    .line 2351
    :cond_19f
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iget-wide v4, p1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1ae

    .line 2352
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 2353
    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    .line 2356
    :cond_1ae
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    iget-wide v4, p1, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1bd

    .line 2357
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 2358
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 2361
    :cond_1bd
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eq v2, v3, :cond_1ca

    .line 2362
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2363
    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 2368
    :cond_1ca
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-eq v2, v3, :cond_1d7

    .line 2369
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 2370
    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    .line 2376
    :cond_1d7
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    if-eq v2, v3, :cond_1e4

    .line 2377
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2378
    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    .line 2382
    :cond_1e4
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 2387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2388
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    const-string v0, ""

    invoke-super {p0, v0}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2390
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    const-string v0, "Debug"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowManager.LayoutParams={title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const-string v0, ""

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 2046
    const/4 v0, 0x0

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2042
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method restore()V
    .registers 3

    .prologue
    .line 2552
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2553
    .local v0, "backup":[I
    if-eqz v0, :cond_18

    .line 2554
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2555
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2556
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2557
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2559
    :cond_18
    return-void
.end method

.method public scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 2521
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2522
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2523
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_1e

    .line 2524
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2526
    :cond_1e
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_2a

    .line 2527
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2529
    :cond_2a
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2035
    if-nez p1, :cond_4

    .line 2036
    const-string p1, ""

    .line 2038
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 2039
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, -0x2

    const/high16 v5, -0x40800000    # -1.0f

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2399
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WM.LayoutParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2401
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2402
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2403
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2404
    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v3, :cond_20b

    const-string v1, "fill"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2406
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2407
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v3, :cond_21c

    const-string v1, "fill"

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2408
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_58

    .line 2410
    const-string v1, " hm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2411
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2413
    :cond_58
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_68

    .line 2414
    const-string v1, " vm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2417
    :cond_68
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v1, :cond_7a

    .line 2418
    const-string v1, " gr=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    :cond_7a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eqz v1, :cond_8c

    .line 2422
    const-string v1, " sim=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    :cond_8c
    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2427
    const-string v1, " fl=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v1, :cond_c2

    .line 2430
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b3

    .line 2431
    const-string v1, " compatible=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    :cond_b3
    const-string v1, " pfl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    :cond_c2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v3, :cond_d0

    .line 2436
    const-string v1, " fmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2439
    :cond_d0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_e2

    .line 2440
    const-string v1, " wanim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    :cond_e2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v3, :cond_f0

    .line 2444
    const-string v1, " or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2447
    :cond_f0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_102

    .line 2448
    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2451
    :cond_102
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_112

    .line 2452
    const-string v1, " sbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2455
    :cond_112
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_122

    .line 2456
    const-string v1, " bbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2459
    :cond_122
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v1, :cond_130

    .line 2460
    const-string v1, " rotAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2463
    :cond_130
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_140

    .line 2464
    const-string v1, " preferredRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2465
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2467
    :cond_140
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v1, :cond_152

    .line 2468
    const-string v1, " sysui=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    :cond_152
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v1, :cond_164

    .line 2472
    const-string v1, " vsysui=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2473
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2475
    :cond_164
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v1, :cond_172

    .line 2476
    const-string v1, " sysuil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2479
    :cond_172
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v1, :cond_185

    .line 2480
    const-string v1, " if=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2482
    :cond_185
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_196

    .line 2483
    const-string v1, " userActivityTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2485
    :cond_196
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ab

    .line 2486
    const-string v1, " surfaceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2489
    :cond_1ab
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1bc

    .line 2490
    const-string v1, " screenDimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2492
    :cond_1bc
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1cd

    .line 2493
    const-string v1, " buttonLightTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2495
    :cond_1cd
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eqz v1, :cond_1df

    .line 2496
    const-string v1, " sfl=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2501
    :cond_1df
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-eqz v1, :cond_1ee

    .line 2502
    const-string v1, " cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2507
    :cond_1ee
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    if-ltz v1, :cond_201

    .line 2508
    const-string v1, " mwfl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2512
    :cond_201
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2405
    :cond_20b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_214

    const-string/jumbo v1, "wrap"

    goto/16 :goto_32

    :cond_214
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_32

    .line 2407
    :cond_21c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v2, :cond_225

    const-string/jumbo v1, "wrap"

    goto/16 :goto_40

    :cond_225
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_40
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 2050
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2051
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2052
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2053
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2055
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2056
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2058
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2060
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2061
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2063
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2064
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2065
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2066
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2067
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2069
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2070
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2071
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2072
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2073
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v0, :cond_c5

    const/4 v0, 0x1

    :goto_82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2076
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2078
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2079
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2080
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2084
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2085
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2088
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    return-void

    .line 2075
    :cond_c5
    const/4 v0, 0x0

    goto :goto_82
.end method
