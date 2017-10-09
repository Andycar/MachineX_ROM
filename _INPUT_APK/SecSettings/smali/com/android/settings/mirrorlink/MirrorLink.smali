.class public Lcom/android/settings/mirrorlink/MirrorLink;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;,
        Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;,
        Lcom/android/settings/mirrorlink/MirrorLink$MlApp;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFromSearch:Z

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mListDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/mirrorlink/MirrorLink$MlApp;",
            ">;"
        }
    .end annotation
.end field

.field private mMassStorageActive:Z

.field private mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

.field private mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

.field private mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

.field private mPkgMngr:Landroid/content/pm/PackageManager;

.field private mProvisionApp:[Ljava/lang/String;

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mTargetPreferece:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetheringEnabled:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

.field private mUsbTetherEnabling:Z

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    iput-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    .line 105
    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTetherEnabling:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mIsTablet:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mIsLightTheme:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    .line 121
    iput-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTargetPreferece:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/mirrorlink/MirrorLink;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateMirrorLinkApplications()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/mirrorlink/MirrorLink;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/mirrorlink/MirrorLink;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLink;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    return p1
.end method

.method private doUnbindFromService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    if-eqz v1, :cond_0

    .line 328
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MirrorLink: doUnbindFromService"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .line 336
    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    .line 338
    :cond_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setNcmTethering(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 745
    const-string v7, "usb"

    invoke-virtual {p0, v7}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 748
    .local v4, "um":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 749
    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 751
    invoke-virtual {v4, v6}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 755
    :cond_0
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 756
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    invoke-virtual {v7, v6}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 758
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 759
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 760
    .local v3, "outStream":Ljava/io/PrintWriter;
    if-eqz p1, :cond_2

    .line 761
    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    :goto_0
    if-eqz v3, :cond_1

    .line 767
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setNcmTethering(Z)I

    move-result v7

    if-eqz v7, :cond_3

    .line 773
    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    const v6, 0x7f0a0841

    invoke-virtual {v5, v6}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    .line 779
    :goto_2
    return-void

    .line 763
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :cond_2
    :try_start_1
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 768
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v1

    .line 769
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "MirrorLink FileNotFoundException"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 778
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "usb_tethering_enabled"

    iget-object v9, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    invoke-virtual {v9}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isChecked()Z

    move-result v9

    if-ne v9, v5, :cond_4

    :goto_3
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 698
    iput p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/mirrorlink/MirrorLink;->startActivityForResult(Landroid/content/Intent;I)V

    .line 711
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 742
    :goto_0
    return-void

    .line 736
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMirrorLinkApplications()V
    .locals 19

    .prologue
    .line 428
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v10, "mirrorLinkAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v9, 0x0

    .line 432
    .local v9, "mPm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 433
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_1

    .line 434
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 435
    if-nez v9, :cond_2

    .line 436
    const-string v14, "MirrorLink"

    const-string v15, "updateMirrorLinkApplications() getPackageManager returns null"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string v14, "MirrorLink"

    const-string v15, "updateMirrorLinkApplications() getActivity() returns null"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_2
    const/4 v4, 0x0

    .line 446
    .local v4, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v14, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v14}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getAllAppList()Ljava/util/List;

    move-result-object v4

    .line 448
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v15, v14}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setAppExtists(Z)V

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :cond_3
    :goto_2
    if-nez v4, :cond_5

    .line 456
    const-string v14, "MirrorLink"

    const-string v15, "AppList is null"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_0

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 448
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 451
    :catch_0
    move-exception v7

    .line 452
    .local v7, "e":Landroid/os/RemoteException;
    const-string v14, "MirrorLink"

    const-string v15, "Exception while receiving all Application List through AIDl"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 461
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-nez v14, :cond_8

    .line 462
    new-instance v14, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    const-string v15, "mirror_link_applications"

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    const v15, 0x7f0a1dc5

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a1dc2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 471
    :goto_3
    const/4 v5, 0x0

    .line 472
    .local v5, "appListInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 473
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No of apps: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_6

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 479
    .local v13, "pre":Landroid/preference/PreferenceScreen;
    const v14, 0x7f0a075b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 481
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 484
    .end local v13    # "pre":Landroid/preference/PreferenceScreen;
    :cond_6
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 485
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In For Loop: With tthe Index [i] as :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 487
    .local v12, "packName":Ljava/lang/String;
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In For Loop : Package name for the index ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v14, :cond_7

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v14, v12}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 491
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In For Loop: Bundle Received for the package Name"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-eqz v5, :cond_0

    .line 496
    new-instance v11, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;

    const-string v14, "pkgName"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;-><init>(Ljava/lang/String;)V

    .line 497
    .local v11, "mlapp":Lcom/android/settings/mirrorlink/MirrorLink$MlApp;
    const-string v14, "EntitiesName"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setEntityName(Ljava/lang/String;)V

    .line 498
    const-string v14, "AppStatus"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setStatus(Ljava/lang/String;)V

    .line 499
    const-string v14, "VALID_DATE"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setValidDate(Ljava/lang/String;)V

    .line 500
    const-string v14, "RESTRICTED"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setRestricted(Ljava/lang/String;)V

    .line 501
    const-string v14, "NONRESTRICTED"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setNonRestricted(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v14, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    .line 508
    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 509
    .local v3, "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v14, v8}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIndex(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v14, v3}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 511
    const/4 v14, 0x0

    invoke-virtual {v9, v12, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 512
    .local v2, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setKey(Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v11}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->getStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setValidCheck(Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    new-instance v15, Lcom/android/settings/mirrorlink/MirrorLink$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/mirrorlink/MirrorLink$2;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    invoke-virtual {v14, v15}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_7

    .line 550
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 484
    .end local v2    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "mlapp":Lcom/android/settings/mirrorlink/MirrorLink$MlApp;
    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 467
    .end local v5    # "appListInfo":Landroid/os/Bundle;
    .end local v8    # "i":I
    .end local v12    # "packName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_3

    .line 553
    .restart local v5    # "appListInfo":Landroid/os/Bundle;
    .restart local v8    # "i":I
    .restart local v12    # "packName":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 554
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v14, "MirrorLink"

    const-string v15, "Exception while receiving the information of the Given PackagName through AIDl"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 556
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    .line 557
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "MirrorLink"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadAppIcon : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 563
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 565
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 572
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/mirrorlink/MirrorLink;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 23
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 577
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 578
    .local v6, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v15, 0x1

    .line 579
    .local v15, "usbAvailable":Z
    :goto_0
    const/16 v16, 0x0

    .line 580
    .local v16, "usbError":I
    move-object/from16 v4, p1

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v12, v4, v8

    .line 581
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v10, v5

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v10, :cond_2

    aget-object v11, v5, v7

    .line 582
    .local v11, "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 583
    if-nez v16, :cond_0

    .line 584
    invoke-virtual {v6, v12}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    .line 581
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 578
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "regex":Ljava/lang/String;
    .end local v12    # "s":Ljava/lang/String;
    .end local v15    # "usbAvailable":Z
    .end local v16    # "usbError":I
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 580
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "s":Ljava/lang/String;
    .restart local v15    # "usbAvailable":Z
    .restart local v16    # "usbError":I
    :cond_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_1

    .line 589
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    .line 590
    .local v18, "usbTethered":Z
    move-object/from16 v4, p2

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v9, :cond_9

    aget-object v12, v4, v8

    .line 591
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v10, v5

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v10, :cond_8

    aget-object v11, v5, v7

    .line 592
    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "ncm"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 593
    const/16 v18, 0x1

    .line 591
    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 594
    :cond_5
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "usb"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    :cond_6
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "rndis"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 595
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 597
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a0845

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    goto :goto_5

    .line 590
    .end local v11    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_3

    .line 602
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    .line 603
    .local v17, "usbErrored":Z
    move-object/from16 v4, p3

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .restart local v8    # "i$":I
    :goto_6
    if-ge v8, v9, :cond_c

    aget-object v12, v4, v8

    .line 604
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v10, v5

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_7
    if-ge v7, v10, :cond_b

    aget-object v11, v5, v7

    .line 605
    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v17, 0x1

    .line 604
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 603
    .end local v11    # "regex":Ljava/lang/String;
    :cond_b
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_6

    .line 611
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_c
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 612
    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v18, :cond_13

    .line 613
    const-string v19, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 614
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a083c

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 631
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a083c

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 634
    const-string v19, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 635
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 636
    const v19, 0x7f0a1dcf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f0a1dc2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "activeSubtext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 686
    .end local v3    # "activeSubtext":Ljava/lang/String;
    :cond_e
    :goto_9
    return-void

    .line 620
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "sidesync_usb_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 621
    .local v13, "sidesyncDB":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_10

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a0846

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 626
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a083c

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 642
    .end local v13    # "sidesyncDB":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "sidesync_usb_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 643
    .restart local v13    # "sidesyncDB":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_12

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a0846

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 648
    :cond_12
    const v19, 0x7f0a1dcf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f0a1dc2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 649
    .restart local v3    # "activeSubtext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_9

    .line 654
    .end local v3    # "activeSubtext":Ljava/lang/String;
    .end local v13    # "sidesyncDB":I
    :cond_13
    if-eqz v15, :cond_18

    .line 655
    if-nez v16, :cond_17

    .line 656
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a0846

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    .line 661
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 666
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    sget v19, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTargetPreferece:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTargetPreferece:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 670
    :cond_16
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    goto/16 :goto_9

    .line 659
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a0841

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    goto :goto_a

    .line 673
    :cond_18
    if-eqz v17, :cond_19

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a0841

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_9

    .line 677
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a083e

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_9

    .line 682
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a083f

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setSummary(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setEnabled(Z)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_9
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 715
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/mirrorlink/MirrorLink;->setHasOptionsMenu(Z)V

    .line 716
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 717
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 720
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 721
    if-nez p1, :cond_0

    .line 722
    if-ne p2, v2, :cond_1

    .line 723
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->startTethering()V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->setChecked(Z)V

    .line 728
    iput v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const v3, 0x7f070075

    invoke-virtual {p0, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->addPreferencesFromResource(I)V

    .line 200
    invoke-virtual {p0, v5}, Lcom/android/settings/mirrorlink/MirrorLink;->setHasOptionsMenu(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    .line 203
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    .line 204
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mPkgMngr:Landroid/content/pm/PackageManager;

    .line 206
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mIsTablet:Z

    .line 207
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mIsLightTheme:Z

    .line 209
    const-string v3, "ncm_usb_tether_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    .line 211
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 213
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 217
    .local v2, "usbAvailable":Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1070013

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mProvisionApp:[Ljava/lang/String;

    .line 223
    new-instance v3, Lcom/android/settings/mirrorlink/MirrorLink$1;

    invoke-direct {v3, p0}, Lcom/android/settings/mirrorlink/MirrorLink$1;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "bindToML":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.mirrorlink"

    const-string v7, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_3

    .line 261
    const-string v3, "MirrorLink"

    const-string v4, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_1
    return-void

    .end local v0    # "bindToML":Landroid/content/Intent;
    .end local v2    # "usbAvailable":Z
    :cond_2
    move v2, v5

    .line 215
    goto :goto_0

    .line 264
    .restart local v0    # "bindToML":Landroid/content/Intent;
    .restart local v2    # "usbAvailable":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 275
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 422
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLink Settings: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    .line 424
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 425
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 283
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v1}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->performRevocation()V

    .line 285
    const-string v1, "MirrorLink"

    const-string v2, "Manual Revocation excuted"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 367
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    .line 368
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 783
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 785
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 789
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-boolean v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mOpenDetailMenu:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    if-eqz v7, :cond_1

    .line 790
    :cond_0
    sget v7, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 791
    sget v7, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    if-ne v7, v5, :cond_3

    move v4, v5

    .line 792
    .local v4, "value":Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    if-ne p2, v7, :cond_1

    move-object v0, p2

    .line 793
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 794
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 795
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 802
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v4    # "value":Z
    :cond_1
    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    if-ne p2, v7, :cond_2

    .line 803
    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    invoke-virtual {v7}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isChecked()Z

    move-result v2

    .line 804
    .local v2, "newState":Z
    if-eqz v2, :cond_4

    .line 805
    invoke-direct {p0, v5}, Lcom/android/settings/mirrorlink/MirrorLink;->startProvisioningIfNecessary(I)V

    .line 809
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "usb_tethering_enabled"

    if-ne v2, v5, :cond_5

    :goto_2
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 811
    .end local v2    # "newState":Z
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    :cond_3
    move v4, v6

    .line 791
    goto :goto_0

    .line 807
    .restart local v2    # "newState":Z
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    goto :goto_1

    :cond_5
    move v5, v6

    .line 809
    goto :goto_2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 373
    iget-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mOpenDetailMenu:Z

    iput-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    .line 374
    iput-boolean v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mOpenDetailMenu:Z

    .line 375
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 376
    iget-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v6, :cond_1

    .line 377
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "MirrorLink : Binding to Tms"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v1, "bindToML":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.app.mirrorlink"

    const-string v8, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_0

    .line 381
    const-string v4, "MirrorLink"

    const-string v5, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "bindToML":Landroid/content/Intent;
    :goto_0
    return-void

    .line 384
    .restart local v1    # "bindToML":Landroid/content/Intent;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v1, v7, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 388
    .end local v1    # "bindToML":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V

    .line 390
    iget-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    iput-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mOpenDetailMenu:Z

    .line 391
    iget-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mOpenDetailMenu:Z

    if-eqz v6, :cond_2

    sget v6, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 394
    .local v2, "extra_bundle":Landroid/os/Bundle;
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "targetKey":Ljava/lang/String;
    sget v6, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    if-ne v6, v4, :cond_4

    move v0, v4

    .line 396
    .local v0, "bValue":Z
    :goto_1
    const-string v6, "ncm_usb_tether_settings"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 397
    iget-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTargetPreferece:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    .line 400
    .end local v0    # "bValue":Z
    .end local v2    # "extra_bundle":Landroid/os/Bundle;
    .end local v3    # "targetKey":Ljava/lang/String;
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    if-eqz v6, :cond_3

    .line 401
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 405
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "usb_tethering_enabled"

    iget-object v8, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    invoke-virtual {v8}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isChecked()Z

    move-result v8

    if-ne v8, v4, :cond_5

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .restart local v2    # "extra_bundle":Landroid/os/Bundle;
    .restart local v3    # "targetKey":Ljava/lang/String;
    :cond_4
    move v0, v5

    .line 395
    goto :goto_1

    .end local v2    # "extra_bundle":Landroid/os/Bundle;
    .end local v3    # "targetKey":Ljava/lang/String;
    :cond_5
    move v4, v5

    .line 405
    goto :goto_2
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 342
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 346
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    .line 347
    new-instance v3, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$1;)V

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 351
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 352
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 363
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 412
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 414
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_tethering_enabled"

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/settings/mirrorlink/UsbCheckBoxPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
