.class public Lcom/android/settings/SelectItemDisplay;
.super Landroid/app/Activity;
.source "SelectItemDisplay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SelectItemDisplay$ViewHolder;,
        Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;
    }
.end annotation


# static fields
.field public static final DEFULT_WALLPAPER_BACKGROUND:I


# instance fields
.field private isKeepDisplay:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNetworkPopup:Landroid/widget/LinearLayout;

.field private mOpenCoverPopup:Landroid/widget/LinearLayout;

.field private mPedometerDBKey:Ljava/lang/String;

.field private mSHealthItentExtra_type:Ljava/lang/String;

.field private mShortcutCameraDBKey:Ljava/lang/String;

.field private mUseLocationPopup:Landroid/widget/LinearLayout;

.field private mWeatherAgreed:Z

.field private mWeatherDBKey:Ljava/lang/String;

.field private mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

.field private mWeatherToShowPopup:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0x2e

    const/16 v1, 0x1a

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SelectItemDisplay;->DEFULT_WALLPAPER_BACKGROUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    .line 82
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    .line 83
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    .line 86
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    .line 89
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    .line 426
    new-instance v0, Lcom/android/settings/SelectItemDisplay$9;

    invoke-direct {v0, p0}, Lcom/android/settings/SelectItemDisplay$9;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    iput-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 623
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SelectItemDisplay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/SelectItemDisplay;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/SelectItemDisplay;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SelectItemDisplay;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    return-object v0
.end method

.method private checkGuidePopupAvailable(I)Z
    .locals 6
    .param p1, "selectedItem"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 902
    const/4 v0, 0x0

    .line 905
    .local v0, "doNotShow":Z
    const/16 v5, 0x7d1

    if-ne p1, v5, :cond_1

    .line 906
    const-string v2, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    .line 912
    .local v2, "spName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SelectItemDisplay;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 913
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 914
    const-string v5, "DoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 915
    :cond_0
    if-nez v0, :cond_3

    :goto_1
    return v3

    .line 907
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spName":Ljava/lang/String;
    :cond_1
    const/16 v5, 0x7d2

    if-ne p1, v5, :cond_2

    .line 908
    const-string v2, "com.android.settings.SViewCoverPopup.Weather"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .line 910
    .end local v2    # "spName":Ljava/lang/String;
    :cond_2
    const-string v2, "com.android.settings.SViewCoverPopup.Pedometer"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    move v3, v4

    .line 915
    goto :goto_1
.end method

