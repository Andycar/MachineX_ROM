.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_ALWAYS_ON:Z = false

.field private static final MULTIWINDOW_SETTING_OFF:I = 0x0

.field private static final MULTIWINDOW_SETTING_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mCanBeForceHide:Z

.field private mConsumeBackKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mEnableMultiWindowUISetting:I

.field private mFirstMultiWindowSettingOn:Z

.field private mFirstRecentKeyClick:Z

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field private mForceHideCascade:Z

.field private mForceHideCenterbar:Z

.field private mForceHidePenWindowController:Z

.field private mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

.field private mForceHideStatusBar:Z

.field mHandler:Landroid/os/Handler;

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mIsIsolatedSplitUsed:Z

.field private mIsMultiWindowTrayOpen:Z

.field private mIsRecentUI:Z

.field private mIsTrayBarUI:Z

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field private mMinimizeSize:I

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field private mScaleWindowResizableSize:I

.field mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field private mStatusBarTransient:Z

.field public mSystemBooted:Z

.field public mSystemReady:Z

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method public constructor <init>()V
    .registers 10

    .prologue
    const/high16 v2, 0x4000000

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 95
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    .line 101
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    .line 109
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    .line 110
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    .line 113
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    .line 114
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    .line 115
    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 116
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 117
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    .line 126
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 127
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    .line 128
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    .line 129
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    .line 134
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 139
    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 141
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    .line 142
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    .line 143
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    .line 147
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    .line 148
    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    .line 154
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 939
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 887
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isIsolatedSplitUsed()Z
    .registers 3

    .prologue
    const/16 v1, 0x1000

    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 880
    :cond_22
    const/4 v0, 0x1

    .line 882
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    goto :goto_5
.end method

.method private keyguardOn()Z
    .registers 2

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;
    .param p6, "vf"    # Landroid/graphics/Rect;
    .param p7, "dcf"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1003
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    .line 1004
    .local v0, "height":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v4, v5

    .line 1005
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1007
    .local v1, "orientation":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_26

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2e

    :cond_26
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_73

    if-ne v1, v6, :cond_73

    :cond_2e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1010
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 1011
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 1016
    :goto_44
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_72

    .line 1017
    const/16 v4, -0x2710

    iput v4, p6, Landroid/graphics/Rect;->top:I

    iput v4, p6, Landroid/graphics/Rect;->left:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    iput v4, p5, Landroid/graphics/Rect;->left:I

    iput v4, p4, Landroid/graphics/Rect;->top:I

    iput v4, p4, Landroid/graphics/Rect;->left:I

    iput v4, p3, Landroid/graphics/Rect;->top:I

    iput v4, p3, Landroid/graphics/Rect;->left:I

    .line 1018
    const/16 v4, 0x2710

    iput v4, p6, Landroid/graphics/Rect;->bottom:I

    iput v4, p6, Landroid/graphics/Rect;->right:I

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    iput v4, p5, Landroid/graphics/Rect;->right:I

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    iput v4, p4, Landroid/graphics/Rect;->right:I

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p3, Landroid/graphics/Rect;->right:I

    .line 1021
    :cond_72
    return-void

    .line 1013
    :cond_73
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 1014
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_44
.end method

