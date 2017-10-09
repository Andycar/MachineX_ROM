.class public Lcom/android/settings/FingerAirViewHelp;
.super Landroid/app/Fragment;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field gallery:Lcom/android/settings/HelpItem;

.field helpContent:Landroid/widget/LinearLayout;

.field infoPreview:Lcom/android/settings/HelpItem;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private final mAirViewObserver:Landroid/database/ContentObserver;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mContext:Landroid/content/Context;

.field private mDBItem:Ljava/lang/String;

.field private mFingerAirViewHelpObserver:Landroid/database/ContentObserver;

.field private mHelpType:Ljava/lang/String;

.field private mIsKMenutree:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mTurnOnDialog:Landroid/app/AlertDialog;

.field message:Lcom/android/settings/HelpItem;

.field splanner:Lcom/android/settings/HelpItem;

.field video:Lcom/android/settings/HelpItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 84
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    .line 101
    new-instance v0, Lcom/android/settings/FingerAirViewHelp$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewHelp$1;-><init>(Lcom/android/settings/FingerAirViewHelp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 128
    new-instance v0, Lcom/android/settings/FingerAirViewHelp$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewHelp$2;-><init>(Lcom/android/settings/FingerAirViewHelp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mFingerAirViewHelpObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewHelp;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewHelp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewHelp;->handleOnClickAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewHelp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewHelp;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewHelp;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewHelp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FingerAirViewHelp;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 601
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    return-void
.end method

.method private handleOnClickAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "helpType"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/FingerAirViewHelp;->startTryActually(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 6

    .prologue
    const v5, 0x7f0a13c5

    const v4, 0x7f0a0a3c

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a13c6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1186

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FingerAirViewHelp$12;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewHelp$12;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/FingerAirViewHelp$11;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewHelp$11;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/FingerAirViewHelp$10;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerAirViewHelp$10;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 647
    return-void
.end method

.method private showTurnOnDialog(Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0a139c

    const v9, 0x7f0a1398    # 1.835352E38f

    const v8, 0x7f0a138b

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 453
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 454
    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 455
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 457
    :cond_0
    move-object v3, p1

    .line 458
    .local v3, "tutorial_type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 459
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a13bb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "title":Ljava/lang/String;
    const v4, 0x7f0a13bc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "message":Ljava/lang/String;
    const-string v4, "information_preview"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 464
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 469
    const v4, 0x7f0a13c1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    :cond_1
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a091f

    new-instance v6, Lcom/android/settings/FingerAirViewHelp$9;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/FingerAirViewHelp$9;-><init>(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01d1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 521
    return-void

    .line 472
    :cond_2
    const-string v4, "progress_bar_preview"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    const v4, 0x7f0a13a5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0a13a5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 479
    const v4, 0x7f0a13c2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_3
    const-string v4, "speed_dial_tip"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    const v4, 0x7f0a13a7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0a13a7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 488
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 489
    const v4, 0x7f0a13c3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 492
    :cond_4
    const-string v4, "magnifier"

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 498
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 499
    const v4, 0x7f0a13c4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public enableAirViewAndInforPreview(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 590
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    const-string v3, "finger_air_view_information_preview"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 591
    goto :goto_0

    .line 593
    :cond_1
    const-string v4, "finger_air_view"

    if-eqz p1, :cond_2

    move v3, v1

    :goto_2
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    const-string v4, "finger_air_view_highlight"

    if-eqz p1, :cond_3

    move v3, v1

    :goto_3
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    const-string v3, "finger_air_view_information_preview"

    if-eqz p1, :cond_4

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewHelp;->broadcastFingerAirViewChanged(Z)V

    goto :goto_1

    :cond_2
    move v3, v2

    .line 593
    goto :goto_2

    :cond_3
    move v3, v2

    .line 594
    goto :goto_3

    :cond_4
    move v1, v2

    .line 595
    goto :goto_4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 440
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    const-string v3, "information_preview"

    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 442
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewHelp;->makeTalkBackDisablePopup()V

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/settings/FingerAirViewHelp;->enableAirViewAndInforPreview(Z)V

    goto :goto_0

    .line 448
    :cond_3
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    if-eqz p2, :cond_4

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 145
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 148
    .local v1, "mActivity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 149
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 151
    .local v2, "padding":I
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 152
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 154
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0205e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0205e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 162
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    .line 163
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 165
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    .line 168
    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mContext:Landroid/content/Context;

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 175
    .local v3, "isKnox":Z
    const/4 v11, 0x0

    .line 176
    .local v11, "view":Landroid/view/View;
    const v12, 0x7f0400b9

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 178
    const v12, 0x7f1001d1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    .line 180
    const-string v12, "information_preview"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 181
    const-string v12, "finger_air_view_information_preview"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 183
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->infoPreview:Lcom/android/settings/HelpItem;

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->infoPreview:Lcom/android/settings/HelpItem;

    invoke-virtual {v12}, Lcom/android/settings/HelpItem;->hideTitle()V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->infoPreview:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a13aa

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->infoPreview:Lcom/android/settings/HelpItem;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->infoPreview:Lcom/android/settings/HelpItem;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->infoPreview:Lcom/android/settings/HelpItem;

    invoke-virtual {v13}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    .line 190
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "salesCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 205
    .local v7, "res":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v13, "com.android.calendar"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 207
    .local v4, "mCalendarAppName":Ljava/lang/String;
    const v12, 0x7f0a1e14

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a1e14

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a13ad

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v4    # "mCalendarAppName":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    if-eqz v12, :cond_6

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    const v13, 0x7f0200ee

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 226
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    if-nez v12, :cond_0

    if-nez v3, :cond_0

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    new-instance v13, Lcom/android/settings/FingerAirViewHelp$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$3;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    invoke-virtual {v13}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a1e0e

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a13b2

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 239
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    if-eqz v12, :cond_7

    .line 240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    const v13, 0x7f0200ec

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 245
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    if-nez v12, :cond_1

    if-nez v3, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    new-instance v13, Lcom/android/settings/FingerAirViewHelp$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$4;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    invoke-virtual {v13}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    const-string v12, "KDI"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    if-nez v12, :cond_3

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "com.android.mms"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 257
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->message:Lcom/android/settings/HelpItem;

    .line 258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->message:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a13b4

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->message:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a13b5

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->message:Lcom/android/settings/HelpItem;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 263
    if-nez v3, :cond_2

    .line 264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->message:Lcom/android/settings/HelpItem;

    new-instance v13, Lcom/android/settings/FingerAirViewHelp$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/FingerAirViewHelp$5;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->message:Lcom/android/settings/HelpItem;

    invoke-virtual {v13}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    if-eqz v12, :cond_4

    .line 276
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->video:Lcom/android/settings/HelpItem;

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->video:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a18fb

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->video:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a13b6

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->video:Lcom/android/settings/HelpItem;

    const v13, 0x7f0200ef

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->video:Lcom/android/settings/HelpItem;

    invoke-virtual {v13}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance v9, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 283
    .local v9, "speedDial":Lcom/android/settings/HelpItem;
    const-string v12, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 284
    const v12, 0x7f0a0052

    invoke-virtual {v9, v12}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 288
    :goto_3
    const v12, 0x7f0a13b8

    invoke-virtual {v9, v12}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 289
    const v12, 0x7f0200eb

    invoke-virtual {v9, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "salesCode":Ljava/lang/String;
    .end local v9    # "speedDial":Lcom/android/settings/HelpItem;
    :cond_4
    :goto_4
    return-object v11

    .line 211
    .restart local v4    # "mCalendarAppName":Ljava/lang/String;
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v8    # "salesCode":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a13ac

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    const v13, 0x7f0a13af

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const v16, 0x7f0a13ac

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 215
    .end local v4    # "mCalendarAppName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "FingerAirViewHelp"

    const-string v13, "No name found for application calendar"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 223
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    goto/16 :goto_1

    .line 243
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    goto/16 :goto_2

    .line 286
    .restart local v9    # "speedDial":Lcom/android/settings/HelpItem;
    :cond_8
    const v12, 0x7f0a0a31

    invoke-virtual {v9, v12}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    goto :goto_3

    .line 292
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "salesCode":Ljava/lang/String;
    .end local v9    # "speedDial":Lcom/android/settings/HelpItem;
    :cond_9
    const-string v12, "progress_bar_preview"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 293
    const-string v12, "finger_air_view_pregress_bar_preview"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 295
    new-instance v6, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 296
    .local v6, "progress_bar_preview":Lcom/android/settings/HelpItem;
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 297
    const v12, 0x7f0a13b6

    invoke-virtual {v6, v12}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 298
    const v12, 0x7f0200e2

    invoke-virtual {v6, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 299
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 300
    if-nez v3, :cond_a

    .line 301
    new-instance v12, Lcom/android/settings/FingerAirViewHelp$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/FingerAirViewHelp$6;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v6, v12}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 310
    .end local v6    # "progress_bar_preview":Lcom/android/settings/HelpItem;
    :cond_b
    const-string v12, "speed_dial_tip"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 311
    const-string v12, "finger_air_view_speed_dial_tip"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 313
    new-instance v10, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 314
    .local v10, "speed_dial_tip":Lcom/android/settings/HelpItem;
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 315
    const v12, 0x7f0a13b8

    invoke-virtual {v10, v12}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 316
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    .line 322
    .restart local v8    # "salesCode":Ljava/lang/String;
    const v12, 0x7f0200e6

    invoke-virtual {v10, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 324
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 325
    if-nez v3, :cond_c

    .line 326
    new-instance v12, Lcom/android/settings/FingerAirViewHelp$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/FingerAirViewHelp$7;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v10, v12}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 335
    .end local v8    # "salesCode":Ljava/lang/String;
    .end local v10    # "speed_dial_tip":Lcom/android/settings/HelpItem;
    :cond_d
    const-string v12, "magnifier"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 336
    const-string v12, "finger_air_view_magnifier"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 338
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 339
    .local v5, "magnifier":Lcom/android/settings/HelpItem;
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FingerAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a1399

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "contents":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z

    if-eqz v12, :cond_f

    .line 343
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->hideTitle()V

    .line 344
    const v12, 0x7f0200ed

    invoke-virtual {v5, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 360
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 347
    :cond_f
    const v12, 0x7f0200de

    invoke-virtual {v5, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 348
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 349
    if-nez v3, :cond_e

    .line 350
    new-instance v12, Lcom/android/settings/FingerAirViewHelp$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/FingerAirViewHelp$8;-><init>(Lcom/android/settings/FingerAirViewHelp;)V

    invoke-virtual {v5, v12}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 434
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 435
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 400
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 401
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 407
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 409
    .local v1, "status":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 411
    iget-object v3, p0, Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/FingerAirViewHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 414
    .end local v1    # "status":Z
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings"

    const-string v5, "AIRV"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mFingerAirViewHelpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/FingerAirViewHelp;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 420
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp;->mFingerAirViewHelpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 426
    return-void
.end method

.method public startTryActually(Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 523
    const-string v3, "information_preview_splanner"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.calendar.help"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    .line 586
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const-string v3, "information_preview_gallery"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 527
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 529
    const-string v3, "information_preview_gallery"

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 532
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v3, "IsHelpMode"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 536
    const-string v3, "HelpMode"

    const-string v4, "INFORMATION_PREVIEW"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 538
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "information_preview_message"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.help.AirViewTutorialReceiver.java"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.mms.help.AirViewMainActivity"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 542
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v3, "progress_bar_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "information_preview_video"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 543
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 545
    const-string v3, "progress_bar_preview"

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 547
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "video_help"

    const-string v5, "raw"

    const-string v6, "com.samsung.helpplugin"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 549
    .local v2, "resId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://com.samsung.helpplugin/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v3, "type"

    const-string v4, "finger"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 558
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v3, "FingerAirViewHelp"

    const-string v4, "The Video resource not downloaded yet"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 562
    .end local v2    # "resId":I
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "file:///system/media/video/video_help.mp4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-virtual {p0, v0}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 568
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v3, "speed_dial_tip"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "information_preview_phone"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 570
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 571
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.jcontacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, "mIntent":Landroid/content/Intent;
    :goto_1
    const-string v3, "DialerGuideMode"

    const-string v4, "SPEED_DIAL_TIP_TUTORIAL"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/settings/FingerAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 573
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_b
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 574
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.contacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "mIntent":Landroid/content/Intent;
    goto :goto_1

    .line 577
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "mIntent":Landroid/content/Intent;
    goto :goto_1

    .line 581
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_d
    const-string v3, "magnifier"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.sbrowsertry.GUIDE_AIRVIEW_MAGNIFIER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .restart local v1    # "mIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/FingerAirViewHelp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
