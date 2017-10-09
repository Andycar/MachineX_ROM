.class public Lcom/samsung/appdisabler/ImsiItemChecker;
.super Ljava/lang/Thread;
.source "ImsiItemChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;,
        Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;,
        Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    }
.end annotation


# static fields
.field private static final APK_VERSION_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.appdisabler.app"

.field protected static final CUSTOM_XML_FILE:Ljava/lang/String; = "/system/csc/appDisablerList.xml"

.field protected static final ERROR_HEADER:Ljava/lang/String; = "There is critical error in /system/csc/appDisablerList.xml configuration file, please check bellow message and fix before releasing PDA/CSC!\n\n\n"

.field private static final MSG_CHECK_FINISH_LOOPER:I = 0x70

.field private static final MSG_CHECK_TIMEOUT:I = 0x6f

.field private static final MSG_SHOW_DIALOG:I = 0xc9


# instance fields
.field private CHECK_DELAY_IN_MS:I

.field private mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

.field private mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

.field private mContext:Landroid/content/Context;

.field private mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

.field private mCurrentImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/appdisabler/ImsiItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNetworkNumeric:Ljava/lang/String;

.field private mIsImsiNumericBase:Z

.field private mIsNetworkNumeric:Z

.field private mIsSimNumeric:Z

.field private mIsSimSpn:Z

.field private mShowPackage:Z

.field private mSimImsiNumericBase:Ljava/lang/String;

.field private mSimNumeric:Ljava/lang/String;

.field private mSimSpn:Ljava/lang/String;

.field private mStartTimeInMiliseconds:J

.field private mTimeoutOffset:J

.field private packageManager:Landroid/content/pm/PackageManager;

.field private phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingObject"    # Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    .line 90
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->CHECK_DELAY_IN_MS:I

    .line 114
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    .line 117
    iput-object p2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    .line 118
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->hideAppAfterTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/appdisabler/ImsiItemChecker;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/appdisabler/ImsiItemChecker;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->receiveNetworkNumericFromDevice()V

    return-void
.end method

.method private changeAppVisibility(Ljava/util/Set;Z)V
    .registers 13
    .param p2, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 497
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 498
    .local v3, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeAppVisibility, package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " show: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 499
    new-instance v4, Lcom/samsung/appdisabler/ShortcutHandler;

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/appdisabler/ShortcutHandler;-><init>(Landroid/content/Context;)V

    .line 501
    .local v4, "shortcutHandler":Lcom/samsung/appdisabler/ShortcutHandler;
    :try_start_39
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 502
    .local v0, "currentState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state of application: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 504
    if-eqz p2, :cond_8f

    .line 505
    if-ne v0, v9, :cond_6

    .line 506
    const-string v5, "Enabling application"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 507
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 509
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 511
    invoke-virtual {v4, v3}, Lcom/samsung/appdisabler/ShortcutHandler;->addShortcut(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_6f} :catch_70

    goto :goto_6

    .line 522
    .end local v0    # "currentState":I
    :catch_70
    move-exception v1

    .line 524
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException, package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 514
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "currentState":I
    :cond_8f
    if-eq v0, v8, :cond_93

    if-nez v0, :cond_6

    .line 516
    :cond_93
    :try_start_93
    const-string v5, "Disabling application"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 517
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 519
    invoke-virtual {v4, v3}, Lcom/samsung/appdisabler/ShortcutHandler;->uninstallShort(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_a2} :catch_70

    goto/16 :goto_6

    .line 528
    .end local v0    # "currentState":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "shortcutHandler":Lcom/samsung/appdisabler/ShortcutHandler;
    :cond_a4
    const-string v5, "-------------- End checking imsi item --------------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private checkSimState()V
    .registers 5

    .prologue
    .line 449
    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 450
    .local v0, "simState":I
    packed-switch v0, :pswitch_data_40

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported SIM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 481
    :goto_20
    return-void

    .line 453
    :pswitch_21
    const-string v1, "SIM_STATE_READY"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    .line 455
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->receiveInfoFromSim()V

    goto :goto_20

    .line 462
    :pswitch_2d
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    .line 469
    :pswitch_30
    const-string v1, "SIM_STATE_PIN_REQUIRED || SIM_STATE_PUK_REQUIRED"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_20

    .line 473
    :pswitch_36
    const-string v1, "SIM_STATE_ABSENT"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 475
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    goto :goto_20

    .line 450
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_36
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_21
    .end packed-switch