.method private clickItem(I)V
    .locals 14
    .param p1, "selectedItem"    # I

    .prologue
    .line 703
    const/16 v9, 0x7d1

    if-ne p1, v9, :cond_3

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x1

    .line 706
    .local v1, "ShortcutCameraState":Z
    :goto_0
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onItemClick - Camera Shortcut:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 817
    .end local v1    # "ShortcutCameraState":Z
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v9}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->notifyDataSetChanged()V

    .line 818
    :goto_3
    return-void

    .line 704
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 707
    .restart local v1    # "ShortcutCameraState":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 709
    .end local v1    # "ShortcutCameraState":Z
    :cond_3
    const/16 v9, 0x7d2

    if-ne p1, v9, :cond_d

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v6, 0x1

    .line 712
    .local v6, "mWeaterState":Z
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 713
    invoke-static {p0}, Lcom/android/settings/Utils;->checkWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 714
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 715
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 716
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    goto :goto_3

    .line 710
    .end local v6    # "mWeaterState":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 719
    .restart local v6    # "mWeaterState":Z
    :cond_5
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 720
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 721
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    .line 749
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    if-nez v6, :cond_a

    const/4 v9, 0x1

    :goto_6
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    if-nez v6, :cond_b

    const/4 v9, 0x1

    :goto_7
    invoke-static {p0, v9}, Lcom/android/settings/Utils;->sendSViewCoverWeatherIntent(Landroid/content/Context;Z)V

    .line 752
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_show_info"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 755
    .local v0, "LockScreenShowAdditionalInfo":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 756
    if-nez v6, :cond_c

    const/4 v9, 0x1

    :goto_8
    invoke-static {p0, v9}, Lcom/android/settings/Utils;->sendLockScreenWeatherIntent(Landroid/content/Context;Z)V

    goto :goto_2

    .line 723
    .end local v0    # "LockScreenShowAdditionalInfo":I
    :cond_7
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {p0}, Lcom/android/settings/Utils;->hasSViewCoverWeather2014(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 725
    :cond_8
    invoke-static {p0}, Lcom/android/settings/SelectItemDisplay;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v5

    .line 726
    .local v5, "mUseCurrentLocation":I
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onItemClick, CurrentLocation : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / Weather state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    if-nez v5, :cond_6

    if-nez v6, :cond_6

    .line 729
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 730
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 731
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    goto/16 :goto_3

    .line 735
    .end local v5    # "mUseCurrentLocation":I
    :cond_9
    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->checkNetwork()Z

    move-result v9

    if-nez v9, :cond_6

    .line 736
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 737
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 738
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    .line 739
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/android/settings/SelectItemDisplay$10;

    invoke-direct {v10, p0}, Lcom/android/settings/SelectItemDisplay$10;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    const-wide/16 v12, 0x1388

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 749
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 750
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 756
    .restart local v0    # "LockScreenShowAdditionalInfo":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    .line 760
    .end local v0    # "LockScreenShowAdditionalInfo":I
    .end local v6    # "mWeaterState":Z
    :cond_d
    const/16 v9, 0x7d4

    if-ne p1, v9, :cond_10

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "air_message"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_e

    const/4 v2, 0x1

    .line 762
    .local v2, "mAirMsgState":Z
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_message"

    if-nez v2, :cond_f

    const/4 v9, 0x1

    :goto_a
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 761
    .end local v2    # "mAirMsgState":Z
    :cond_e
    const/4 v2, 0x0

    goto :goto_9

    .line 762
    .restart local v2    # "mAirMsgState":Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_a

    .line 766
    .end local v2    # "mAirMsgState":Z
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "shealth_pedometer_status_running"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 768
    .local v7, "pedometerstatus":I
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "shealth_profile_initialized"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 769
    .local v8, "sHealthProfileState":I
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_11

    const/4 v4, 0x1

    .line 770
    .local v4, "mMateState":Z
    :goto_b
    const-string v9, "SelectItemDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onItemClick - walk_mate:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " shealth_pedometer_status_running:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " shealth_profile_initialized:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v9, 0x1

    if-ne v7, v9, :cond_15

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    if-nez v4, :cond_12

    const/4 v9, 0x1

    :goto_c
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 775
    const-string v10, "SelectItemDisplay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onItemClick pedometerstatus-1 walk_mate-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v4, :cond_13

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":sendBroadcast "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v3, "mIntent":Landroid/content/Intent;
    const-string v10, "visibility"

    if-nez v4, :cond_14

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 779
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    invoke-virtual {p0, v3}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 769
    .end local v3    # "mIntent":Landroid/content/Intent;
    .end local v4    # "mMateState":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_b

    .line 774
    .restart local v4    # "mMateState":Z
    :cond_12
    const/4 v9, 0x0

    goto :goto_c

    .line 775
    :cond_13
    const/4 v9, 0x0

    goto :goto_d

    .line 778
    .restart local v3    # "mIntent":Landroid/content/Intent;
    :cond_14
    const/4 v9, 0x0

    goto :goto_e

    .line 782
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_15
    if-nez v4, :cond_17

    .line 783
    if-nez v8, :cond_16

    .line 784
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 785
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 786
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    .line 796
    :goto_f
    iget-object v9, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v9}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->notifyDataSetChanged()V

    .line 797
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    goto/16 :goto_3

    .line 788
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 789
    const-string v9, "SelectItemDisplay"

    const-string v10, "onItemClick walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v9, "visibility"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v3}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_f

    .line 807
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    if-nez v4, :cond_18

    const/4 v9, 0x1

    :goto_10
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 808
    const-string v10, "SelectItemDisplay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onItemClick walk_mate-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v4, :cond_19

    const/4 v9, 0x1

    :goto_11
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": sendBroadcast "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v10, "visibility"

    if-nez v4, :cond_1a

    const/4 v9, 0x1

    :goto_12
    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 812
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    invoke-virtual {p0, v3}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 807
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_18
    const/4 v9, 0x0

    goto :goto_10

    .line 808
    :cond_19
    const/4 v9, 0x0

    goto :goto_11

    .line 811
    .restart local v3    # "mIntent":Landroid/content/Intent;
    :cond_1a
    const/4 v9, 0x0

    goto :goto_12
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 876
    const/4 v8, 0x0

    .line 878
    .local v8, "result":I
    if-nez p0, :cond_0

    move v9, v8

    .line 898
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 881
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 882
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 883
    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 887
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 888
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 895
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v9, v8

    .line 898
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 891
    .end local v9    # "result":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 892
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSharedPreferences(I)V
    .locals 5
    .param p1, "selectedItem"    # I

    .prologue
    const/4 v4, 0x1

    .line 921
    const/16 v3, 0x7d1

    if-ne p1, v3, :cond_0

    .line 922
    const-string v2, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    .line 928
    .local v2, "spName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/android/settings/SelectItemDisplay;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 929
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 930
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "DoNotShowDialog"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 931
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 932
    return-void

    .line 923
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spName":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x7d2

    if-ne p1, v3, :cond_1

    .line 924
    const-string v2, "com.android.settings.SViewCoverPopup.Weather"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0

    .line 926
    .end local v2    # "spName":Ljava/lang/String;
    :cond_1
    const-string v2, "com.android.settings.SViewCoverPopup.Pedometer"

    .restart local v2    # "spName":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public CoverOpen()V
    .locals 7

    .prologue
    const/high16 v6, 0x10800000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 437
    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    const-string v2, "type"

    iget-object v3, p0, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 455
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 456
    .restart local v1    # "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SelectInfoCoverSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->startActivity(Landroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 461
    invoke-static {p0}, Lcom/android/settings/Utils;->hasSViewCoverWeather2014(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 463
    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen(), call the WeatherSettings"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WeatherSettingsFragmentActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 467
    const-string v2, "sview"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->startActivity(Landroid/content/Intent;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 475
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 477
    const-string v2, "SelectItemDisplay"

    const-string v3, "CoverOpen(), call the WeatherWidget"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "PACKAGE"

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    goto/16 :goto_0

    .line 469
    :cond_4
    const-string v2, "sview"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public checkNetwork()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 854
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 855
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 856
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 872
    :cond_0
    :goto_0
    return v4

    .line 860
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 861
    .local v2, "isWifiAvail":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 863
    if-nez v3, :cond_2

    move v4, v2

    .line 865
    goto :goto_0

    .line 868
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 872
    .local v1, "isMobileAvail":Z
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 522
    .local v3, "mColorUseAll":I
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 524
    .local v1, "mBackgroundColor":I
    if-ne v3, v7, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 526
    .local v2, "mColorRandom":I
    packed-switch v2, :pswitch_data_0

    .line 536
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 541
    .end local v2    # "mColorRandom":I
    :cond_0
    :goto_0
    const/16 v4, 0xef

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 543
    return v0

    .line 528
    .restart local v2    # "mColorRandom":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    sget v6, Lcom/android/settings/SelectItemDisplay;->DEFULT_WALLPAPER_BACKGROUND:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 530
    goto :goto_0

    .line 532
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    sget v6, Lcom/android/settings/SelectItemDisplay;->DEFULT_WALLPAPER_BACKGROUND:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 534
    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 822
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 823
    const/16 v1, 0x7d1

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d3

    if-ne p1, v1, :cond_3

    .line 824
    :cond_0
    const/4 v0, 0x0

    .line 825
    .local v0, "DoNotShow":Z
    if-eqz p3, :cond_1

    .line 826
    const-string v1, "DoNotShow"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 827
    :cond_1
    const-string v1, "SelectItemDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", donotshow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 830
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 831
    invoke-direct {p0, p1}, Lcom/android/settings/SelectItemDisplay;->saveSharedPreferences(I)V

    .line 832
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    .line 850
    .end local v0    # "DoNotShow":Z
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    .line 851
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->requestWindowFeature(I)Z

    .line 107
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v30, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/LayoutInflater;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    const/high16 v20, 0x4080000

    .line 112
    .local v20, "mFlag":I
    const/high16 v27, 0x400000

    .line 113
    .local v27, "secure_flags":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "automatic_unlock"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 114
    .local v9, "isAutoUnlock":I
    const-string v30, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/KeyguardManager;

    .line 115
    .local v23, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual/range {v23 .. v23}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v10

    .line 117
    .local v10, "isSecureLock":Z
    if-nez v10, :cond_0

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v9, v0, :cond_0

    .line 118
    or-int v20, v20, v27

    .line 120
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v31, v0

    or-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v30

    const-wide/16 v32, 0x1770

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v30

    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    const/16 v31, -0x1

    const/16 v32, -0x1

    invoke-virtual/range {v30 .. v32}, Landroid/view/Window;->setLayout(II)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Landroid/view/Window;->clearFlags(I)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    new-instance v31, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual/range {v30 .. v31}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 129
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v30, 0x0

    move/from16 v0, v30

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    new-instance v30, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    .line 134
    const v30, 0x7f04004c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->setContentView(I)V

    .line 136
    const v30, 0x7f1000d7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/settings/SelectItemDisplay$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$1;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    const v30, 0x7f1000d9

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/settings/SelectItemDisplay$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$2;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    const v30, 0x7f1000db

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/settings/SelectItemDisplay$3;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$3;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 173
    const v30, 0x7f1000dc

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/settings/SelectItemDisplay$4;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$4;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    const v30, 0x7f1000dd

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/settings/SelectItemDisplay$5;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$5;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    :cond_1
    const v30, 0x7f1000d3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    .line 200
    .local v15, "mCoverShorcutBG":Landroid/widget/FrameLayout;
    const v30, 0x7f1000d4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 201
    .local v18, "mDIMBG":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v30

    if-nez v30, :cond_10

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sview_color_wallpaper"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 204
    .local v4, "CurrentCoverBackgroundDbId":I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v4, v0, :cond_f

    .line 205
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    const/16 v30, 0x4d

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Landroid/graphics/Color;->argb(IIII)I

    move-result v30

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 291
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_2
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 293
    const-string v30, "set_shortcuts_mode"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    .line 294
    const-string v30, "lock_additional_weather"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    .line 295
    const-string v30, "lock_additional_steps"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    .line 296
    const-string v30, "WALKMATE_TMR"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    .line 303
    :goto_1
    const v30, 0x7f1000d5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 304
    .local v26, "mTitleName":Landroid/widget/TextView;
    const v30, 0x7f0a0fda

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 307
    const v30, 0x7f10009c

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 308
    .local v12, "mCoverCancel":Landroid/widget/ImageButton;
    new-instance v30, Lcom/android/settings/SelectItemDisplay$6;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$6;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const-string v30, "onCreate"

    const-string v31, "apply close button"

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v12    # "mCoverCancel":Landroid/widget/ImageButton;
    :goto_2
    const v30, 0x7f1000d6

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    .line 328
    .local v14, "mCoverSettings":Landroid/widget/ListView;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isPedometerSupported(Landroid/content/Context;)Z

    move-result v24

    .line 330
    .local v24, "mPedometerSupported":Z
    const/16 v21, 0x1

    .line 332
    .local v21, "mGlassMessageExist":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    const-string v31, "com.bst.airmessage"

    const/16 v32, 0x5

    invoke-virtual/range {v30 .. v32}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 338
    const/16 v21, 0x0

    .line 340
    :cond_3
    const/4 v8, 0x0

    .line 341
    .local v8, "hasShortcutCamera":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 342
    const/4 v8, 0x1

    .line 344
    :cond_4
    const/16 v28, 0x0

    .line 345
    .local v28, "styleClockEnabled":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isSViewStyleClockEnabled(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v28

    .line 352
    :cond_5
    const/4 v5, 0x0

    .line 353
    .local v5, "count":I
    if-eqz v8, :cond_6

    .line 354
    add-int/lit8 v5, v5, 0x1

    .line 355
    :cond_6
    if-nez v28, :cond_7

    .line 356
    add-int/lit8 v5, v5, 0x1

    .line 357
    :cond_7
    if-eqz v24, :cond_8

    if-nez v28, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    if-nez v30, :cond_8

    .line 358
    add-int/lit8 v5, v5, 0x1

    .line 359
    :cond_8
    if-eqz v21, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    if-nez v30, :cond_9

    .line 360
    add-int/lit8 v5, v5, 0x1

    .line 362
    :cond_9
    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 363
    .local v17, "mCoverTitleItem":[I
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 364
    .local v16, "mCoverSummaryItem":[Ljava/lang/String;
    new-array v13, v5, [Z

    .line 365
    .local v13, "mCoverCheckBoxVisible":[Z
    const/4 v5, 0x0

    .line 366
    if-eqz v8, :cond_a

    .line 367
    const v30, 0x7f0a1617

    aput v30, v17, v5

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a1617

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v16, v5

    .line 369
    const/16 v30, 0x1

    aput-boolean v30, v13, v5

    .line 370
    add-int/lit8 v5, v5, 0x1

    .line 372
    :cond_a
    if-nez v28, :cond_b

    .line 373
    const v30, 0x7f0a0fd5

    aput v30, v17, v5

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a0fd6

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v16, v5

    .line 375
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v30

    if-eqz v30, :cond_15

    .line 376
    const/16 v30, 0x0

    aput-boolean v30, v13, v5

    .line 380
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 382
    :cond_b
    if-eqz v24, :cond_c

    if-nez v28, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    if-nez v30, :cond_c

    .line 383
    const v30, 0x7f0a0fdd

    aput v30, v17, v5

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a0fde

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v16, v5

    .line 385
    const/16 v30, 0x1

    aput-boolean v30, v13, v5

    .line 386
    add-int/lit8 v5, v5, 0x1

    .line 388
    :cond_c
    if-eqz v21, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    if-nez v30, :cond_d

    .line 389
    const v30, 0x7f0a0fdf

    aput v30, v17, v5

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a0fdf

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v16, v5

    .line 391
    const/16 v30, 0x1

    aput-boolean v30, v13, v5

    .line 392
    add-int/lit8 v5, v5, 0x1

    .line 395
    :cond_d
    new-instance v30, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;-><init>(Lcom/android/settings/SelectItemDisplay;[I[Ljava/lang/String;[Z)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 397
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 399
    new-instance v25, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    .line 400
    .local v25, "mScover":Lcom/samsung/android/sdk/cover/Scover;
    const/16 v19, 0x1

    .line 402
    .local v19, "mDeviceSupportCoverSDK":Z
    :try_start_2
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 408
    :goto_5
    if-eqz v19, :cond_e

    .line 409
    new-instance v30, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 410
    new-instance v30, Lcom/android/settings/SelectItemDisplay$8;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$8;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 421
    :cond_e
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v30, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Lcom/android/settings/SelectItemDisplay;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    return-void

    .line 208
    .end local v5    # "count":I
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "hasShortcutCamera":Z
    .end local v13    # "mCoverCheckBoxVisible":[Z
    .end local v14    # "mCoverSettings":Landroid/widget/ListView;
    .end local v16    # "mCoverSummaryItem":[Ljava/lang/String;
    .end local v17    # "mCoverTitleItem":[I
    .end local v19    # "mDeviceSupportCoverSDK":Z
    .end local v21    # "mGlassMessageExist":Z
    .end local v24    # "mPedometerSupported":Z
    .end local v25    # "mScover":Lcom/samsung/android/sdk/cover/Scover;
    .end local v26    # "mTitleName":Landroid/widget/TextView;
    .end local v28    # "styleClockEnabled":Z
    .restart local v4    # "CurrentCoverBackgroundDbId":I
    :cond_f
    packed-switch v4, :pswitch_data_0

    .line 231
    const v30, 0x7f0205d9

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 234
    :goto_6
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Landroid/graphics/Color;->argb(IIII)I

    move-result v30

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 210
    :pswitch_0
    const v30, 0x7f0205da

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 213
    :pswitch_1
    const v30, 0x7f0205db

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 216
    :pswitch_2
    const v30, 0x7f0205dc

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 219
    :pswitch_3
    const v30, 0x7f0205dd

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 222
    :pswitch_4
    const v30, 0x7f0205de

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 225
    :pswitch_5
    const v30, 0x7f0205df

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 228
    :pswitch_6
    const v30, 0x7f0205e0

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 236
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v30

    if-eqz v30, :cond_12

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sview_color_wallpaper"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 239
    .restart local v4    # "CurrentCoverBackgroundDbId":I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v4, v0, :cond_11

    .line 240
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    const/16 v30, 0x4d

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Landroid/graphics/Color;->argb(IIII)I

    move-result v30

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 243
    :cond_11
    packed-switch v4, :pswitch_data_1

    .line 275
    const v30, 0x7f0205d9

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 278
    :goto_7
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Landroid/graphics/Color;->argb(IIII)I

    move-result v30

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 245
    :pswitch_7
    const v30, 0x7f0205d9

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 248
    :pswitch_8
    const v30, 0x7f0205da

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 251
    :pswitch_9
    const v30, 0x7f0205db

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 254
    :pswitch_a
    const v30, 0x7f0205dc

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 257
    :pswitch_b
    const v30, 0x7f0205dd

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 260
    :pswitch_c
    const v30, 0x7f0205de

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 263
    :pswitch_d
    const v30, 0x7f0205df

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 266
    :pswitch_e
    const v30, 0x7f0205e0

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 269
    :pswitch_f
    const v30, 0x7f0205e1

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 272
    :pswitch_10
    const v30, 0x7f0205e2

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 281
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getBackgroundColor()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sview_color_wallpaper"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    if-eqz v30, :cond_13

    const/16 v22, 0x1

    .line 284
    .local v22, "mIsWallpaper":Z
    :goto_8
    if-eqz v22, :cond_2

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    const/16 v30, 0x4d

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Landroid/graphics/Color;->argb(IIII)I

    move-result v30

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 282
    .end local v22    # "mIsWallpaper":Z
    :cond_13
    const/16 v22, 0x0

    goto :goto_8

    .line 298
    :cond_14
    const-string v30, "weather_cover"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    .line 299
    const-string v30, "walk_mate"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    .line 300
    const-string v30, "WALKMATE"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mSHealthItentExtra_type:Ljava/lang/String;

    goto/16 :goto_1

    .line 315
    .restart local v26    # "mTitleName":Landroid/widget/TextView;
    :catch_0
    move-exception v6

    .line 316
    .local v6, "e":Ljava/lang/Exception;
    const v30, 0x7f10009c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 317
    .local v29, "upbutton":Landroid/widget/LinearLayout;
    new-instance v30, Lcom/android/settings/SelectItemDisplay$7;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$7;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const-string v30, "onCreate"

    const-string v31, "apply up button"

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 333
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v29    # "upbutton":Landroid/widget/LinearLayout;
    .restart local v14    # "mCoverSettings":Landroid/widget/ListView;
    .restart local v21    # "mGlassMessageExist":Z
    .restart local v24    # "mPedometerSupported":Z
    :catch_1
    move-exception v6

    .line 334
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 378
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "count":I
    .restart local v8    # "hasShortcutCamera":Z
    .restart local v13    # "mCoverCheckBoxVisible":[Z
    .restart local v16    # "mCoverSummaryItem":[Ljava/lang/String;
    .restart local v17    # "mCoverTitleItem":[I
    .restart local v28    # "styleClockEnabled":Z
    :cond_15
    const/16 v30, 0x1

    aput-boolean v30, v13, v5

    goto/16 :goto_4

    .line 403
    .restart local v19    # "mDeviceSupportCoverSDK":Z
    .restart local v25    # "mScover":Lcom/samsung/android/sdk/cover/Scover;
    :catch_2
    move-exception v6

    .line 404
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const/16 v19, 0x0

    .line 407
    goto/16 :goto_5

    .line 405
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v6

    .line 406
    .local v6, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 208
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 517
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 632
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 634
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mUseLocationPopup:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 636
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherOpenCoverPopup:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    :cond_1
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 638
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherToShowPopup:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    :cond_2
    const/4 v1, 0x0

    .line 641
    .local v1, "selectedItem":I
    const/4 v3, 0x0

    .line 642
    .local v3, "titleId":I
    const/4 v2, 0x0

    .line 643
    .local v2, "state":Z
    const-wide/32 v4, 0x7f0a1617

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v6, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 644
    const/16 v1, 0x7d1

    .line 645
    const v3, 0x7f0a1617

    .line 646
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay;->mShortcutCameraDBKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 648
    :goto_0
    const-string v4, "SelectItemDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, Shortcut Camera - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_1
    const/16 v4, 0x7d4

    if-ne v1, v4, :cond_a

    .line 670
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    .line 700
    :goto_2
    return-void

    .line 646
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 649
    :cond_4
    const-wide/32 v4, 0x7f0a0fd5

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v6, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherDBKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    .line 651
    :goto_3
    const v3, 0x7f0a0fd5

    .line 652
    const/16 v1, 0x7d2

    .line 653
    const-string v4, "SelectItemDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, weather - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 650
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 655
    :cond_6
    const-wide/32 v4, 0x7f0a0fdf

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v6, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_message"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    .line 657
    :goto_4
    const v3, 0x7f0a0fdf

    .line 658
    const/16 v1, 0x7d4

    .line 659
    const-string v4, "SelectItemDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, air message - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 656
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 662
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay;->mPedometerDBKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v2, 0x1

    .line 663
    :goto_5
    const v3, 0x7f0a0fdd

    .line 664
    const/16 v1, 0x7d3

    .line 665
    const-string v4, "SelectItemDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, Pedometer - state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 662
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 675
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x7d2

    if-ne v1, v4, :cond_b

    .line 676
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    goto/16 :goto_2

    .line 680
    :cond_b
    invoke-static {p0}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 681
    const/16 v4, 0x7d2

    if-ne v1, v4, :cond_c

    .line 682
    iget-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    if-nez v4, :cond_c

    if-nez v2, :cond_c

    .line 683
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    goto/16 :goto_2

    .line 687
    :cond_c
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->checkGuidePopupAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 688
    const-string v4, "SelectItemDisplay"

    const-string v5, "onItemClick, SViewCoverPopup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    .line 690
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 691
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.SViewCoverPopup"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v5, "enable"

    if-nez v2, :cond_d

    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 693
    const-string v4, "titleId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SelectItemDisplay;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 692
    :cond_d
    const/4 v4, 0x0

    goto :goto_6

    .line 699
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/settings/SelectItemDisplay;->clickItem(I)V

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 507
    const-string v0, "SelectItemDisplay"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 510
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 488
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 490
    invoke-static {p0}, Lcom/android/settings/Utils;->hasSViewCoverWeather2014(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    invoke-static {p0}, Lcom/android/settings/SelectItemDisplay;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SelectItemDisplay;->mWeatherAgreed:Z

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 497
    .local v0, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-nez v0, :cond_4

    .line 502
    :cond_2
    :goto_1
    return-void

    .line 491
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 500
    .restart local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->CoverOpen()V

    goto :goto_1
.end method
