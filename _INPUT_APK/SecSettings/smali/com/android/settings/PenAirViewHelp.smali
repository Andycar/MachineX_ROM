.class public Lcom/android/settings/PenAirViewHelp;
.super Landroid/app/Fragment;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field helpContent:Landroid/widget/LinearLayout;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private final mAirViewObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDBItem:Ljava/lang/String;

.field private mDisableAirCommandDialog:Landroid/app/AlertDialog;

.field private mEnableListViewDialog:Landroid/app/AlertDialog;

.field private mHelpType:Ljava/lang/String;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mTurnOnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 101
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 103
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 107
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    .line 109
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mEnableListViewDialog:Landroid/app/AlertDialog;

    .line 115
    new-instance v0, Lcom/android/settings/PenAirViewHelp$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PenAirViewHelp$1;-><init>(Lcom/android/settings/PenAirViewHelp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenAirViewHelp;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenAirViewHelp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewHelp;->handleOnClickAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/PenAirViewHelp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenAirViewHelp;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 631
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 633
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 637
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    .line 639
    :cond_1
    return-void
.end method

.method private handleOnClickAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "helpType"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/PenAirViewHelp;->startTryActually(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showInforPreviewDisableDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/android/settings/PenAirViewHelp;->dismissAllDialog()V

    .line 483
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a138f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a091f

    new-instance v2, Lcom/android/settings/PenAirViewHelp$11;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewHelp$11;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01d1

    new-instance v2, Lcom/android/settings/PenAirViewHelp$10;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewHelp$10;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    .line 497
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewHelp$12;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewHelp$12;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 503
    return-void
.end method

.method private showLinkPreviewEnableDialog()V
    .locals 5

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/settings/PenAirViewHelp;->dismissAllDialog()V

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 455
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040152

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 456
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a1195

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a091f

    new-instance v4, Lcom/android/settings/PenAirViewHelp$8;

    invoke-direct {v4, p0}, Lcom/android/settings/PenAirViewHelp$8;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01d1

    new-instance v4, Lcom/android/settings/PenAirViewHelp$7;

    invoke-direct {v4, p0}, Lcom/android/settings/PenAirViewHelp$7;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PenAirViewHelp;->mEnableListViewDialog:Landroid/app/AlertDialog;

    .line 472
    iget-object v2, p0, Lcom/android/settings/PenAirViewHelp;->mEnableListViewDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/PenAirViewHelp$9;

    invoke-direct {v3, p0}, Lcom/android/settings/PenAirViewHelp$9;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 479
    return-void
.end method

.method private showTurnOnDialog(Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0a118d

    const v9, 0x7f0a118b

    const v8, 0x7f0a138a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 506
    invoke-direct {p0}, Lcom/android/settings/PenAirViewHelp;->dismissAllDialog()V

    .line 507
    move-object v3, p1

    .line 508
    .local v3, "tutorial_type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 509
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a13bb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "title":Ljava/lang/String;
    const v4, 0x7f0a13bc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "message":Ljava/lang/String;
    const-string v4, "pointer"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_0
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a091f

    new-instance v6, Lcom/android/settings/PenAirViewHelp$13;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/PenAirViewHelp$13;-><init>(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01d1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 552
    return-void

    .line 517
    :cond_1
    const-string v4, "information_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 522
    :cond_2
    const-string v4, "progress_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 523
    const v4, 0x7f0a134e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0a134e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_3
    const-string v4, "speed_dial_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 528
    const v4, 0x7f0a1350

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0a1350

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 532
    :cond_4
    const-string v4, "icon_label"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 533
    const v4, 0x7f0a118f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0a118f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 537
    :cond_5
    const-string v4, "list_scroll"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    const v4, 0x7f0a1191

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0a1191

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v4, "default"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 433
    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    const-string v5, "pen_hovering_information_preview"

    if-ne v4, v5, :cond_1

    .line 434
    const-string v4, "air_button_onoff"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 435
    .local v1, "status":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    if-ne v1, v2, :cond_2

    .line 437
    const-string v2, "information_preview"

    invoke-direct {p0, v2}, Lcom/android/settings/PenAirViewHelp;->showInforPreviewDisableDialog(Ljava/lang/String;)V

    .line 450
    .end local v1    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    if-ne p2, v2, :cond_2

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    const-string v5, "pen_hovering_link_preview"

    if-ne v4, v5, :cond_2

    .line 442
    const-string v4, "pen_hovering_link_preview"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 443
    .restart local v1    # "status":I
    if-nez v1, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/android/settings/PenAirViewHelp;->showLinkPreviewEnableDialog()V

    goto :goto_0

    .line 448
    .end local v1    # "status":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 135
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 138
    .local v1, "mActivity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 140
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 142
    .local v2, "padding":I
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 143
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 145
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 150
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    .line 152
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 156
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 25
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    const/16 v21, 0x0

    .line 162
    .local v21, "view":Landroid/view/View;
    const v22, 0x7f0400b9

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 163
    const v22, 0x7f1001d1

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mContext:Landroid/content/Context;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    .line 168
    .local v9, "isKnox":Z
    const-string v22, "pointer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 169
    const-string v22, "pen_hovering_pointer"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 170
    new-instance v13, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 171
    .local v13, "pointer":Lcom/android/settings/HelpItem;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 172
    const v22, 0x7f0a1383

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 174
    const v22, 0x7f020160

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 178
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v13}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_0

    if-eqz v9, :cond_1

    .line 180
    :cond_0
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 378
    .end local v13    # "pointer":Lcom/android/settings/HelpItem;
    :cond_1
    :goto_1
    return-object v21

    .line 176
    .restart local v13    # "pointer":Lcom/android/settings/HelpItem;
    :cond_2
    const v22, 0x7f02015c

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_0

    .line 181
    .end local v13    # "pointer":Lcom/android/settings/HelpItem;
    :cond_3
    const-string v22, "information_preview"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 182
    const-string v22, "pen_hovering_information_preview"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 183
    new-instance v8, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 184
    .local v8, "informatoin_preview":Lcom/android/settings/HelpItem;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 185
    const v22, 0x7f0a1384

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 186
    const v22, 0x7f02049a

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 188
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_4

    if-eqz v9, :cond_5

    .line 190
    :cond_4
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 199
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 192
    :cond_5
    new-instance v22, Lcom/android/settings/PenAirViewHelp$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/PenAirViewHelp$2;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 200
    .end local v8    # "informatoin_preview":Lcom/android/settings/HelpItem;
    :cond_6
    const-string v22, "progress_preview"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 201
    const-string v22, "pen_hovering_progress_preview"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 202
    new-instance v14, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 203
    .local v14, "progress_bar_preview":Lcom/android/settings/HelpItem;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 204
    const v22, 0x7f0a134f

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 206
    const v22, 0x7f02049e

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 210
    :goto_3
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_7

    if-eqz v9, :cond_9

    .line 212
    :cond_7
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 221
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v14}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 208
    :cond_8
    const v22, 0x7f02049d

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_3

    .line 214
    :cond_9
    new-instance v22, Lcom/android/settings/PenAirViewHelp$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/PenAirViewHelp$3;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 222
    .end local v14    # "progress_bar_preview":Lcom/android/settings/HelpItem;
    :cond_a
    const-string v22, "speed_dial_preview"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 223
    const-string v22, "pen_hovering_speed_dial_preview"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 224
    new-instance v18, Lcom/android/settings/HelpItem;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 225
    .local v18, "speed_dial_preview":Lcom/android/settings/HelpItem;
    const/16 v22, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 226
    const v22, 0x7f0a1386

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 227
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, "salesCode":Ljava/lang/String;
    const v22, 0x7f02049f

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 229
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_b

    if-eqz v9, :cond_c

    .line 231
    :cond_b
    const/16 v22, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 240
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 233
    :cond_c
    new-instance v22, Lcom/android/settings/PenAirViewHelp$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/PenAirViewHelp$4;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 241
    .end local v16    # "salesCode":Ljava/lang/String;
    .end local v18    # "speed_dial_preview":Lcom/android/settings/HelpItem;
    :cond_d
    const-string v22, "icon_label"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 242
    const-string v22, "pen_hovering_icon_label"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 243
    new-instance v6, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 244
    .local v6, "icon_label":Lcom/android/settings/HelpItem;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a1387

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "contents":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 248
    const v22, 0x7f020499

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 252
    :goto_6
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v22

    if-nez v22, :cond_e

    if-eqz v9, :cond_10

    .line 254
    :cond_e
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 263
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 250
    :cond_f
    const v22, 0x7f020498

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_6

    .line 256
    :cond_10
    new-instance v22, Lcom/android/settings/PenAirViewHelp$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/PenAirViewHelp$5;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 264
    .end local v4    # "contents":Ljava/lang/String;
    .end local v6    # "icon_label":Lcom/android/settings/HelpItem;
    :cond_11
    const-string v22, "list_scroll"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 265
    const-string v22, "pen_hovering_list_scroll"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 266
    new-instance v11, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 267
    .local v11, "list_scroll":Lcom/android/settings/HelpItem;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a1388

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    .restart local v4    # "contents":Ljava/lang/String;
    invoke-virtual {v11, v4}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 271
    const v22, 0x7f02049c

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 272
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v22

    if-nez v22, :cond_12

    if-eqz v9, :cond_13

    .line 274
    :cond_12
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/android/settings/HelpItem;->setTryBtnVisibility(I)V

    .line 284
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v11}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 276
    :cond_13
    new-instance v22, Lcom/android/settings/PenAirViewHelp$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/PenAirViewHelp$6;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 285
    .end local v4    # "contents":Ljava/lang/String;
    .end local v11    # "list_scroll":Lcom/android/settings/HelpItem;
    :cond_14
    const-string v22, "link_preview"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 286
    const-string v22, "pen_hovering_link_preview"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 287
    new-instance v10, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 288
    .local v10, "link_preview":Lcom/android/settings/HelpItem;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a1196

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    .restart local v4    # "contents":Ljava/lang/String;
    invoke-virtual {v10, v4}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 292
    const v22, 0x7f02049b

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 293
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 296
    .end local v4    # "contents":Ljava/lang/String;
    .end local v10    # "link_preview":Lcom/android/settings/HelpItem;
    :cond_15
    const-string v22, "air_menu"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 297
    const-string v22, "pen_hovering_air_menu"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 298
    new-instance v3, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 299
    .local v3, "air_menu":Lcom/android/settings/HelpItem;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a1199

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    .restart local v4    # "contents":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 303
    const v22, 0x7f020497

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 304
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 307
    .end local v3    # "air_menu":Lcom/android/settings/HelpItem;
    .end local v4    # "contents":Ljava/lang/String;
    :cond_16
    const-string v22, "information_preview_2014"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 308
    const-string v22, "pen_hovering_information_preview"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v12

    .line 311
    .local v12, "mIsKMenutree":Z
    new-instance v7, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 312
    .local v7, "infoPreview":Lcom/android/settings/HelpItem;
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->hideTitle()V

    .line 313
    const v22, 0x7f0a1384

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 314
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 315
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const v23, 0x7f04018d

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    new-instance v19, Lcom/android/settings/HelpItem;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 321
    .local v19, "splanner":Lcom/android/settings/HelpItem;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    .line 322
    .restart local v16    # "salesCode":Ljava/lang/String;
    const-string v22, "ATT"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "SPR"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "VZW"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "TMB"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "USC"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "VMU"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "BST"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "XAS"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "CRI"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "XAR"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "XAC"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 324
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 325
    .local v15, "res":Landroid/content/res/Resources;
    const v22, 0x7f0a13ac

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 326
    const v22, 0x7f0a13b0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 331
    .end local v15    # "res":Landroid/content/res/Resources;
    :goto_9
    const v22, 0x7f0204a4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 332
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const v23, 0x7f04018d

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 338
    .local v5, "gallery":Lcom/android/settings/HelpItem;
    const v22, 0x7f0a1e0e

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 339
    const v22, 0x7f0a13b3

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 340
    const v22, 0x7f02049a

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 341
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const v23, 0x7f04018d

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    new-instance v20, Lcom/android/settings/HelpItem;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 347
    .local v20, "video":Lcom/android/settings/HelpItem;
    const v22, 0x7f0a18fb

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 348
    const v22, 0x7f0a134f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 350
    const v22, 0x7f02049e

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 354
    :goto_a
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const v23, 0x7f04018d

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    new-instance v17, Lcom/android/settings/HelpItem;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 360
    .local v17, "speedDial":Lcom/android/settings/HelpItem;
    const-string v22, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 361
    const v22, 0x7f0a0052

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 365
    :goto_b
    const v22, 0x7f0a13b9

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 366
    const-string v22, "ATT"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "SPR"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "VZW"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "TMB"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "USC"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "VMU"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "BST"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "XAS"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 370
    :cond_18
    const v22, 0x7f0204a0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 374
    :goto_c
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 328
    .end local v5    # "gallery":Lcom/android/settings/HelpItem;
    .end local v17    # "speedDial":Lcom/android/settings/HelpItem;
    .end local v20    # "video":Lcom/android/settings/HelpItem;
    :cond_19
    const v22, 0x7f0a1e14

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    .line 329
    const v22, 0x7f0a13ae

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentText(I)V

    goto/16 :goto_9

    .line 352
    .restart local v5    # "gallery":Lcom/android/settings/HelpItem;
    .restart local v20    # "video":Lcom/android/settings/HelpItem;
    :cond_1a
    const v22, 0x7f02049d

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto/16 :goto_a

    .line 363
    .restart local v17    # "speedDial":Lcom/android/settings/HelpItem;
    :cond_1b
    const v22, 0x7f0a0a31

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setTitleText(I)V

    goto/16 :goto_b

    .line 372
    :cond_1c
    const v22, 0x7f02049f

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_c
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 426
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 427
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 413
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 393
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 394
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 395
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 399
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 400
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 401
    .local v1, "status":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 403
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 406
    .end local v1    # "status":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 407
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 417
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 418
    return-void
.end method

.method public startTryActually(Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 555
    const-string v3, "pointer"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const-string v3, "information_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 559
    const-string v3, "information_preview"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 562
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    const-string v3, "HelpMode"

    const-string v4, "INFORMATION_PREVIEW"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 569
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "progress_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 570
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 572
    const-string v3, "progress_preview"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 574
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "video_help"

    const-string v5, "raw"

    const-string v6, "com.samsung.helpplugin"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 576
    .local v2, "resId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
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

    .line 582
    const-string v3, "type"

    const-string v4, "pen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 585
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v3, "PenAirViewHelp"

    const-string v4, "The Video resource not downloaded yet"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 589
    .end local v2    # "resId":I
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "file:///system/media/video/video_help.mp4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v3, "type"

    const-string v4, "pen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 596
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v3, "speed_dial_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 598
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 601
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.jcontacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v1, "mIntent":Landroid/content/Intent;
    :goto_1
    const-string v3, "DialerGuideMode"

    const-string v4, "SPEED_DIAL_TIP_TUTORIAL"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v1}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 603
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "mIntent":Landroid/content/Intent;
    goto :goto_1

    .line 607
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_9
    const-string v3, "icon_label"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    const-string v3, "HelpMode"

    const-string v4, "ICON_LABELS"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 614
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_a
    const-string v3, "list_scroll"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 617
    const-string v3, "list_scroll"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 620
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    const-string v3, "HelpMode"

    const-string v4, "AIR_VIEW_LIST_SCROLLING"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