.end method

.method private displayImsiItems()V
    .registers 9

    .prologue
    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout_in_seconds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    if-eqz v2, :cond_3a

    .line 595
    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/appdisabler/ImsiItem;

    .line 596
    .local v1, "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    invoke-virtual {v1}, Lcom/samsung/appdisabler/ImsiItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_26

    .line 599
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    :cond_3a
    const-string v2, "imsiList = null"

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 601
    :cond_3f
    return-void
.end method

.method private hideAppAfterTimeout()V
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItem;->isHideAfterTimeout()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 439
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    .line 443
    :goto_12
    return-void

    .line 441
    :cond_13
    const-string v0, "-------------- End checking imsi item --------------"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private isDualSim()Z
    .registers 5

    .prologue
    .line 661
    const-string/jumbo v0, "none"

    .line 663
    .local v0, "defValue":Ljava/lang/String;
    const-string v2, "gsm.sim.state_1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "simState":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 667
    const/4 v2, 0x0

    .line 669
    :goto_27
    return v2

    :cond_28
    const/4 v2, 0x1

    goto :goto_27
.end method

.method private isNetworkDataValidate()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 302
    iget-boolean v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    if-eqz v4, :cond_4b

    .line 304
    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v4}, Lcom/samsung/appdisabler/ImsiItem;->getNetworkNumeric()Ljava/util/List;

    move-result-object v2

    .line 305
    .local v2, "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "networkNumericFromXml":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network numeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " equal XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". PASS!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 314
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "networkNumericFromXml":Ljava/lang/String;
    .end local v2    # "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4b
    :goto_4b
    return v3

    .line 311
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network numeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " different than XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". FAIL!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 312
    const/4 v3, 0x0

    goto :goto_4b
.end method

