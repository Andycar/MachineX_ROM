.class public Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    }
.end annotation


# static fields
.field private static mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

.field private mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

.field private mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

.field private mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field private mNegativeModeObserver:Landroid/database/ContentObserver;

.field private mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

.field private mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field private runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    .line 82
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 83
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 85
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeModeObserver:Landroid/database/ContentObserver;

    .line 555
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    .line 106
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 109
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
    .param p1, "x1"    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    return v0
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 496
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 512
    :cond_0
    return-object v3

    .line 499
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 500
    .local v3, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 501
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 503
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 507
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 508
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private prepareDialog()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->notifyDataSetChanged()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public callAccessControlMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 384
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 386
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public callAccessibilitySettings(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 378
    return-void
.end method

.method public changeNegativeModeSystemSetting(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    .line 528
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    if-eqz p1, :cond_0

    .line 534
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "color_blind"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    :cond_0
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 539
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 545
    return-void

    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    move v2, v3

    .line 528
    goto :goto_0

    .line 540
    .restart local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 544
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_2
.end method

.method public createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    .locals 7

    .prologue
    const v6, 0x7f0a0b10

    const v5, 0x7f0a0b0f

    const/4 v4, 0x1

    .line 175
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$2;

    const v3, 0x7f0a0b06

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$2;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    .line 201
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$3;

    const v3, 0x7f0a0b07

    invoke-direct {v2, p0, v3, v6, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$3;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;III)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    .line 241
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$4;

    const v3, 0x7f0a0b0a

    invoke-direct {v2, p0, v3, v6, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$4;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;III)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    .line 282
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;

    const v3, 0x7f0a0b0d

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onNegativeModeChanged()V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeCheck()V

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    .line 314
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->isNegativeColorEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    .line 325
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 326
    .local v1, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 327
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 328
    iput-boolean v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 330
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 334
    .local v0, "dialog":Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 335
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 336
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 337
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$6;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$6;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 346
    iget-boolean v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    .line 347
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 352
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 354
    return-object v0

    .line 349
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->dismiss()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    .line 97
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->awakenIfNecessary()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    .line 152
    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->prepareDialog()Z

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->show()V

    .line 161
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public isNegativeColorCondition()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 359
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->activityManager:Landroid/app/ActivityManager;

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->activityManager:Landroid/app/ActivityManager;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 362
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 366
    .local v1, "topActivity":Ljava/lang/String;
    :goto_0
    const-string v2, "com.samsung.android.app.colorblind.ColorChipReport"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 371
    :goto_1
    return v2

    .line 363
    .end local v1    # "topActivity":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, ""

    .restart local v1    # "topActivity":Ljava/lang/String;
    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    const-string v2, "com.samsung.android.app.colorblind"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 369
    goto :goto_1

    :cond_1
    move v2, v3

    .line 371
    goto :goto_1
.end method

.method public isNegativeColorEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 516
    const/4 v0, 0x1

    .line 518
    .local v0, "negativeColorCheck":Z
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blackgrey_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 521
    .local v1, "powerSavingModeCheck":Z
    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v2

    .end local v1    # "powerSavingModeCheck":Z
    :cond_0
    move v1, v3

    .line 518
    goto :goto_0

    .restart local v1    # "powerSavingModeCheck":Z
    :cond_1
    move v2, v3

    .line 521
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->getItem(I)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->onPress()V

    .line 117
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 121
    return-void
.end method

.method public onNegativeModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 390
    .local v0, "NegativeMode":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 392
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    .line 395
    :cond_0
    return-void

    .end local v0    # "NegativeMode":Z
    :cond_1
    move v0, v1

    .line 389
    goto :goto_0

    .line 390
    .restart local v0    # "NegativeMode":Z
    :cond_2
    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_1
.end method

.method public onTalkbackModeChanged()V
    .locals 18

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "sidesync_source_connect"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v15

    sput-object v15, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 400
    const/16 v15, 0x4000

    invoke-static {v15}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 402
    .local v2, "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const v16, 0x7f0a0b08

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 405
    .local v12, "mToast":Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const v16, 0x7f0a0b08

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "descriptionText":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v15, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 411
    :try_start_0
    sget-object v15, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v15, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :try_start_1
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 423
    :cond_0
    :goto_0
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 424
    .local v11, "mHandler":Landroid/os/Handler;
    new-instance v15, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$7;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v15, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    .end local v2    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "descriptionText":Ljava/lang/String;
    .end local v11    # "mHandler":Landroid/os/Handler;
    .end local v12    # "mToast":Landroid/widget/Toast;
    :cond_1
    :goto_1
    return-void

    .line 412
    .restart local v2    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v3    # "descriptionText":Ljava/lang/String;
    .restart local v12    # "mToast":Landroid/widget/Toast;
    :catch_0
    move-exception v4

    .line 413
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    :try_start_3
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 417
    :catch_1
    move-exception v15

    goto :goto_0

    .line 415
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v15

    .line 416
    :try_start_4
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 419
    :goto_2
    throw v15

    .line 432
    .end local v3    # "descriptionText":Ljava/lang/String;
    .end local v12    # "mToast":Landroid/widget/Toast;
    :cond_2
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 433
    .restart local v11    # "mHandler":Landroid/os/Handler;
    new-instance v15, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/view/accessibility/AccessibilityEvent;)V

    const-wide/16 v16, 0x5dc

    move-wide/from16 v0, v16

    invoke-virtual {v11, v15, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const/16 v16, 0xff

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 460
    .local v6, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v15

    if-ne v6, v15, :cond_3

    .line 461
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 464
    .restart local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_3
    const-string v15, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    .line 465
    .local v14, "toggledService":Landroid/content/ComponentName;
    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v7, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 470
    .local v5, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/16 v15, 0x3a

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 474
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 475
    .local v8, "enabledServicesBuilderLength":I
    if-lez v8, :cond_5

    .line 476
    add-int/lit8 v15, v8, -0x1

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 479
    :cond_5
    const/4 v9, 0x0

    .line 480
    .local v9, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "enabled_accessibility_services"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "accessibility_enabled"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    new-instance v13, Landroid/content/Intent;

    const-string v15, "com.android.settings.action.talkback_off"

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v13, "talk_back_off":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 417
    .end local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v7    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "enabledServicesBuilderLength":I
    .end local v9    # "enabledServicesSetting":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "mHandler":Landroid/os/Handler;
    .end local v13    # "talk_back_off":Landroid/content/Intent;
    .end local v14    # "toggledService":Landroid/content/ComponentName;
    .restart local v3    # "descriptionText":Ljava/lang/String;
    .restart local v12    # "mToast":Landroid/widget/Toast;
    :catch_2
    move-exception v15

    goto/16 :goto_0

    :catch_3
    move-exception v16

    goto/16 :goto_2
.end method

.method public onTalkbackModeCheck()V
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 549
    .local v0, "TalkbackMode":Z
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 551
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    .line 554
    :cond_0
    return-void

    .line 549
    :cond_1
    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    .line 125
    iput-boolean p2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    .line 127
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->dismiss()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    .line 131
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->handleShow()V

    goto :goto_0
.end method
