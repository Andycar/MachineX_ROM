.class public interface abstract Landroid/view/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;,
        Landroid/view/WindowManagerPolicy$ScreenOnListener;,
        Landroid/view/WindowManagerPolicy$PointerEventListener;,
        Landroid/view/WindowManagerPolicy$WindowManagerFuncs;,
        Landroid/view/WindowManagerPolicy$FakeWindow;,
        Landroid/view/WindowManagerPolicy$WindowState;,
        Landroid/view/WindowManagerPolicy$WindowModeHelper;
    }
.end annotation


# static fields
.field public static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final CAMERA_ROTATION:Z = true

.field public static final EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_FOCUS:I = 0x10

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final FLAG_FILTERED:I = 0x4000000

.field public static final FLAG_INJECTED:I = 0x1000000

.field public static final FLAG_INTERACTIVE:I = 0x20000000

.field public static final FLAG_PASS_TO_USER:I = 0x40000000

.field public static final FLAG_TRUSTED:I = 0x2000000

.field public static final FLAG_VIRTUAL:I = 0x2

.field public static final FLAG_WAKE:I = 0x1

.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final OFF_BECAUSE_OF_PROX_SENSOR:I = 0x4

.field public static final OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final OFF_BECAUSE_OF_USER:I = 0x2

.field public static final PRESENCE_EXTERNAL:I = 0x2

.field public static final PRESENCE_INTERNAL:I = 0x1

.field public static final SUPPORT_COVER:Z = true

.field public static final SUPPORT_MINIMODE:Z = true

.field public static final SUPPORT_WEARABLE_HMT:Z = false

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1

.field public static final WATCH_POINTER:Z = false

.field public static final WINDOW_INFO_ARRANGE_MINIMIZED:I = 0x2

.field public static final WINDOW_INFO_ARRANGE_RESTORE:I = 0x4

.field public static final WINDOW_INFO_NOTHING_CHANGED:I = 0x0

.field public static final WINDOW_INFO_SIZE_CHANGED:I = 0x1

.field public static final WINDOW_MODE_FREESTYLE:I = 0x2000000

.field public static final WINDOW_MODE_MASK:I = -0x1000000

.field public static final WINDOW_MODE_NORMAL:I = 0x1000000

.field public static final WINDOW_MODE_OPTION_COMMON_EXTERNAL_DISP:I = 0x1000

.field public static final WINDOW_MODE_OPTION_COMMON_FORCE_TITLE_BAR:I = 0x40000

.field public static final WINDOW_MODE_OPTION_COMMON_HIDDEN:I = 0x100000

.field public static final WINDOW_MODE_OPTION_COMMON_MASK:I = 0xffff00

.field public static final WINDOW_MODE_OPTION_COMMON_MINIMIZED:I = 0x200000

.field public static final WINDOW_MODE_OPTION_COMMON_NO_TITLE_BAR:I = 0x80000

.field public static final WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_NEXT:I = 0x20000

.field public static final WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_SAME:I = 0x10000

.field public static final WINDOW_MODE_OPTION_COMMON_PINUP:I = 0x800000

.field public static final WINDOW_MODE_OPTION_COMMON_PINUP_HIDDEN:I = 0x4000

.field public static final WINDOW_MODE_OPTION_COMMON_PREVIEW_SCALE:I = 0x400

.field public static final WINDOW_MODE_OPTION_COMMON_RESIZE:I = 0x400000

.field public static final WINDOW_MODE_OPTION_COMMON_SCALE:I = 0x800

.field public static final WINDOW_MODE_OPTION_COMMON_TOOLKIT:I = 0x2000

.field public static final WINDOW_MODE_OPTION_COMMON_TOOLKIT_MASK:I = 0x882000

.field public static final WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK:I = 0x4c0000

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_A:I = 0x3

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_B:I = 0xc

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_C:I = 0x1

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_D:I = 0x2

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_E:I = 0x4

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_F:I = 0x8

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I = 0xf

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I = 0xf

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I = 0x0

.field public static final WINDOW_MODE_OPTION_TOOLKIT_DISP_HIDE:I = 0x40

.field public static final WINDOW_MODE_OPTION_TOOLKIT_DISP_MASK:I = 0xc0

.field public static final WINDOW_MODE_OPTION_TOOLKIT_DISP_SHOW:I = 0x80

.field public static final WINDOW_MODE_OPTION_TOOLKIT_FULL_MASK:I = 0xf0

.field public static final WINDOW_MODE_OPTION_TOOLKIT_ZONE_A:I = 0x20

.field public static final WINDOW_MODE_OPTION_TOOLKIT_ZONE_B:I = 0x10

.field public static final WINDOW_MODE_OPTION_TOOLKIT_ZONE_MASK:I = 0x30

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_DONTCARE:I = 0x0

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_FREESTYLE:I = 0x3

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_MASK:I = 0x30000

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_MASK_SHIFT:I = 0x10

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_NEXT:I = 0x2

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_SAME:I = 0x1

.field public static final WINDOW_MODE_SHIFT:I = 0x18

.field public static final WINDOW_STYLE_ACTIVITY_FORCE_TITLE_BAR:Ljava/lang/String; = "forceTitleBar"

