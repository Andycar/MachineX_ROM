.class public final Lcom/android/settings/guide/GuideFragment;
.super Landroid/app/Fragment;
.source "GuideFragment.java"

# interfaces
.implements Lcom/android/settings/guide/GuideFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/GuideFragment$1;,
        Lcom/android/settings/guide/GuideFragment$WrappedEnabler;,
        Lcom/android/settings/guide/GuideFragment$GuideModes;,
        Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    }
.end annotation


# static fields
.field private static sIsInGuideMode:Z


# instance fields
.field private mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

.field private mIsInGuideMode:Z

.field private mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

.field private mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 50
    sget-object v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 428
    return-void
.end method

.method private static completeGuide(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 327
    return-void
.end method

.method public static deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const v10, 0x7f100009

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 263
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v7, "GuideFragment"

    invoke-virtual {v1, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/guide/GuideFragment;

    .line 265
    .local v2, "frag":Lcom/android/settings/guide/GuideFragment;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "guideMode":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v4

    .line 267
    .local v4, "isBtGuide":Z
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deployGuide: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {v3}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v5

    .line 273
    .local v5, "isWifiGuide":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    if-eqz v2, :cond_2

    .line 275
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 277
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 279
    .local v6, "layout":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 280
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    :cond_0
    sput-boolean v11, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    .line 286
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 287
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    .line 318
    .end local v6    # "layout":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_6

    .line 292
    :cond_3
    invoke-static {p1}, Lcom/android/settings/guide/GuideFragment;->newInstance(Landroid/content/Intent;)Lcom/android/settings/guide/GuideFragment;

    move-result-object v2

    .line 294
    if-eqz v2, :cond_5

    .line 296
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 298
    .restart local v6    # "layout":Landroid/view/ViewGroup;
    if-eqz v6, :cond_4

    .line 299
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, "container":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setId(I)V

    .line 302
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 305
    .end local v0    # "container":Landroid/widget/FrameLayout;
    :cond_4
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string v8, "GuideFragment"

    invoke-virtual {v7, v10, v2, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 308
    sput-boolean v12, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0

    .line 310
    .end local v6    # "layout":Landroid/view/ViewGroup;
    :cond_5
    sput-boolean v11, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0

    .line 314
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 315
    sput-boolean v12, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0
.end method

.method public static dismissHelpDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 713
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v2, "GuideFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/guide/GuideFragment;

    .line 715
    .local v1, "fragment":Lcom/android/settings/guide/GuideFragment;
    if-eqz v1, :cond_0

    .line 716
    const-string v2, "GuideFragment"

    const-string v3, "dismissGuideHelper: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-direct {v1}, Lcom/android/settings/guide/GuideFragment;->dismissHelpDialogOnAdvanceClick()V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    const-string v2, "GuideFragment"

    const-string v3, "dismissGuideHelper: GuideFragment is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dismissHelpDialogOnAdvanceClick()V
    .locals 3

    .prologue
    .line 728
    const-string v0, "GuideFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissHelpDialog: mGuider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "GuideFragment"

    const-string v1, "dismissHelpDialog: calling  mGuider::dismissHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 733
    :cond_0
    return-void
.end method

.method public static findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 742
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 356
    .local v1, "retval":Landroid/view/ViewGroup;
    instance-of v2, p0, Landroid/app/ListActivity;

    if-eqz v2, :cond_1

    .line 358
    check-cast p0, Landroid/app/ListActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 360
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 361
    check-cast v1, Landroid/view/ViewGroup;

    .line 372
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-object v1

    .line 363
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_1
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 365
    const v2, 0x7f100480

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 367
    .restart local v0    # "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 368
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "mode"    # Lcom/android/settings/guide/GuideFragment$GuideModes;

    .prologue
    .line 476
    move-object v3, p2

    .line 478
    .local v3, "newMode":Lcom/android/settings/guide/GuideFragment$GuideModes;
    if-nez v3, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "guideMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settings/guide/GuideModeHelper;->isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    .line 485
    .local v2, "isInSettingsGuide":Z
    invoke-static {v1}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 492
    .end local v1    # "guideMode":Ljava/lang/String;
    .end local v2    # "isInSettingsGuide":Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 494
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_5

    .line 549
    :cond_1
    :goto_1
    return-void

    .line 486
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "guideMode":Ljava/lang/String;
    .restart local v2    # "isInSettingsGuide":Z
    :cond_2
    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_0

    .line 487
    :cond_3
    invoke-static {v1}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    :goto_2
    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_2

    .line 498
    .end local v1    # "guideMode":Ljava/lang/String;
    .end local v2    # "isInSettingsGuide":Z
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 499
    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    goto :goto_1

    .line 503
    :cond_6
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eq v3, v4, :cond_1

    .line 508
    iput-object v3, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 511
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v4, :cond_7

    .line 512
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    .line 513
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    .line 516
    :cond_7
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v4, :cond_1

    .line 517
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 519
    sget-object v4, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v5, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v5}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 545
    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v4, :cond_1

    .line 546
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_1

    .line 525
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SubSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 526
    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider;

    invoke-direct {v4, v0}, Lcom/android/settings/guide/BtSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 535
    :pswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SubSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 536
    new-instance v4, Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct {v4, v0}, Lcom/android/settings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isInGuideMode()Z
    .locals 1

    .prologue
    .line 397
    sget-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return v0
.end method

.method public static isInGuideMode(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 384
    sget-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 809
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static newInstance(Landroid/content/Intent;)Lcom/android/settings/guide/GuideFragment;
    .locals 3
    .param p0, "settingsIntent"    # Landroid/content/Intent;

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 412
    const/4 v1, 0x0

    .line 422
    :goto_0
    return-object v1

    .line 415
    :cond_0
    new-instance v1, Lcom/android/settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/settings/guide/GuideFragment;-><init>()V

    .line 418
    .local v1, "f":Lcom/android/settings/guide/GuideFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 420
    invoke-virtual {v1, v0}, Lcom/android/settings/guide/GuideFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V
    .locals 2
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-static {p2}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v1

    check-cast v1, Lcom/android/settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/settings/guide/GuideFragment;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 65
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 68
    :cond_0
    return-void
.end method

.method public static setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mWifiEnabler"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p2, "mBluetoothEnabler"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/guide/GuideFragmentCallback;

    move-object v0, v1

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 342
    .local v0, "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0, p2, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->setEnablers(Lcom/android/settings/bluetooth/BluetoothEnabler;Lcom/android/settings/wifi/WifiEnabler;)V

    .line 345
    :cond_0
    return-void
.end method

.method public static setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "retval":Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 83
    :cond_0
    const/4 v2, 0x0

    .line 92
    :goto_0
    return v2

    .line 86
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    .line 88
    .local v0, "guider":Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_2

    .line 89
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-interface {v0, v2, v3}, Lcom/android/settings/guide/GuideFragmentCallback;->setSelectedSectionId(J)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 92
    goto :goto_0
.end method

.method public static setsIsInGuideMode(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    .line 97
    return-void
.end method

.method public static showHelpDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 821
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 822
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v2, "GuideFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/guide/GuideFragment;

    .line 824
    .local v1, "fragment":Lcom/android/settings/guide/GuideFragment;
    if-eqz v1, :cond_0

    .line 825
    const-string v2, "GuideFragment"

    const-string v3, "showHelpDialog: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {v1}, Lcom/android/settings/guide/GuideFragment;->showHelpDialogOnResume()V

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_0
    const-string v2, "GuideFragment"

    const-string v3, "showHelpDialog: GuideFragment is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showHelpDialogOnResume()V
    .locals 3

    .prologue
    .line 834
    const-string v0, "GuideFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHelpDialogOnResume: mGuider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 836
    const-string v0, "GuideFragment"

    const-string v1, "showHelpDialogOnResume: calling  mGuider::showHelpDialogOnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->onResume()V

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_0
    const-string v0, "GuideFragment"

    const-string v1, "showHelpDialogonAdvanceClick: mGuider is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 599
    const/4 v1, 0x0

    .line 600
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 602
    .local v0, "keyCode":I
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v2, :cond_0

    .line 603
    sparse-switch v0, :sswitch_data_0

    .line 613
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 620
    :cond_0
    :goto_0
    return v1

    .line 609
    :sswitch_0
    const/4 v1, 0x0

    .line 610
    goto :goto_0

    .line 603
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 446
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 453
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 460
    invoke-static {p1}, Lcom/android/settings/guide/GuideModeHelper;->init(Landroid/content/Context;)V

    .line 462
    invoke-direct {p0, v1, v1}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 464
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 581
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 582
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 432
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    .line 438
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/GuideFragment;->setHasOptionsMenu(Z)V

    .line 439
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/GuideFragment;->setRetainInstance(Z)V

    .line 440
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 595
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "GuideFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 799
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 568
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 570
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->onPause()V

    .line 573
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_1

    .line 783
    const/16 v1, 0xcc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 785
    .local v0, "search":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 786
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 791
    .end local v0    # "search":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 553
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 555
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-nez v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->onResume()V

    goto :goto_0

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->finish()V

    goto :goto_0
.end method

.method public setEnablers(Lcom/android/settings/bluetooth/BluetoothEnabler;Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 4
    .param p1, "enablerBT"    # Lcom/android/settings/bluetooth/BluetoothEnabler;
    .param p2, "enablerWiFi"    # Lcom/android/settings/wifi/WifiEnabler;

    .prologue
    .line 627
    new-instance v0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    :cond_0
    move-object p2, p1

    .end local p2    # "enablerWiFi":Lcom/android/settings/wifi/WifiEnabler;
    :cond_1
    invoke-direct {v0, v1, p2}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;-><init>(Lcom/android/settings/guide/GuideFragment$GuideModes;Ljava/lang/Object;)V

    .line 631
    .local v0, "enabler":Lcom/android/settings/guide/GuideFragment$WrappedEnabler;
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_2

    .line 632
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1, v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 635
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1}, Lcom/android/settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    .line 638
    :cond_2
    return-void
.end method

.method public setSelectedSectionId(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 644
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 650
    :goto_0
    return v0

    .line 648
    :cond_0
    invoke-static {p1, p2}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->fromId(J)Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->switchGuiderMode()Z

    move-result v0

    goto :goto_0
.end method

.method switchGuiderMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "nextMode":Lcom/android/settings/guide/GuideFragment$GuideModes;
    const/4 v1, 0x0

    .line 668
    .local v1, "retval":Z
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    const/4 v2, 0x0

    .line 701
    :goto_0
    return v2

    .line 673
    :cond_0
    sget-object v2, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$SettingsHeader:[I

    iget-object v3, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v3}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 690
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 691
    invoke-direct {p0, v4, v0}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 693
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_2

    .line 694
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    .line 695
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 696
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2}, Lcom/android/settings/guide/GuiderLifecycleListener;->onResume()V

    .line 698
    :cond_2
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    .line 701
    goto :goto_0

    .line 675
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    .line 676
    sget-object v0, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    .line 681
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    .line 682
    sget-object v0, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