.method private isSimDataValidate()Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 254
    const/4 v6, 0x1

    .line 256
    .local v6, "validationResult":Z
    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    if-eqz v8, :cond_79

    .line 257
    const/4 v6, 0x0

    .line 258
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getSimNumeric()Ljava/util/List;

    move-result-object v3

    .line 259
    .local v3, "simNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    .local v2, "simNumericFromXml":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM numeric: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " equal XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". PASS!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 262
    const/4 v6, 0x1

    .line 266
    .end local v2    # "simNumericFromXml":Ljava/lang/String;
    :cond_4e
    if-nez v6, :cond_79

    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM numeric: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 293
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "simNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_78
    return v7

    .line 271
    :cond_79
    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    if-eqz v8, :cond_b6

    .line 272
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getImsiNumericBase()Ljava/util/List;

    move-result-object v1

    .line 273
    .local v1, "mImsiNumericBaseFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/appdisabler/ImsiNumeric;>;"
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/samsung/appdisabler/ImsiItem;->looseCompare(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b6

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Imsi numeric base: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto :goto_78

    .line 278
    .end local v1    # "mImsiNumericBaseFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/appdisabler/ImsiNumeric;>;"
    :cond_b6
    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    if-eqz v8, :cond_12e

    .line 279
    const/4 v6, 0x0

    .line 280
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getSimSpn()Ljava/util/List;

    move-result-object v5

    .line 281
    .local v5, "simSpnListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_c5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 282
    .local v4, "simSpnFromXml":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sim spn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " equal XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". PASS!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 284
    const/4 v6, 0x1

    .line 288
    .end local v4    # "simSpnFromXml":Ljava/lang/String;
    :cond_102
    if-nez v6, :cond_12e

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sim spn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 293
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "simSpnListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12e
    const/4 v7, 0x1

    goto/16 :goto_78
.end method

.method private isTimeout()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-wide v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    .line 430
    :cond_9
    :goto_9
    return v0

    .line 427
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    .line 428
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private isWiFiOnly()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 680
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 682
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 683
    .local v1, "mobileNetworkSupported":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileNetworkSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 684
    if-eqz v1, :cond_28

    .line 688
    :goto_27
    return v2

    :cond_28
    const/4 v2, 0x1

    goto :goto_27
.end method

.method private parseXml()Z
    .registers 13

    .prologue
    .line 535
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 537
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    new-instance v7, Lcom/samsung/appdisabler/XmlItemHandler;

    invoke-direct {v7}, Lcom/samsung/appdisabler/XmlItemHandler;-><init>()V

    .line 539
    .local v7, "xmlHandler":Lcom/samsung/appdisabler/XmlItemHandler;
    new-instance v9, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v9}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 540
    const/4 v2, 0x0

    .line 542
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_12
    const-string/jumbo v9, "parseXml"

    invoke-static {v9}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 543
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    const-string v10, "/system/csc/appDisablerList.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_24} :catch_64
    .catch Lorg/xml/sax/SAXException; {:try_start_12 .. :try_end_24} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_24} :catch_98
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_b2
    .catchall {:try_start_12 .. :try_end_24} :catchall_cc

    .line 544
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_24
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 545
    .local v5, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 546
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 547
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 548
    .local v1, "inStream":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 549
    invoke-interface {v8, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 552
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getTimeoutInSeconds()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    .line 553
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getImsiList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;
    :try_end_49
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_24 .. :try_end_49} :catch_ec
    .catch Lorg/xml/sax/SAXException; {:try_start_24 .. :try_end_49} :catch_e9
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_49} :catch_e6
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_49} :catch_e3
    .catchall {:try_start_24 .. :try_end_49} :catchall_e0

    .line 567
    if-eqz v3, :cond_f0

    .line 569
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_5c

    move-object v2, v3

    .line 577
    .end local v1    # "inStream":Lorg/xml/sax/InputSource;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_4f
    :goto_4f
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getValidationErrors()Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "parsingError":Ljava/lang/String;
    if-nez v4, :cond_da

    .line 579
    const-string v9, "Parsing XML ended successfully!"

    invoke-static {v9}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 580
    const/4 v9, 0x1

    .line 586
    :goto_5b
    return v9

    .line 570
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "parsingError":Ljava/lang/String;
    .restart local v1    # "inStream":Lorg/xml/sax/InputSource;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_5c
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 572
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_4f

    .line 554
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inStream":Lorg/xml/sax/InputSource;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_64
    move-exception v0

    .line 555
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_65
    :try_start_65
    const-string v9, "ParserConfigurationException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_cc

    .line 567
    if-eqz v2, :cond_4f

    .line 569
    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_4f

    .line 570
    :catch_77
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 557
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7e
    move-exception v0

    .line 558
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_7f
    :try_start_7f
    const-string v9, "SAXException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_cc

    .line 567
    if-eqz v2, :cond_4f

    .line 569
    :try_start_8d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_4f

    .line 570
    :catch_91
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 560
    .end local v0    # "e":Ljava/io/IOException;
    :catch_98
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_99
    :try_start_99
    const-string v9, "FileNotFoundException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_cc

    .line 567
    if-eqz v2, :cond_4f

    .line 569
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_4f

    .line 570
    :catch_ab
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 563
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b2
    move-exception v0

    .line 564
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_b3
    :try_start_b3
    const-string v9, "IOException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_b3 .. :try_end_bf} :catchall_cc

    .line 567
    if-eqz v2, :cond_4f

    .line 569
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_4f

    .line 570
    :catch_c5
    move-exception v0

    .line 571
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 567
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_cc
    move-exception v9

    :goto_cd
    if-eqz v2, :cond_d2

    .line 569
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    .line 572
    :cond_d2
    :goto_d2
    throw v9

    .line 570
    :catch_d3
    move-exception v0

    .line 571
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "close inputStream"

    invoke-static {v10, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d2

    .line 584
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "parsingError":Ljava/lang/String;
    :cond_da
    invoke-direct {p0, v4}, Lcom/samsung/appdisabler/ImsiItemChecker;->sendErrorMsg(Ljava/lang/String;)V

    .line 586
    const/4 v9, 0x0

    goto/16 :goto_5b

    .line 567
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "parsingError":Ljava/lang/String;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_e0
    move-exception v9

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_cd

    .line 563
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_e3
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_b3

    .line 560
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_e6
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_99

    .line 557
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_e9
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_7f

    .line 554
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_ec
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_65

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inStream":Lorg/xml/sax/InputSource;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :cond_f0
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_4f
.end method

.method private receiveInfoFromSim()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 363
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    .line 366
    :cond_10
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 367
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    .line 370
    :cond_1c
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_61

    .line 373
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data from SIM do not loaded yet: ImsiNumericBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device SimNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 380
    :goto_60
    return-void

    .line 378
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device ImsiNumericBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device SimNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_60
.end method

.method private receiveNetworkNumericFromDevice()V
    .registers 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    if-eqz v0, :cond_a

    .line 387
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->simNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 391
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong network numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 402
    :goto_2e
    return-void

    .line 397
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device network numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 401
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendEmptyMessage(I)Z

    goto :goto_2e
.end method

.method private sendErrorMsg(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMsgText"    # Ljava/lang/String;

    .prologue
    .line 611
    const-string v1, "There is critical error in /system/csc/appDisablerList.xml configuration file, please check bellow message and fix before releasing PDA/CSC!\n\n\n"

    .line 612
    .local v1, "msgToShow":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 614
    .local v0, "errorMsg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 615
    const/16 v2, 0xc9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 616
    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 617
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 618
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 629
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 630
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 631
    .local v1, "dialog":Landroid/app/AlertDialog;
    const-string/jumbo v3, "show error dialog"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 634
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 635
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 636
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 637
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 638
    const/4 v3, -0x1

    const-string v4, "OK"

    new-instance v5, Lcom/samsung/appdisabler/ImsiItemChecker$1;

    invoke-direct {v5, p0}, Lcom/samsung/appdisabler/ImsiItemChecker$1;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 647
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 650
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 651
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 652
    return-void
.end method

.method private startTimeMeasuring()V
    .registers 5

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 410
    const-string v0, "Measuring time started"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    .line 413
    :cond_13
    return-void
.end method


# virtual methods
.method public isApkVersionInstalled()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 699
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 700
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 701
    .local v1, "listOfApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 702
    .local v3, "tempApp":Landroid/content/pm/ApplicationInfo;
    const-string v5, "com.samsung.appdisabler.app"

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 703
    const/4 v4, 0x1

    .line 707
    .end local v3    # "tempApp":Landroid/content/pm/ApplicationInfo;
    :cond_26
    return v4
.end method

.method public run()V
    .registers 15

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 129
    new-instance v5, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V

    iput-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    .line 131
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isDualSim()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isWiFiOnly()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 133
    :cond_17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 134
    .local v2, "errorMsg":Landroid/os/Message;
    const-string v1, "SamsungAppDisabler currently is not supporting dual SIM or WiFi only devices, delete /system/csc/appDisablerList.xml from CSC"

    .line 135
    .local v1, "error":Ljava/lang/String;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    const/16 v5, 0xc9

    iput v5, v2, Landroid/os/Message;->what:I

    .line 137
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-virtual {v5, v2}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 139
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v5}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    .line 246
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errorMsg":Landroid/os/Message;
    :goto_30
    return-void

    .line 143
    :cond_31
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->parseXml()Z

    move-result v5

    if-nez v5, :cond_49

    .line 145
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v5}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_30

    .line 241
    :catch_3d
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v5}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    .line 244
    const-string v5, "Run exception"

    invoke-static {v5, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->displayImsiItems()V

    .line 150
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_182

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/appdisabler/ImsiItem;

    .line 151
    .local v4, "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    .line 152
    iput-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    .line 153
    const-string v5, "------------- Start checking imsi item -------------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 154
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->isForceApplicationTurnOff()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 158
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto :goto_52

    .line 162
    :cond_84
    const-string v5, "------------- Validating SIM data -------------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 164
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getSimNumeric()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_fc

    const/4 v5, 0x1

    :goto_96
    iput-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    .line 165
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getImsiNumericBase()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_fe

    const/4 v5, 0x1

    :goto_a5
    iput-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    .line 166
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getSimSpn()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_100

    const/4 v5, 0x1

    :goto_b4
    iput-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    .line 177
    :goto_b6
    iget-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    if-eqz v5, :cond_c2

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d2

    :cond_c2
    iget-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-eqz v5, :cond_d2

    :cond_ca
    iget-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    if-eqz v5, :cond_e0

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    if-nez v5, :cond_e0

    .line 179
    :cond_d2
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isTimeout()Z

    move-result v5

    if-eqz v5, :cond_102

    .line 180
    const-string v5, "Waiting time elapsed"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->hideAppAfterTimeout()V

    .line 194
    :cond_e0
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isTimeout()Z

    move-result v5

    if-nez v5, :cond_52

    .line 198
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isSimDataValidate()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    .line 201
    iget-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    if-nez v5, :cond_115

    .line 202
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto/16 :goto_52

    .line 164
    :cond_fc
    const/4 v5, 0x0

    goto :goto_96

    .line 165
    :cond_fe
    const/4 v5, 0x0

    goto :goto_a5

    .line 166
    :cond_100
    const/4 v5, 0x0

    goto :goto_b4

    .line 184
    :cond_102
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->checkSimState()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_105} :catch_3d

    .line 188
    :try_start_105
    iget v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->CHECK_DELAY_IN_MS:I

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10b
    .catch Ljava/lang/InterruptedException; {:try_start_105 .. :try_end_10b} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10b} :catch_3d

    goto :goto_b6

    .line 189
    :catch_10c
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_10d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_b6

    .line 206
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_115
    const-string v5, "----------- Validating Network data -----------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getNetworkNumeric()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17a

    const/4 v5, 0x1

    :goto_127
    iput-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    .line 209
    iget-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    if-eqz v5, :cond_167

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-nez v5, :cond_167

    .line 210
    const-string v5, "Checking network numeric"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 216
    iget-wide v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_17c

    .line 217
    iget-wide v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    sub-long/2addr v10, v12

    sub-long v6, v8, v10

    .line 222
    .local v6, "waitingTime":J
    :goto_149
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/16 v8, 0x6f

    invoke-virtual {v5, v8, v6, v7}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 224
    new-instance v5, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V

    iput-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    .line 225
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 226
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 228
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-eqz v5, :cond_52

    .line 233
    .end local v6    # "waitingTime":J
    :cond_167
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isNetworkDataValidate()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    .line 236
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v5

    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    invoke-direct {p0, v5, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto/16 :goto_52

    .line 208
    :cond_17a
    const/4 v5, 0x0

    goto :goto_127

    .line 219
    :cond_17c
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    .line 220
    iget-wide v6, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    .restart local v6    # "waitingTime":J
    goto :goto_149

    .line 239
    .end local v4    # "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    .end local v6    # "waitingTime":J
    :cond_182
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v5}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_187} :catch_3d

    goto/16 :goto_30
.end method