.field public static final WINDOW_STYLE_ACTIVITY_FULLSCREEN_ONLY:Ljava/lang/String; = "fullscreenOnly"

.field public static final WINDOW_STYLE_ACTIVITY_RESIZE_ONLY:Ljava/lang/String; = "resizeOnly"

.field public static final WINDOW_STYLE_FIXED_RATIO:Ljava/lang/String; = "fixedRatio"

.field public static final WINDOW_STYLE_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field public static final WINDOW_STYLE_FREESTYLE_ONLY:Ljava/lang/String; = "freestyleOnly"

.field public static final WINDOW_STYLE_FULL_SIZE:Ljava/lang/String; = "fullSize"

.field public static final WINDOW_STYLE_HIDE_APP_FROM_MULTIWINDOWLIST:Ljava/lang/String; = "hideAppFromMultiWindowList"

.field public static final WINDOW_STYLE_ISOLATED_SPLIT:Ljava/lang/String; = "isolatedSplit"

.field public static final WINDOW_STYLE_NO_TITLE_BAR:Ljava/lang/String; = "noTitleBar"


# virtual methods
.method public abstract addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/samsung/android/multiwindow/MultiWindowStyle;)Landroid/view/View;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract adjustSystemUiVisibilityLw(I)I
.end method

.method public abstract adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract allowAppAnimationsLw()Z
.end method

.method public abstract applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract beginLayoutLw(ZIII)V
.end method

.method public abstract beginPostLayoutPolicyLw(II)V
.end method

.method public abstract canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract canBeForceHiddenByVR(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract canMagnifyWindow(I)Z
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
.end method

.method public abstract checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract closeMultiWindowTrayBar(Z)Z
.end method

.method public abstract createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw()V
.end method

.method public abstract dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishLayoutLw()V
.end method

.method public abstract finishPostLayoutPolicyLw()I
.end method

.method public abstract focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract getAboveUniverseLayer()I
.end method

.method public abstract getCocktailBarFrame()Landroid/graphics/Rect;
.end method

.method public abstract getConfigDisplayHeight(III)I
.end method

.method public abstract getConfigDisplayWidth(III)I
.end method

.method public abstract getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
.end method

.method public abstract getContentRectLw(Landroid/graphics/Rect;)V
.end method

.method public abstract getCoverStateSwitch()Z
.end method

.method public abstract getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
.end method

.method public abstract getGlobalSystemUiVisibility()I
.end method

.method public abstract getInputMethodWindowVisibleHeightLw()I
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public abstract getMinimizeSize()I
.end method

.method public abstract getNonDecorAlphaScreenDisplayHeight(II)I
.end method

.method public abstract getNonDecorAlphaScreenDisplayWidth(II)I
.end method

.method public abstract getNonDecorDisplayHeight(III)I
.end method

.method public abstract getNonDecorDisplayWidth(III)I
.end method

.method public abstract getSViewCoverHeight(Landroid/view/DisplayInfo;)I
.end method

.method public abstract getSViewCoverWidth(Landroid/view/DisplayInfo;)I
.end method

.method public abstract getScaleWindowResizableSize()I
.end method

.method public abstract getSystemDecorLayerLw()I
.end method

.method public abstract getUserRotationMode()I
.end method

.method public abstract getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public abstract goingToSleep(I)V
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(JI)I
.end method

.method public abstract isCocktailRotationAnimationNeeded()Z
.end method

.method public abstract isDefaultOrientationForced()Z
.end method

.method public abstract isForceHideBySViewCover()Z
.end method

.method public abstract isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardSecure()Z
.end method

.method public abstract isLockTaskModeEnabled()Z
.end method

.method public abstract isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
.end method

.method public abstract isNavigationBarVisible()Z
.end method

.method public abstract isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isStatusBarVisible()Z
.end method

.method public abstract isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
.end method

.method public abstract notifyActivityDrawnForKeyguardLw()V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract notifyPenSwitchChanged(JZ)V
.end method

.method public abstract onLockTaskModeChanged(Z)V
.end method

.method public abstract performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract removeAdaptiveEvent(Ljava/lang/String;)V
.end method

.method public abstract removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
.end method

.method public abstract requestTransientBars()V
.end method

.method public abstract rotationForOrientationLw(II)I
.end method

.method public abstract rotationHasCompatibleMetricsLw(II)Z
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
.end method

.method public abstract setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method

.method public abstract setCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;)Z
.end method

.method public abstract setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setCurrentOrientationLw(I)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public abstract setDisplayOverscan(Landroid/view/Display;IIII)V
.end method

.method public abstract setInitialDisplaySize(Landroid/view/Display;III)V
.end method

.method public abstract setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setMultiWindowTrayOpenState(Z)V
.end method

.method public abstract setRotationLw(I)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setUserRotationMode(II)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract showStatusBarByNotification()V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract subWindowTypeToLayerLw(I)I
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
.end method

.method public abstract updateCocktailBarVisibility(Z)Z
.end method

.method public abstract updateTopActivity(Landroid/content/ComponentName;)V
.end method

.method public abstract userActivity()V
.end method

.method public abstract validateRotationAnimationLw(IIZ)Z
.end method

.method public abstract wakingUp()V
.end method

.method public abstract windowTypeToLayerLw(I)I
.end method