.method public applyPostLayoutPolicyForRecenUI(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 1439
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x82f

    if-ne p1, v0, :cond_b

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    .line 1443
    :cond_b
    return-void
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 699
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 700
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v2, :cond_14

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_14

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4c

    :cond_14
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_4c

    move v0, v2

    .line 704
    .local v0, "isMultiWindowTarget":Z
    :goto_1b
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_25

    .line 705
    if-eqz v0, :cond_25

    .line 706
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 707
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 711
    :cond_25
    if-eqz v0, :cond_31

    .line 712
    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 713
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    .line 727
    :cond_31
    :goto_31
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_3d

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_4b

    :cond_3d
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 728
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    .line 729
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTargetAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    .line 732
    :cond_4b
    return-void

    .line 700
    .end local v0    # "isMultiWindowTarget":Z
    :cond_4c
    const/4 v0, 0x0

    goto :goto_1b

    .line 714
    .restart local v0    # "isMultiWindowTarget":Z
    :cond_4e
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_68

    .line 715
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    if-ne v3, v5, :cond_5d

    .line 716
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_31

    .line 718
    :cond_5d
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_31

    .line 719
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_31

    .line 721
    :cond_68
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_31

    .line 722
    iput-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    .line 723
    iput-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_31
.end method

.method public beginLayoutLw()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    .line 676
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    .line 677
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    .line 678
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 680
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 738
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 739
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    .line 740
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    .line 741
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    .line 743
    return-void
.end method

.method public checkAddPermission(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 1408
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_6

    .line 1409
    const/4 v0, 0x0

    .line 1412
    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .registers 6
    .param p1, "forceClose"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1050
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_30

    .line 1052
    :cond_9
    const-string v1, "MultiPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeMultiWindowTrayBar() failed -> mMultiWindowTrayBar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mMultiWindowEditMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_2f
    :goto_2f
    return v0

    .line 1058
    :cond_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1062
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    if-eqz v1, :cond_2f

    .line 1063
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$4;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    if-eqz p1, :cond_4a

    .line 1077
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    .line 1079
    :cond_4a
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1450
    return-void
.end method

.method public existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 3
    .param p1, "targetWin"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_27

    .line 1249
    if-nez p1, :cond_20

    const/4 v0, 0x1

    .line 1252
    :goto_1f
    return v0

    .line 1249
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1f

    .line 1252
    :cond_27
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public finishPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 8
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 806
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 807
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_36

    .line 808
    :cond_20
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5, v5, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 809
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 810
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5, v5, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 820
    :cond_36
    :goto_36
    const/4 v0, 0x0

    .line 821
    .local v0, "showCenterBar":Z
    if-eqz p1, :cond_77

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v5, :cond_77

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v4

    if-nez v4, :cond_77

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isIsolatedSplitUsed()Z

    move-result v4

    if-nez v4, :cond_77

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v4

    if-nez v4, :cond_77

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    if-nez v4, :cond_77

    .line 829
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .line 830
    .local v2, "topFullAppZone":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_9e

    move v1, v3

    .line 833
    .local v1, "topAppZone":I
    :goto_68
    if-ne v2, v1, :cond_a9

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_a9

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 836
    const/4 v0, 0x0

    .line 842
    .end local v1    # "topAppZone":I
    .end local v2    # "topFullAppZone":I
    :cond_77
    :goto_77
    if-eqz v0, :cond_b7

    .line 843
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_ad

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v4, v5, :cond_ad

    .line 844
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 868
    :cond_8b
    :goto_8b
    return-void

    .line 815
    .end local v0    # "showCenterBar":Z
    :cond_8c
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_36

    .line 816
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto :goto_36

    .line 830
    .restart local v0    # "showCenterBar":Z
    .restart local v2    # "topFullAppZone":I
    :cond_9e
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    goto :goto_68

    .line 837
    .restart local v1    # "topAppZone":I
    :cond_a9
    if-eqz v1, :cond_77

    .line 838
    const/4 v0, 0x1

    goto :goto_77

    .line 858
    .end local v1    # "topAppZone":I
    .end local v2    # "topFullAppZone":I
    :cond_ad
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_8b

    .line 859
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v3, v3, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(ZZZ)Z

    goto :goto_8b

    .line 863
    :cond_b7
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_8b

    .line 864
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v3, v5, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto :goto_8b
.end method

.method public getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x0

    .line 956
    if-eqz p1, :cond_1e

    .line 957
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 958
    .local v1, "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_1f

    move-object v4, v1

    .line 959
    .local v4, "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_a
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 960
    .local v0, "fl":I
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    .line 961
    .local v3, "sysUiFl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 963
    .local v2, "multiWindowFl":I
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_21

    .line 976
    .end local v0    # "fl":I
    .end local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v2    # "multiWindowFl":I
    .end local v3    # "sysUiFl":I
    .end local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1e
    :goto_1e
    return v5

    .restart local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1f
    move-object v4, p1

    .line 958
    goto :goto_a

    .line 967
    .restart local v0    # "fl":I
    .restart local v2    # "multiWindowFl":I
    .restart local v3    # "sysUiFl":I
    .restart local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_21
    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_2a

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_32

    :cond_2a
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_1e

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_1e

    .line 972
    :cond_32
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    goto :goto_1e
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 946
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManagerPolicy$WindowState;)I
    .registers 9
    .param p1, "statusBar"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "lastSystemUiFlags"    # I
    .param p3, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1381
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1382
    const/4 v2, 0x4

    .line 1383
    .local v2, "visibility":I
    if-eqz p1, :cond_29

    .line 1384
    const/4 v1, 0x0

    .line 1385
    .local v1, "topIsFullscreen":Z
    if-eqz p3, :cond_18

    .line 1386
    :try_start_9
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1388
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_17

    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2e

    :cond_17
    const/4 v1, 0x1

    .line 1391
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    :goto_18
    if-nez v1, :cond_29

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v3

    if-nez v3, :cond_29

    .line 1393
    const/4 v2, 0x0

    .line 1395
    .end local v1    # "topIsFullscreen":Z
    :cond_29
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 1396
    monitor-exit v4

    return v2

    .line 1388
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "topIsFullscreen":Z
    :cond_2e
    const/4 v1, 0x0

    goto :goto_18

    .line 1397
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "topIsFullscreen":Z
    :catchall_30
    move-exception v3

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_30

    throw v3
.end method

.method public getMinimizeSize()I
    .registers 2

    .prologue
    .line 983
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    return v0
.end method

.method public getScaleWindowResizableSize()I
    .registers 2

    .prologue
    .line 992
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    return v0
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_5
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 178
    iput-object p3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 179
    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 180
    iput-object p5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 181
    iput-object p4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 183
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const/4 v2, 0x1

    :goto_31
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FlashBarService"

    const-string v4, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    .line 202
    return-void

    .line 184
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_6f
    const/4 v2, 0x0

    goto :goto_31
.end method

.method public interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I
    .registers 13
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z
    .param p4, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 288
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 289
    if-ne p2, v4, :cond_f

    if-eqz p3, :cond_11

    :cond_f
    if-eqz p3, :cond_12

    .line 321
    :cond_11
    :goto_11
    return v1

    .line 294
    :cond_12
    if-eqz p1, :cond_5e

    .line 295
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_5c

    .line 296
    if-ne p2, v4, :cond_56

    if-nez p3, :cond_56

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    if-eqz v3, :cond_56

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_window_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_35

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleRightLongPress()V

    goto :goto_11

    .line 297
    :cond_35
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 298
    const-string v2, "MultiPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiWindowTrayBar toggle / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 300
    :cond_56
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_5c

    if-gtz p2, :cond_11

    :cond_5c
    move v1, v2

    .line 321
    goto :goto_11

    .line 306
    :cond_5e
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_5c

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 307
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_6f

    .line 308
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    goto :goto_11

    .line 311
    :cond_6f
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method public isEnabledTalkback()Z
    .registers 9

    .prologue
    .line 1460
    const/16 v1, 0x3a

    .line 1461
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 1462
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1464
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1467
    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 1468
    const-string v4, ""

    .line 1471
    :cond_1b
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1473
    :cond_1e
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1474
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 1475
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1477
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1e

    .line 1478
    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1479
    const/4 v6, 0x1

    .line 1482
    .end local v2    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :goto_3b
    return v6

    :cond_3c
    const/4 v6, 0x0

    goto :goto_3b
.end method

.method public isForceHideStatusBar()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    return v0
.end method

.method public isSplitTopApplicationWindow()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 689
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStatusBarTransient()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    return v0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;IIIIIIIIIIIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 54
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "unrestrictedScreenTop"    # I
    .param p4, "unrestrictedScreenWidth"    # I
    .param p5, "unrestrictedScreenHeight"    # I
    .param p6, "dockTop"    # I
    .param p7, "dockBottom"    # I
    .param p8, "stableTop"    # I
    .param p9, "stableBottom"    # I
    .param p10, "curTop"    # I
    .param p11, "curBottom"    # I
    .param p12, "contentBottom"    # I
    .param p13, "restrictedScreenLeft"    # I
    .param p14, "restrictedScreenTop"    # I
    .param p15, "restrictedScreenWidth"    # I
    .param p16, "restrictedScreenHeight"    # I
    .param p17, "pf"    # Landroid/graphics/Rect;
    .param p18, "df"    # Landroid/graphics/Rect;
    .param p19, "of"    # Landroid/graphics/Rect;
    .param p20, "cf"    # Landroid/graphics/Rect;
    .param p21, "vf"    # Landroid/graphics/Rect;
    .param p22, "canHideNavigationBar"    # Z

    .prologue
    .line 428
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 429
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 430
    .local v5, "fl":I
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v3, 0xf0

    .line 431
    .local v6, "adjust":I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v29

    .line 433
    .local v29, "sysUiFl":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v27

    .line 434
    .local v27, "stackBounds":Landroid/graphics/Rect;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .line 435
    .local v14, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v3, 0x800

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v24

    .line 436
    .local v24, "optionScale":Z
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1cf

    const/16 v30, 0x1

    .line 437
    .local v30, "typeCascade":Z
    :goto_30
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1d3

    const/4 v15, 0x1

    .line 439
    .local v15, "absLayout":Z
    :goto_3b
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-nez v3, :cond_487

    if-eqz v24, :cond_4b

    if-eqz v30, :cond_4b

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_487

    :cond_4b
    if-nez v15, :cond_487

    .line 441
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6c

    .line 442
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 443
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    .line 445
    :cond_5f
    const/16 v3, 0x1000

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 446
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 449
    :cond_6c
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_1d6

    const/16 v23, 0x1

    .line 451
    .local v23, "isPortrait":Z
    :goto_74
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_3fa

    .line 452
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_3e6

    if-nez p2, :cond_3e6

    .line 454
    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 455
    .local v20, "currentWinLeft":I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 456
    .local v18, "currentWinBottom":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 457
    .local v21, "currentWinWidth":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 458
    .local v19, "currentWinHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v26

    .line 459
    .local v26, "scale":Landroid/graphics/PointF;
    move/from16 v17, v19

    .line 461
    .local v17, "currentStackHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 462
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v21

    .line 463
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v19

    .line 464
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v4, v21

    div-int/lit8 v4, v4, 0x2

    add-int v20, v3, v4

    .line 467
    :cond_be
    move/from16 v0, v18

    move/from16 v1, p12

    if-gt v0, v1, :cond_ca

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_382

    .line 468
    :cond_ca
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_d5

    .line 469
    const/4 v3, 0x0

    move-object/from16 v0, p20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 472
    :cond_d5
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v22, v3, v4

    .line 476
    .local v22, "heightUpperInputMethod":I
    move-object/from16 v28, v27

    .line 478
    .local v28, "stackBoxBounds":Landroid/graphics/Rect;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_1e8

    if-eqz v23, :cond_1e8

    if-nez v30, :cond_1e8

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p7

    if-ne v3, v0, :cond_1e8

    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_1e8

    .line 481
    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_11c

    .line 482
    const/4 v3, 0x0

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 484
    :cond_11c
    sub-int v3, v22, v19

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 485
    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 486
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    move/from16 v0, p15

    if-ge v3, v0, :cond_1da

    .line 487
    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 488
    add-int v3, v20, v21

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 493
    :goto_142
    const/16 v3, 0x10

    if-eq v6, v3, :cond_14a

    const/16 v3, 0x20

    if-ne v6, v3, :cond_150

    .line 494
    :cond_14a
    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 497
    :cond_150
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 562
    .end local v19    # "currentWinHeight":I
    .end local p8    # "stableTop":I
    :goto_15b
    const/16 v3, 0x30

    if-eq v6, v3, :cond_379

    if-nez v24, :cond_379

    .line 563
    move/from16 v0, p10

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 564
    move/from16 v0, p11

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 613
    .end local v17    # "currentStackHeight":I
    .end local v18    # "currentWinBottom":I
    .end local v20    # "currentWinLeft":I
    .end local v21    # "currentWinWidth":I
    .end local v22    # "heightUpperInputMethod":I
    .end local v26    # "scale":Landroid/graphics/PointF;
    .end local v28    # "stackBoxBounds":Landroid/graphics/Rect;
    :cond_16d
    :goto_16d
    if-eqz p2, :cond_1ce

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_18f

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_1ce

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_18f

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_1ce

    .line 618
    :cond_18f
    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1ab

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1ab

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_1ce

    .line 620
    :cond_1ab
    const v3, 0x10500

    and-int/2addr v3, v5

    const v4, 0x10100

    if-ne v3, v4, :cond_46f

    and-int/lit8 v3, v29, 0x4

    if-nez v3, :cond_46f

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v8, 0x1

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 668
    .end local v23    # "isPortrait":Z
    :cond_1ce
    :goto_1ce
    return-void

    .line 436
    .end local v15    # "absLayout":Z
    .end local v30    # "typeCascade":Z
    .restart local p8    # "stableTop":I
    :cond_1cf
    const/16 v30, 0x0

    goto/16 :goto_30

    .line 437
    .restart local v30    # "typeCascade":Z
    :cond_1d3
    const/4 v15, 0x0

    goto/16 :goto_3b

    .line 449
    .restart local v15    # "absLayout":Z
    :cond_1d6
    const/16 v23, 0x0

    goto/16 :goto_74

    .line 490
    .restart local v17    # "currentStackHeight":I
    .restart local v18    # "currentWinBottom":I
    .restart local v19    # "currentWinHeight":I
    .restart local v20    # "currentWinLeft":I
    .restart local v21    # "currentWinWidth":I
    .restart local v22    # "heightUpperInputMethod":I
    .restart local v23    # "isPortrait":Z
    .restart local v26    # "scale":Landroid/graphics/PointF;
    .restart local v28    # "stackBoxBounds":Landroid/graphics/Rect;
    :cond_1da
    move/from16 v0, p13

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 491
    add-int v3, p13, p15

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_142

    .line 498
    :cond_1e8
    if-eqz v30, :cond_1ec

    add-int v19, v17, p8

    .end local v19    # "currentWinHeight":I
    :cond_1ec
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_27e

    .line 501
    if-eqz v30, :cond_236

    .line 502
    sub-int v3, p12, v17

    move/from16 v0, p8

    int-to-float v4, v0

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p8

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 504
    move-object/from16 v0, p17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 505
    move-object/from16 v0, p18

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 518
    :goto_229
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_15b

    .line 507
    :cond_236
    move/from16 v0, p3

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p3

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 508
    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 509
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_271

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_271

    .line 510
    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 511
    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_229

    .line 513
    :cond_271
    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 514
    add-int v3, v20, v21

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_229

    .line 520
    :cond_27e
    if-eqz v24, :cond_2dc

    if-eqz v30, :cond_2dc

    .line 521
    move/from16 v0, p8

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 522
    sub-int v3, v22, p8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, p8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 525
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_15b

    .line 527
    :cond_2dc
    if-eqz v30, :cond_362

    .end local p8    # "stableTop":I
    :goto_2de
    move/from16 v0, p8

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 528
    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 529
    move-object/from16 v0, p17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v21

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 530
    if-eqz p22, :cond_366

    move/from16 v0, v29

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_366

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_366

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_366

    .line 534
    add-int v3, p3, p5

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 540
    :goto_321
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_33f

    .line 541
    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 542
    move/from16 v0, p13

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 543
    add-int v3, p13, p15

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 547
    :cond_33f
    const/16 v3, 0x10

    if-eq v6, v3, :cond_34f

    .line 548
    move/from16 v0, p7

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 550
    :cond_34f
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_371

    .line 551
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_15b

    .line 527
    .restart local p8    # "stableTop":I
    :cond_362
    const/16 p8, 0x0

    goto/16 :goto_2de

    .line 536
    .end local p8    # "stableTop":I
    :cond_366
    add-int v3, p14, p16

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_321

    .line 553
    :cond_371
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_15b

    .line 566
    :cond_379
    move-object/from16 v0, p21

    move-object/from16 v1, p20

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_16d

    .line 571
    .end local v22    # "heightUpperInputMethod":I
    .end local v28    # "stackBoxBounds":Landroid/graphics/Rect;
    .restart local v19    # "currentWinHeight":I
    .restart local p8    # "stableTop":I
    :cond_382
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 572
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    if-le v3, v0, :cond_3d6

    .line 573
    move/from16 v0, p8

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 577
    :cond_39c
    :goto_39c
    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 578
    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 579
    move-object/from16 v0, p17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v21

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 582
    const/16 v3, 0x10

    if-eq v6, v3, :cond_16d

    .line 583
    move/from16 v0, p6

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p6

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 584
    move/from16 v0, p7

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_16d

    .line 574
    :cond_3d6
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_39c

    .line 575
    const/4 v3, 0x0

    move-object/from16 v0, p18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_39c

    .line 590
    .end local v17    # "currentStackHeight":I
    .end local v18    # "currentWinBottom":I
    .end local v19    # "currentWinHeight":I
    .end local v20    # "currentWinLeft":I
    .end local v21    # "currentWinWidth":I
    .end local v26    # "scale":Landroid/graphics/PointF;
    :cond_3e6
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 591
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_16d

    .line 595
    :cond_3fa
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_40c

    .line 596
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 599
    :cond_40c
    if-eqz v14, :cond_16d

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_16d

    if-eqz v23, :cond_16d

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_16d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_16d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 602
    move-object/from16 v0, p18

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p9

    if-ge v3, v0, :cond_443

    .line 603
    move/from16 v0, p9

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 604
    :cond_443
    move-object/from16 v0, p19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p9

    if-ge v3, v0, :cond_451

    .line 605
    move/from16 v0, p9

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 606
    :cond_451
    move-object/from16 v0, p20

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p9

    if-ge v3, v0, :cond_45f

    .line 607
    move/from16 v0, p9

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 608
    :cond_45f
    move-object/from16 v0, p21

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p9

    if-ge v3, v0, :cond_16d

    .line 609
    move/from16 v0, p9

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_16d

    .line 624
    .end local p8    # "stableTop":I
    :cond_46f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_1ce

    .line 628
    .end local v23    # "isPortrait":Z
    .restart local p8    # "stableTop":I
    :cond_487
    if-eqz v30, :cond_1ce

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_1ce

    if-eqz p2, :cond_49f

    and-int/lit16 v3, v5, 0x100

    if-nez v3, :cond_49f

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1ce

    .line 632
    :cond_49f
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_4b1

    .line 633
    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 635
    :cond_4b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    .line 637
    .local v25, "orientation":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_581

    const/4 v3, 0x2

    move/from16 v0, v25

    if-ne v0, v3, :cond_581

    if-nez p2, :cond_581

    const/high16 v3, 0x400000

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_581

    .line 640
    move/from16 v0, p3

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 641
    move/from16 v0, p5

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 646
    :goto_4e3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_1ce

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_52d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFocused()Z

    move-result v3

    if-nez v3, :cond_527

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAttachedWindowFocused()Z

    move-result v3

    if-nez v3, :cond_527

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAttachedTo(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_52d

    .line 651
    :cond_527
    move/from16 v0, p11

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 654
    :cond_52d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v4

    if-ne v3, v4, :cond_1ce

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1ce

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v22, v3, v4

    .line 659
    .restart local v22    # "heightUpperInputMethod":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v0, v22

    if-ge v3, v0, :cond_592

    .line 660
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v22, v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p14

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1ce

    .line 643
    .end local v22    # "heightUpperInputMethod":I
    :cond_581
    move-object/from16 v0, p17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4e3

    .line 662
    .restart local v22    # "heightUpperInputMethod":I
    :cond_592
    move/from16 v0, p14

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1ce
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 15
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "windowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p4, "attachedWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "attachedWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p7, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1301
    if-eqz p2, :cond_c

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8d4

    if-ne v4, v5, :cond_c

    .line 1363
    :cond_b
    :goto_b
    return v2

    .line 1305
    :cond_c
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v3, :cond_26

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_26

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_24

    if-eqz p6, :cond_26

    invoke-virtual {p6, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_24
    move v2, v3

    .line 1309
    goto :goto_b

    .line 1312
    :cond_26
    if-eqz p5, :cond_36

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_36

    iget v4, p5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x898

    if-ne v4, v5, :cond_36

    move v2, v3

    .line 1314
    goto :goto_b

    .line 1317
    :cond_36
    invoke-virtual {p3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-nez v4, :cond_44

    if-eqz p6, :cond_57

    invoke-virtual {p6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_57

    :cond_44
    move v0, v3

    .line 1318
    .local v0, "isCascade":Z
    :goto_45
    if-eqz v0, :cond_b

    .line 1319
    if-eqz p7, :cond_59

    invoke-interface {p7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_59

    .line 1322
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    move v2, v3

    .line 1323
    goto :goto_b

    .end local v0    # "isCascade":Z
    :cond_57
    move v0, v2

    .line 1317
    goto :goto_45

    .line 1325
    .restart local v0    # "isCascade":Z
    :cond_59
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    if-eqz v4, :cond_69

    .line 1326
    if-eqz p7, :cond_65

    invoke-interface {p7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_67

    :cond_65
    move v2, v3

    .line 1327
    goto :goto_b

    .line 1329
    :cond_67
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    .line 1332
    :cond_69
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    if-eqz v4, :cond_87

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ee

    if-eq v4, v5, :cond_79

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ef

    if-ne v4, v5, :cond_87

    .line 1333
    :cond_79
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    if-eqz v4, :cond_87

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerTargetToken:Landroid/view/IApplicationToken;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-ne v4, v5, :cond_87

    move v2, v3

    .line 1334
    goto :goto_b

    .line 1338
    :cond_87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->keyguardOn()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 1339
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    if-nez v4, :cond_99

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1348
    :cond_99
    const/high16 v1, 0x480000

    .line 1350
    .local v1, "mask":I
    if-eqz p2, :cond_a2

    .line 1351
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_b

    .line 1355
    :cond_a2
    if-eqz p5, :cond_a9

    .line 1356
    iget v4, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_b

    :cond_a9
    move v2, v3

    .line 1360
    goto/16 :goto_b

    .line 1343
    .end local v1    # "mask":I
    :cond_ac
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    if-nez v4, :cond_99

    goto/16 :goto_b
.end method

.method public needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 15
    .param p1, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/16 v12, 0x1000

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1119
    const-string v9, "true"

    const-string v10, "dev.knoxapp.running"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    move v7, v8

    .line 1225
    :goto_15
    return v7

    .line 1122
    :cond_16
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v9, :cond_38

    move-object v3, v7

    .line 1124
    .local v3, "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    :goto_1b
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v9, :cond_3f

    move-object v4, v7

    .line 1126
    .local v4, "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :goto_20
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v9, :cond_46

    move-object v5, v7

    .line 1128
    .local v5, "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_25
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v9, :cond_4d

    move-object v6, v7

    .line 1131
    .local v6, "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_2a
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v7, :cond_54

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_54

    move v7, v8

    .line 1132
    goto :goto_15

    .line 1122
    .end local v3    # "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v6    # "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_38
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    goto :goto_1b

    .line 1124
    .restart local v3    # "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    :cond_3f
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    goto :goto_20

    .line 1126
    .restart local v4    # "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :cond_46
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    goto :goto_25

    .line 1128
    .restart local v5    # "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4d
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    goto :goto_2a

    .line 1135
    .restart local v6    # "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_54
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_9f

    .line 1136
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1137
    .local v1, "lpApp":Landroid/view/WindowManager$LayoutParams;
    move-object v2, v1

    .line 1139
    .local v2, "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_69

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v7, v8, :cond_69

    .line 1141
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1144
    :cond_69
    if-eqz v2, :cond_9f

    .line 1160
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_9f

    .line 1161
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 1162
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_9f

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v7

    if-nez v7, :cond_9f

    .line 1163
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move v7, v8

    .line 1164
    goto :goto_15

    .line 1167
    :cond_8a
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_90

    move v7, v8

    .line 1168
    goto :goto_15

    .line 1170
    :cond_90
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_9f

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v7

    if-nez v7, :cond_9f

    move v7, v8

    .line 1171
    goto/16 :goto_15

    .line 1178
    .end local v1    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_9f
    if-eqz v3, :cond_aa

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_aa

    move v7, v8

    .line 1180
    goto/16 :goto_15

    .line 1182
    :cond_aa
    if-eqz v4, :cond_b5

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_b5

    move v7, v8

    .line 1184
    goto/16 :goto_15

    .line 1187
    :cond_b5
    if-eqz v5, :cond_bd

    invoke-virtual {v5, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_c5

    :cond_bd
    if-eqz v6, :cond_c8

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c8

    :cond_c5
    move v7, v8

    .line 1189
    goto/16 :goto_15

    .line 1192
    :cond_c8
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v7

    if-nez v7, :cond_e6

    .line 1193
    if-eqz v3, :cond_db

    .line 1194
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_db

    move v7, v8

    .line 1195
    goto/16 :goto_15

    .line 1199
    :cond_db
    if-eqz v4, :cond_e6

    .line 1200
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_e6

    move v7, v8

    .line 1201
    goto/16 :goto_15

    .line 1206
    :cond_e6
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v7, :cond_10b

    .line 1207
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v7

    if-nez v7, :cond_108

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v7

    if-nez v7, :cond_108

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v7

    if-nez v7, :cond_108

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_10b

    :cond_108
    move v7, v8

    .line 1211
    goto/16 :goto_15

    .line 1215
    :cond_10b
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_120

    .line 1216
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1217
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_120

    .line 1218
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_120

    move v7, v8

    .line 1219
    goto/16 :goto_15

    .line 1225
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_120
    const/4 v7, 0x0

    goto/16 :goto_15
.end method

.method public notifySystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1239
    return-void
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .registers 2
    .param p1, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 899
    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 774
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_1a

    .line 792
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 776
    :pswitch_7
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 779
    :pswitch_a
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 782
    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_13

    .line 783
    const/4 v0, -0x7

    goto :goto_6

    .line 785
    :cond_13
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 788
    :pswitch_16
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 774
    nop

    :pswitch_data_1a
    .packed-switch 0x898
        :pswitch_7
        :pswitch_d
        :pswitch_16
        :pswitch_a
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 750
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 759
    :cond_7
    :goto_7
    return-void

    .line 751
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 752
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 753
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_16

    .line 754
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 755
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 756
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public setCanBeForceHide(Z)V
    .registers 2
    .param p1, "forceHide"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    .line 220
    return-void
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_20

    .line 932
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 934
    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mCurrentInputMethodTarget : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_20
    return-void
.end method

.method public setInitialDisplaySize()V
    .registers 4

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 267
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    const v2, 0x10501c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 270
    :cond_19
    const v1, 0x10501c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    .line 271
    const v1, 0x10501da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    .line 273
    return-void
.end method

.method public setInputMethodWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "inputMethodWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_20

    .line 236
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 237
    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mInputMehtodWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_20
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 2
    .param p1, "open"    # Z

    .prologue
    .line 1371
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    .line 1373
    return-void
.end method

.method public shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "isPortrait"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1263
    if-nez p1, :cond_c

    .line 1264
    const-string v1, "MultiPhoneWindowManager"

    const-string v2, "shouldMoveUpWindow() return false -> win is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_b
    :goto_b
    return v3

    .line 1268
    :cond_c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1269
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_45

    move-object v1, p1

    :goto_17
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1270
    if-eqz p2, :cond_47

    .line 1271
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_b

    .line 1282
    :cond_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_63

    .line 1284
    const-string v1, "MultiPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldMoveUpWindow() return true -> win is mCurrentInputMethodTarget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1285
    goto :goto_b

    .line 1269
    :cond_45
    const/4 v1, 0x0

    goto :goto_17

    .line 1275
    :cond_47
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v2, :cond_27

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_27

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_27

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_b

    .line 1286
    :cond_63
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1287
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v4

    if-ne v1, v4, :cond_80

    move v1, v2

    :goto_7e
    move v3, v1

    goto :goto_b

    :cond_80
    move v1, v3

    goto :goto_7e
.end method

.method public toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 6
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 1027
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1029
    :cond_15
    const-string v2, "MultiPhoneWindowManager"

    const-string v3, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :goto_1c
    return v1

    .line 1033
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1036
    :try_start_23
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2c

    .line 1040
    :goto_2a
    const/4 v1, 0x1

    goto :goto_1c

    .line 1037
    :catch_2c
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public toggleRecentApps()V
    .registers 4

    .prologue
    .line 1420
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v2, :cond_21

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    if-nez v2, :cond_21

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v2, :cond_21

    .line 1422
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    .line 1424
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1425
    .local v1, "recentIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.multiwindow.recentkey.start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_22

    .line 1432
    .end local v1    # "recentIntent":Landroid/content/Intent;
    :cond_21
    :goto_21
    return-void

    .line 1427
    :catch_22
    move-exception v0

    .line 1428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public updateMultiWindowTrayBar(Z)V
    .registers 4
    .param p1, "forceShow"    # Z

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1111
    return-void
.end method

.method public updateSettings()V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 373
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 374
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 375
    :try_start_b
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-nez v9, :cond_12

    .line 376
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    .line 379
    :cond_12
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 380
    .local v4, "prevEnableMultiWindowUISetting":I
    const-string v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v5, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 382
    const-string v9, "MultiPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSetting mEnableMultiWindowUISetting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    if-eqz v9, :cond_9c

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSystemReady:Z

    if-eqz v9, :cond_9c

    .line 384
    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eq v9, v4, :cond_9c

    .line 385
    const/4 v2, 0x1

    .line 386
    .local v2, "isUpdateMultiWindowTrayNeeded":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 387
    .local v6, "versionInfo":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 388
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 389
    .local v3, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v0

    .line 390
    .local v0, "currUser":I
    const/16 v9, 0x64

    if-lt v0, v9, :cond_6a

    .line 391
    const/4 v2, 0x0

    .line 393
    .end local v0    # "currUser":I
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :cond_6a
    if-eqz v2, :cond_9c

    .line 394
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_tray_shown"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_9e

    .line 396
    .local v1, "forceShow":Z
    :goto_7c
    if-nez v1, :cond_8b

    .line 397
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "multi_window_tray_shown"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 399
    :cond_8b
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 400
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSystemBooted:Z

    if-eqz v7, :cond_9c

    .line 401
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    .end local v1    # "forceShow":Z
    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_9c
    monitor-exit v8

    .line 412
    return-void

    .restart local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .restart local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_9e
    move v1, v7

    .line 394
    goto :goto_7c

    .line 410
    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v4    # "prevEnableMultiWindowUISetting":I
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :catchall_a0
    move-exception v7

    monitor-exit v8
    :try_end_a2
    .catchall {:try_start_b .. :try_end_a2} :catchall_a0

    throw v7
.end method

.method public windowTypeToLayerLw(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 249
    const/16 v0, 0x899

    if-ne p1, v0, :cond_6

    .line 250
    const/4 v0, 0x5

    .line 257
    :goto_5
    return v0

    .line 251
    :cond_6
    const/16 v0, 0x89a

    if-eq p1, v0, :cond_e

    const/16 v0, 0x89b

    if-ne p1, v0, :cond_10

    .line 252
    :cond_e
    const/4 v0, 0x4

    goto :goto_5

    .line 253
    :cond_10
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_17

    .line 254
    const/16 v0, 0xb

    goto :goto_5

    .line 257
    :cond_17
    const/4 v0, -0x1

    goto :goto_5
.end method
