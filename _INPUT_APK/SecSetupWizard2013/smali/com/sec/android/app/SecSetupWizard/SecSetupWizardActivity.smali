.class public Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;
.super Landroid/app/Activity;
.source "SecSetupWizardActivity.java"


# static fields
.field private static final LARGE_FONT_SCALE:F

.field public static mIsAfwSequenceList:Z

.field private static final mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

.field private static mListForMUM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReactivationLock:Z

.field private static mSkipListForSubUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mUserSetupCompleted:Z


# instance fields
.field private log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

.field private mChangeFont:Z

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentResult:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsOwner:Z

.field private mIsSettingsChangesAllowed:Z

.field private mIsSupportMUM:Z

.field private mRestPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private objValue:Ljava/lang/Object;

.field private v_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-direct {v0}, Lcom/sec/android/app/SecSetupWizard/SequenceList;-><init>()V

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    .line 85
    sput-boolean v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    .line 86
    sput-boolean v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mUserSetupCompleted:Z

    .line 87
    sput-boolean v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsAfwSequenceList:Z

    .line 112
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->LARGE_FONT_SCALE:F

    .line 120
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "language_setup"

    aput-object v2, v1, v4

    const-string v2, "reactivation_lock_setup"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "date_and_time_setup"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "video_intro"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sec_backup_setup"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mSkipListForSubUsers:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "welcome"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mListForMUM:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSettingsChangesAllowed:Z

    .line 98
    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    .line 99
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSupportMUM:Z

    .line 110
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurConfig:Landroid/content/res/Configuration;

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mChangeFont:Z

    return-void
.end method

.method private disableNotifications()V
    .locals 4

    .prologue
    .line 1623
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1624
    .local v0, "mStatusBarManager":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1625
    const-string v2, "SecSetupWizardActivity"

    const-string v3, "disableNotifications"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1628
    const/high16 v1, 0x3870000

    .line 1642
    .local v1, "statusBarFlag":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1644
    .end local v1    # "statusBarFlag":I
    :cond_0
    return-void

    .line 1635
    :cond_1
    const/high16 v1, 0x3a70000

    .restart local v1    # "statusBarFlag":I
    goto :goto_0
.end method

.method private enableNotifications()V
    .locals 3

    .prologue
    .line 1615
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1616
    .local v0, "mStatusBarManager":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1617
    const-string v1, "SecSetupWizardActivity"

    const-string v2, "enableNotifications"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1620
    :cond_0
    return-void
.end method

.method private isSkipAttWelcomeScreen()Z
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x1

    .line 832
    .local v0, "skipItem":Z
    return v0
.end method

.method private isSkipBackgroundTraffic()Z
    .locals 4

    .prologue
    .line 716
    const/4 v0, 0x1

    .line 717
    .local v0, "isSkip":Z
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const/4 v1, 0x1

    .line 728
    :goto_0
    return v1

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSktAccountStatus()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getKtWelcomeLoginStatus()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "isSkipBackgroundTraffic: SKT operator "

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 728
    goto :goto_0

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "isSkipBackgroundTraffic: Skip background traffic"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isSkipBaiduLocation()Z
    .locals 3

    .prologue
    .line 753
    const/4 v0, 0x1

    .line 754
    .local v0, "isSkip":Z
    const-string v1, "CHU"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    :cond_0
    const/4 v0, 0x0

    .line 757
    :cond_1
    return v0
.end method

.method private isSkipCMCC()Z
    .locals 3

    .prologue
    .line 761
    const/4 v0, 0x1

    .line 762
    .local v0, "isSkip":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    const/4 v0, 0x0

    .line 765
    :cond_0
    return v0
.end method

.method private isSkipCTCregistration()Z
    .locals 3

    .prologue
    .line 777
    const/4 v0, 0x1

    .line 778
    .local v0, "isSkip":Z
    const-string v1, "CTC"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "h3gduosctc"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ja3gduosctc"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "k3gduosctc"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "klteduosctc"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trlteduosctc"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    const/4 v0, 0x0

    .line 785
    :cond_0
    return v0
.end method

.method private isSkipCUregistration()Z
    .locals 3

    .prologue
    .line 769
    const/4 v0, 0x1

    .line 770
    .local v0, "isSkip":Z
    const-string v1, "CHU"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 773
    :cond_0
    return v0
.end method

.method private isSkipDataConnection()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 695
    const/4 v0, 0x1

    .line 696
    .local v0, "isSkip":Z
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 702
    const-string v1, "XEO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PLS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TPL"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PRT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 704
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "isSkipDataConnection: poland operator "

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 711
    goto :goto_0

    .line 707
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "isSkipDataConnection: Skip data page"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isSkipDateTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 732
    const-string v2, "ATT"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XTC"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SMA"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GLB"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XTE"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 748
    :cond_1
    :goto_0
    return v0

    .line 740
    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 741
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "isSkipDateTime : wifiOnly models "

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 748
    goto :goto_0
.end method

.method private isSkipHfa()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 808
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sprint.samsung.OMADMExtension.HFA"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 810
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 812
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    .line 816
    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private isSkipKorV3()Z
    .locals 3

    .prologue
    .line 820
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v1, "SecSetupWizardActivity"

    const-string v2, "isSkipKorV3: Korea Operator"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x0

    .line 824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSkipKtWelcomeLogin()Z
    .locals 5

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 867
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "CheckNum":Ljava/lang/String;
    const-string v2, "SktAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKtWelcomeLoginStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getKtWelcomeLoginStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getKtWelcomeLoginStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v3, "SecSetupWizardActivity"

    const-string v4, "getKtWelcomeLoginStatus: KT Models"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/4 v2, 0x0

    .line 874
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSkipMyAccount()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 890
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 892
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "com.tmobile.pr.mytmobile"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v4, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 893
    .local v4, "rawVersion":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 894
    .local v5, "stringVerson":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 896
    .local v2, "numVersion":F
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v9, "SecSetupWizardActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSkipMyAccount: rawVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", stringVerson = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", numVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 899
    const v8, 0x40666666    # 3.6f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_0

    .line 905
    .end local v2    # "numVersion":F
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "rawVersion":Ljava/lang/String;
    .end local v5    # "stringVerson":Ljava/lang/String;
    :goto_0
    return v6

    .restart local v2    # "numVersion":F
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "rawVersion":Ljava/lang/String;
    .restart local v5    # "stringVerson":Ljava/lang/String;
    :cond_0
    move v6, v7

    .line 899
    goto :goto_0

    .line 900
    .end local v2    # "numVersion":F
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "rawVersion":Ljava/lang/String;
    .end local v5    # "stringVerson":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v7, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v8, "SecSetupWizardActivity"

    const-string v9, "isSkipMyAccount: NameNotFoundException"

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 903
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 904
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v8, "SecSetupWizardActivity"

    const-string v9, "isSkipMyAccount: NumberFormatException"

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSkipReactivationLockSetup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1210
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return v0

    .line 1214
    :cond_1
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isNetherlandsModel()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isNorthAmericaOperator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSkipSamsungAccountScreen()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    .line 839
    .local v0, "skipItem":Z
    return v0
.end method

.method private isSkipSamsungHealthScreen()Z
    .locals 3

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "skipItem":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SHEALTH_SUPPORT_HEALTH_SHORTCUT"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 845
    const/4 v0, 0x1

    .line 849
    :cond_0
    :goto_0
    return v0

    .line 846
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSecHealthSkipState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSkipSecEasySignUp()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 789
    const/4 v0, 0x1

    .line 790
    .local v0, "isSkip":Z
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    const-string v4, "com.samsung.android.coreapps"

    invoke-static {v3, v4}, Lcom/sec/android/app/SecSetupWizard/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 793
    const-string v3, "setupwizard"

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 794
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "sec_account_signup_in_setupwizard"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 796
    .local v2, "sec_account_signup_in_setupwizard":Z
    if-eqz v2, :cond_0

    .line 797
    const/4 v0, 0x1

    .line 803
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    .end local v2    # "sec_account_signup_in_setupwizard":Z
    :goto_0
    return v0

    .line 799
    .restart local v1    # "pref":Landroid/content/SharedPreferences;
    .restart local v2    # "sec_account_signup_in_setupwizard":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 801
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    .end local v2    # "sec_account_signup_in_setupwizard":Z
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    const-string v5, "no easysignup."

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSkipSktAccount()Z
    .locals 5

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 854
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "CheckNum":Ljava/lang/String;
    const-string v2, "SktAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSktAccountStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSktAccountStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSktAccountStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v3, "SecSetupWizardActivity"

    const-string v4, "isSkipSktAccount: SKT Models"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const/4 v2, 0x0

    .line 861
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSkipSktTphoneSetup()Z
    .locals 3

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSktTphoneSetupStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v1, "SecSetupWizardActivity"

    const-string v2, "isSkipSktTphoneSetup: SKT Models"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSkipWifi()Z
    .locals 3

    .prologue
    .line 677
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mRestPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mRestPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 678
    const/4 v0, 0x1

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 682
    :cond_1
    const/4 v0, 0x0

    .line 687
    .local v0, "isSkip":Z
    const-string v1, "ATT"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killSetupWizardProcess()V
    .locals 2

    .prologue
    .line 1647
    const-string v0, "SecSetupWizardActivity"

    const-string v1, "killSetupWizardProcess"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1649
    return-void
.end method

.method private launchCameraApp()V
    .locals 5

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.firmwareupdateservice"

    const-string v4, "com.sec.android.app.firmwareupdateservice.FUDisclaimerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 580
    const-string v1, "com.sec.android.app.firmwareupdateservice"

    const-string v2, "com.sec.android.app.firmwareupdateservice.FUDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    :goto_0
    const-string v1, "from-sw"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->finish()V

    .line 590
    return-void

    .line 582
    :cond_0
    :try_start_1
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v1, "from-am"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private makeAfwMinimumSequenceList()V
    .locals 8

    .prologue
    .line 485
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v5, "SecSetupWizardActivity"

    const-string v6, "=============makeAfwMinimumSequenceList"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/SecSetupWizard/Utils;->getPrefCompleteRLSetup(Landroid/content/Context;)Z

    move-result v0

    .line 490
    .local v0, "bComplete_ReactivationLock":Z
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "samsung_eula_agree"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "s_eula":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/IntentMaker;

    invoke-direct {v1, v2}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;-><init>(Ljava/lang/String;)V

    .line 493
    .local v1, "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->makeIntent(Landroid/content/Context;)V

    .line 494
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 495
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getRequestCode()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->insert(Ljava/lang/String;Landroid/content/Intent;I)Z

    .line 496
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v5, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert in afwlist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v1    # "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    .end local v2    # "s_eula":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isNorthAmericaOperator()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "s_rl":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/IntentMaker;

    invoke-direct {v1, v3}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;-><init>(Ljava/lang/String;)V

    .line 504
    .restart local v1    # "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->makeIntent(Landroid/content/Context;)V

    .line 505
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 506
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getRequestCode()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->insert(Ljava/lang/String;Landroid/content/Intent;I)Z

    .line 507
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v5, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert in afwlist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .end local v1    # "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    .end local v3    # "s_rl":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private makeCameraOnlySequenceList()V
    .locals 9

    .prologue
    .line 514
    const/4 v2, 0x0

    .line 516
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "fromCamera"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 517
    const-string v5, "persist.sys.setupwizard_part"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    const-string v5, "persist.sys.setupwizard_part"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "part":Ljava/lang/String;
    const-string v5, "camera"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 521
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    const-string v7, "makeCameraOnlySequenceList - Camera"

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_0
    return-void

    .line 523
    :cond_1
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 524
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    const-string v7, "makeCameraOnlySequenceList - part 2"

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 532
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 533
    .local v4, "s":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/IntentMaker;

    invoke-direct {v1, v4}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->makeIntent(Landroid/content/Context;)V

    .line 535
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->isShouldSkipActivity(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 536
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getRequestCode()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->insert(Ljava/lang/String;Landroid/content/Intent;I)Z

    goto :goto_2

    .line 527
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    const-string v7, "makeCameraOnlySequenceList - part 1"

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v5, "persist.sys.setupwizard_part"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 539
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setSkipNetworkCharges()V

    goto :goto_0
.end method

.method private makeDefaultSequenceList()V
    .locals 9

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 441
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 442
    .local v4, "s":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/IntentMaker;

    invoke-direct {v1, v4}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->makeIntent(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->isShouldSkipActivity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    sget-boolean v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    if-ne v5, v6, :cond_0

    .line 445
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "key":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSupportMUM:Z

    if-nez v5, :cond_3

    .line 447
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mListForMUM:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 456
    :cond_2
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getRequestCode()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->insert(Ljava/lang/String;Landroid/content/Intent;I)Z

    .line 457
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert in list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-nez v5, :cond_4

    .line 450
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mSkipListForSubUsers:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 452
    :cond_4
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mListForMUM:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 461
    .end local v1    # "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isMultisimModel()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 462
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->makeDsaSequenceList()V

    .line 465
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setSkipNetworkCharges()V

    .line 469
    return-void
.end method

.method private makeDsaSequenceList()V
    .locals 8

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 473
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 474
    .local v3, "s":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/IntentMaker;

    invoke-direct {v1, v3}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->makeIntent(Landroid/content/Context;)V

    .line 476
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/SecSetupWizard/Utils;->isShouldSkipActivity(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 477
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getRequestCode()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->insert(Ljava/lang/String;Landroid/content/Intent;I)Z

    .line 478
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v5, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert in list (dsa) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v1    # "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private makeVideoIntroSequenceList()V
    .locals 9

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 403
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-nez v5, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 405
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 406
    .local v4, "s":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/IntentMaker;

    invoke-direct {v1, v4}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->makeIntent(Landroid/content/Context;)V

    .line 408
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->isShouldSkipActivity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    sget-boolean v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    if-ne v5, v6, :cond_1

    .line 409
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "key":Ljava/lang/String;
    const-string v5, "dropbox_setup"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSkipDropBoxModel()Z

    move-result v5

    if-nez v5, :cond_1

    .line 411
    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSupportMUM:Z

    if-nez v5, :cond_6

    .line 412
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mListForMUM:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 413
    const-string v5, "sec_account_setup"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDisallowAccount(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 414
    :cond_4
    const-string v5, "sec_backup_setup"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDisallowAccount(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 427
    :cond_5
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getRequestCode()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->insert(Ljava/lang/String;Landroid/content/Intent;I)Z

    .line 428
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert in list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/IntentMaker;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :cond_6
    iget-boolean v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-nez v5, :cond_8

    .line 417
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mSkipListForSubUsers:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 418
    const-string v5, "sec_account_setup"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDisallowAccount(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 419
    :cond_7
    const-string v5, "sec_backup_setup"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDisallowAccount(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_0

    .line 421
    :cond_8
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mListForMUM:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 422
    const-string v5, "sec_account_setup"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDisallowAccount(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 423
    :cond_9
    const-string v5, "sec_backup_setup"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDisallowAccount(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_0

    .line 432
    .end local v1    # "im":Lcom/sec/android/app/SecSetupWizard/IntentMaker;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isMultisimModel()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 433
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->makeDsaSequenceList()V

    .line 436
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setSkipNetworkCharges()V

    .line 437
    return-void
.end method

.method public static secFileExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const/4 v1, 0x1

    .line 212
    :cond_0
    return v1
.end method

.method public static secFileRead(Ljava/lang/String;)[B
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "file_fd":Ljava/io/File;
    const/4 v3, 0x0

    .line 162
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 165
    .local v7, "read_file":[B
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v1    # "file_fd":Ljava/io/File;
    .local v2, "file_fd":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 169
    .local v8, "size":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v8, v10

    if-gtz v10, :cond_2

    .line 170
    long-to-int v10, v8

    new-array v7, v10, [B

    .line 172
    const/4 v6, 0x0

    .line 173
    .local v6, "offset":I
    const/4 v5, 0x0

    .line 175
    .local v5, "numRead":I
    :goto_0
    array-length v10, v7

    if-ge v6, v10, :cond_0

    array-length v10, v7

    sub-int/2addr v10, v6

    invoke-virtual {v4, v7, v6, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 176
    add-int/2addr v6, v5

    goto :goto_0

    .line 179
    :cond_0
    array-length v10, v7

    if-ge v6, v10, :cond_2

    .line 180
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not completely read file."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    .end local v5    # "numRead":I
    .end local v6    # "offset":I
    .end local v8    # "size":J
    :catch_0
    move-exception v0

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 184
    .end local v2    # "file_fd":Ljava/io/File;
    .local v0, "e":Ljava/io/StreamCorruptedException;
    .restart local v1    # "file_fd":Ljava/io/File;
    :goto_1
    :try_start_3
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead StreamCorruptedException = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    if-eqz v3, :cond_1

    .line 194
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 200
    .end local v0    # "e":Ljava/io/StreamCorruptedException;
    :cond_1
    :goto_2
    return-object v7

    .line 193
    .end local v1    # "file_fd":Ljava/io/File;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "file_fd":Ljava/io/File;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "size":J
    :cond_2
    if-eqz v4, :cond_3

    .line 194
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 198
    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto :goto_2

    .line 196
    .end local v1    # "file_fd":Ljava/io/File;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "file_fd":Ljava/io/File;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead  close Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 199
    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto :goto_2

    .line 196
    .end local v8    # "size":J
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :catch_2
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead  close Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead FileNotFoundException = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 193
    if-eqz v3, :cond_1

    .line 194
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 196
    :catch_4
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead  close Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead IOException = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 193
    if-eqz v3, :cond_1

    .line 194
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_2

    .line 196
    :catch_6
    move-exception v0

    .line 197
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead  close Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_a
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 193
    if-eqz v3, :cond_1

    .line 194
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_2

    .line 196
    :catch_8
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "LostLock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "secFileRead  close Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 193
    :goto_6
    if-eqz v3, :cond_4

    .line 194
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 198
    :cond_4
    :goto_7
    throw v10

    .line 196
    :catch_9
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "LostLock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "secFileRead  close Exception = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file_fd":Ljava/io/File;
    .restart local v2    # "file_fd":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto :goto_6

    .end local v1    # "file_fd":Ljava/io/File;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "file_fd":Ljava/io/File;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto :goto_6

    .line 189
    .end local v1    # "file_fd":Ljava/io/File;
    .restart local v2    # "file_fd":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto :goto_5

    .end local v1    # "file_fd":Ljava/io/File;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "file_fd":Ljava/io/File;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto :goto_5

    .line 187
    .end local v1    # "file_fd":Ljava/io/File;
    .restart local v2    # "file_fd":Ljava/io/File;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto/16 :goto_4

    .end local v1    # "file_fd":Ljava/io/File;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "file_fd":Ljava/io/File;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto/16 :goto_4

    .line 185
    .end local v1    # "file_fd":Ljava/io/File;
    .restart local v2    # "file_fd":Ljava/io/File;
    :catch_e
    move-exception v0

    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto/16 :goto_3

    .end local v1    # "file_fd":Ljava/io/File;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "file_fd":Ljava/io/File;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto/16 :goto_3

    .line 183
    :catch_10
    move-exception v0

    goto/16 :goto_1

    .end local v1    # "file_fd":Ljava/io/File;
    .restart local v2    # "file_fd":Ljava/io/File;
    :catch_11
    move-exception v0

    move-object v1, v2

    .end local v2    # "file_fd":Ljava/io/File;
    .restart local v1    # "file_fd":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private sendBroadcastDeviceNameChanged()V
    .locals 2

    .prologue
    .line 1491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1493
    return-void
.end method

.method private sendBroadcastFindingLostPhone()V
    .locals 2

    .prologue
    .line 1501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1503
    return-void
.end method

.method private sendBroadcastSetupWizardComplete()V
    .locals 2

    .prologue
    .line 1496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1498
    return-void
.end method

.method private setEasyMode()V
    .locals 15

    .prologue
    .line 1527
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.easylauncher"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.launcher"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1530
    new-instance v6, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v6, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1532
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1534
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v5, "mHomeIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1537
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 1538
    .local v9, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    .local v7, "mNoPriortyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 1541
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget v10, v10, Landroid/content/pm/ResolveInfo;->priority:I

    if-lez v10, :cond_0

    .line 1540
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1543
    :cond_0
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1546
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v0, v10, [Landroid/content/ComponentName;

    .line 1547
    .local v0, "components":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 1548
    iget-object v11, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v12, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " Package name : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    new-instance v11, Landroid/content/ComponentName;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v0, v1

    .line 1547
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1551
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "easy_mode_switch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1552
    .local v8, "mStandardMode":I
    const/4 v4, 0x0

    .line 1553
    .local v4, "mDefaultCN":Landroid/content/ComponentName;
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    .line 1554
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v10, "com.sec.android.app.launcher"

    const-string v11, "com.android.launcher2.Launcher"

    invoke-direct {v4, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    .restart local v4    # "mDefaultCN":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x100000

    invoke-virtual {v10, v6, v11, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "easy_mode_switch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1562
    .local v3, "isEasy":I
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v2, "intent":Landroid/content/Intent;
    const-string v10, "easymode_from"

    const-string v11, "setupwizard"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1565
    const/4 v10, 0x1

    if-ne v3, v10, :cond_5

    .line 1566
    const-string v10, "easymode"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1573
    :cond_3
    :goto_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1574
    return-void

    .line 1556
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isEasy":I
    :cond_4
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v10, "com.sec.android.app.easylauncher"

    const-string v11, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v4, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4    # "mDefaultCN":Landroid/content/ComponentName;
    goto :goto_3

    .line 1567
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isEasy":I
    :cond_5
    if-nez v3, :cond_3

    .line 1568
    const-string v10, "easymode"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1569
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSupportEasyMode30()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1570
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setLargeFont()V

    goto :goto_4
.end method

.method private setSkipNetworkCharges()V
    .locals 3

    .prologue
    .line 1595
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1596
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v2, "network_charges"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 1598
    .local v0, "networkCharges":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v0, :cond_0

    .line 1599
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1602
    .end local v0    # "networkCharges":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_0
    return-void
.end method

.method private setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V
    .locals 7
    .param p1, "item"    # Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    .prologue
    const/high16 v6, 0x800000

    .line 911
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 912
    const-string v3, "complete"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 913
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    const-string v5, "setupStart - launchCameraApp"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v3, "persist.sys.setupwizard_part"

    const-string v4, "camera"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->launchCameraApp()V

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    const-string v3, "date_and_time_setup"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 932
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_initial_auto_datetime_value"

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isNetConnected(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    :cond_2
    const-string v3, "google_name_setup"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 936
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 937
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipDateTime()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 938
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "actionId"

    const-string v5, "user_name"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    :cond_3
    :goto_1
    const-string v3, "google_account_setup"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 946
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 949
    :cond_4
    const-string v3, "sec_account_setup"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-eqz v3, :cond_6

    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "checkFlag":Z
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/Utils;->readReactivationFlag(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 953
    const/4 v0, 0x1

    .line 955
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "required_auth"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 956
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LMM[getReqiredAuthFlag] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .end local v0    # "checkFlag":Z
    :cond_6
    const-string v3, "reactivation_lock_setup"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 960
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "initial_reactivationlock"

    sget-boolean v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 963
    :cond_7
    const-string v3, "sec_health_setup"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 964
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Shealth_setup_wizard"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 967
    :cond_8
    const-string v3, "google_subsuer_setup"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 968
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "actionId"

    const-string v5, "welcome"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "scriptUri"

    const-string v5, "android.resource://com.google.android.setupwizard/xml/wizard_script_user"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    :cond_9
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivityForResult, current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v3, "persist.sys.setupwizard"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getRequestCode()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 976
    :catch_0
    move-exception v2

    .line 977
    .local v2, "localActivityNotFoundException":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    const-string v5, "ActivityNotFoundException!!"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 940
    .end local v2    # "localActivityNotFoundException":Landroid/content/ActivityNotFoundException;
    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.setupwizard.DATE_TIME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    invoke-virtual {p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "actionId"

    const-string v5, "date_time"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 980
    :catch_1
    move-exception v1

    .line 981
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupwizard is not alive, current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v3, "complete"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    .line 985
    :cond_b
    const-string v3, "start"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1665
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1666
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1667
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 1679
    :cond_0
    :goto_0
    return v4

    .line 1670
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1671
    .local v2, "isWifiAvail":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1673
    if-nez v3, :cond_2

    move v4, v2

    .line 1674
    goto :goto_0

    .line 1677
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1679
    .local v1, "isMobileAvail":Z
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public completeDropboxSetup(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 1136
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1137
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v2, "dropbox_setup"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 1138
    .local v0, "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v0, :cond_0

    .line 1139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1142
    .end local v0    # "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_0
    return-void
.end method

.method public completeFingerPrintSetup(I)V
    .locals 6
    .param p1, "resultCode"    # I

    .prologue
    .line 1253
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v3, "finger_print_setup"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 1254
    .local v0, "fingerPrint":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    .line 1255
    .local v1, "isSkip":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1258
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v3, "SecSetupWizardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip, finger print setup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1254
    .end local v1    # "isSkip":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public completeKtWelcomeLogin(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 1163
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1164
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v2, "kt_welcomelogin"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 1165
    .local v0, "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v0, :cond_0

    .line 1166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1169
    .end local v0    # "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_0
    return-void
.end method

.method public completeReactivationLock(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1222
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/sec/android/app/SecSetupWizard/Utils;->setPrefCompleteRLSetup(Landroid/content/Context;Z)V

    .line 1225
    :cond_0
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v2, "sec_account_setup"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 1228
    .local v0, "secAccount":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/Utils;->readReactivationFlag(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    .line 1230
    if-eqz p2, :cond_1

    .line 1231
    const-string v1, "hasSamsungAccount"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1232
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "completed rl, hasSamsungAccount == true"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {v0, v4}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1240
    :cond_1
    :goto_0
    return-void

    .line 1237
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "completed rl, hasSamsungAccount == false"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public completeSecAccount(ILandroid/content/Intent;)V
    .locals 10
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1296
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v8, "sec_account_setup"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v4

    .line 1297
    .local v4, "secAccount":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    const/4 v5, -0x1

    if-ne v5, p1, :cond_3

    move v1, v6

    .line 1298
    .local v1, "isSkip":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 1299
    invoke-virtual {v4, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1302
    :cond_0
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v8, "validation_email"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v2

    .line 1303
    .local v2, "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v2, :cond_1

    .line 1304
    if-nez v1, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v2, v5}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1307
    :cond_1
    if-eqz v1, :cond_2

    .line 1308
    if-eqz p2, :cond_2

    .line 1309
    const-string v5, "signup_in_setupwizard"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1310
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v8, "SecSetupWizardActivity"

    const-string v9, "signup_in_setupwizard true"

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v5, "setupwizard"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1312
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1313
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "sec_account_signup_in_setupwizard"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1315
    const/4 v1, 0x0

    .line 1319
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :goto_2
    const-string v5, "signin_without_email_verification"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1320
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v8, "SecSetupWizardActivity"

    const-string v9, "signin_without_email_verification true"

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v5, "setupwizard"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1322
    .restart local v3    # "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1323
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "signin_without_email_verification"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1325
    const/4 v1, 0x0

    .line 1332
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    :goto_3
    if-nez v1, :cond_7

    :goto_4
    invoke-virtual {p0, v6}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeSecBackup(Z)V

    .line 1333
    return-void

    .end local v1    # "isSkip":Z
    .end local v2    # "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_3
    move v1, v7

    .line 1297
    goto :goto_0

    .restart local v1    # "isSkip":Z
    .restart local v2    # "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_4
    move v5, v7

    .line 1304
    goto :goto_1

    .line 1317
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v8, "SecSetupWizardActivity"

    const-string v9, "signup_in_setupwizard false"

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1327
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v8, "SecSetupWizardActivity"

    const-string v9, "signin_without_email_verification false"

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v6, v7

    .line 1332
    goto :goto_4
.end method

.method public completeSecBackup(Z)V
    .locals 8
    .param p1, "isSkip"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1194
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v5, "sec_backup_setup"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v1

    .line 1195
    .local v1, "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    const-string v4, "setupwizard"

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1196
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v4, "backup_restore_done"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1197
    .local v0, "backup_completed":Z
    const-string v4, "signin_without_email_verification"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1199
    .local v3, "signin_without_email_verification":Z
    if-eqz v1, :cond_1

    .line 1200
    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    .line 1201
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1206
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v5, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip, sec backup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void

    .line 1203
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    goto :goto_0
.end method

.method public completeSecEasySignUp(I)V
    .locals 6
    .param p1, "resultCode"    # I

    .prologue
    .line 1243
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v3, "sec_easy_signup"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v1

    .line 1244
    .local v1, "secEasySignUp":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 1246
    .local v0, "isSkip":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1247
    invoke-virtual {v1, v0}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1249
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v3, "SecSetupWizardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip, sec_easy_signup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    return-void

    .line 1244
    .end local v0    # "isSkip":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public completeSecHealthSetup(ILandroid/content/Intent;)V
    .locals 9
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1262
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v7, "sec_health_setup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v3

    .line 1263
    .local v3, "secHealth":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    const/4 v6, -0x1

    if-ne v6, p1, :cond_2

    move v1, v4

    .line 1265
    .local v1, "isSkip":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1266
    if-eqz p2, :cond_0

    .line 1267
    const-string v6, "shealth_setup_wizard_complete"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1268
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v7, "SecSetupWizardActivity"

    const-string v8, "shealth_setup_wizard_complete true"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v6, "setupwizard"

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1270
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1271
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "sec_health_setup_wizard_complete"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1273
    const/4 v1, 0x1

    .line 1284
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1285
    invoke-virtual {v3, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1287
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v5, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip, completeSecHealthSetup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    return-void

    .end local v1    # "isSkip":Z
    :cond_2
    move v1, v5

    .line 1263
    goto :goto_0

    .line 1275
    .restart local v1    # "isSkip":Z
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    const-string v7, "shealth_setup_wizard_complete false"

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const-string v4, "setupwizard"

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1277
    .restart local v2    # "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1278
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "sec_health_setup_wizard_complete"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1280
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public completeSktAccount(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 1154
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1155
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v2, "skt_account"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 1156
    .local v0, "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v0, :cond_0

    .line 1157
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1160
    .end local v0    # "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_0
    return-void
.end method

.method public completeSktTphoneSetup(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 1172
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1173
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v2, "skt_tphone_setup"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 1174
    .local v0, "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v0, :cond_0

    .line 1175
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1178
    .end local v0    # "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_0
    return-void
.end method

.method public completeV3Setup(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 1145
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1146
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v2, "kor_v3"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 1147
    .local v0, "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v0, :cond_0

    .line 1148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1151
    .end local v0    # "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_0
    return-void
.end method

.method public completeValidationEmail(Landroid/content/Intent;)V
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1181
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v4, "validation_email"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v1

    .line 1182
    .local v1, "item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v1, :cond_0

    .line 1183
    invoke-virtual {v1, v0}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1185
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    const-string v5, "skip, sec validation email"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v3, "validation"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1188
    const-string v3, "validation"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1189
    .local v0, "isSkip":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeSecBackup(Z)V

    .line 1191
    .end local v0    # "isSkip":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1188
    goto :goto_0
.end method

.method public getKtWelcomeLoginStatus()Z
    .locals 4

    .prologue
    .line 139
    const-string v0, "KtWelcomeLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature Test: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SetupWizard_ConfigOperatorAccount"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KtWelcomeLogin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SetupWizard_ConfigOperatorAccount"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KtWelcomeLogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .locals 3

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "nextItem":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mRestPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mRestPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSettingsChangesAllowed:Z

    .line 604
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->isSkip()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_1
    const-string v1, "hfa_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipHfa()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_2
    const-string v1, "cmcc_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipCMCC()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_3
    const-string v1, "wifi_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipWifi()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_4
    const-string v1, "data_connection"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipDataConnection()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_5
    const-string v1, "background_traffic"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipBackgroundTraffic()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_6
    const-string v1, "date_and_time_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipDateTime()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_7
    const-string v1, "cu_registration"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipCUregistration()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_8
    const-string v1, "ctc_registration"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipCTCregistration()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_9
    const-string v1, "baidu_location"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipBaiduLocation()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_a
    const-string v1, "sim_missing"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_b
    const-string v1, "finger_print_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_c
    const-string v1, "activation_progress"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_d
    const-string v1, "feature_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSettingsChangesAllowed:Z

    if-eqz v1, :cond_19

    :cond_e
    const-string v1, "kor_v3"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipKorV3()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_f
    const-string v1, "reactivation_lock_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipReactivationLockSetup()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_10
    const-string v1, "sec_easy_signup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSecEasySignUp()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_11
    const-string v1, "orangecloud_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isLinkOrangeCloud()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_12
    const-string v1, "skt_account"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSktAccount()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_13
    const-string v1, "kt_welcomelogin"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipKtWelcomeLogin()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_14
    const-string v1, "att_welcome_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipAttWelcomeScreen()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_15
    const-string v1, "sec_account_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSamsungAccountScreen()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_16
    const-string v1, "sec_health_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSamsungHealthScreen()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_17
    const-string v1, "my_account_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipMyAccount()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    const-string v1, "skt_tphone_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSktTphoneSetup()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 629
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 631
    :cond_1a
    return-object v0
.end method

.method public getPrevious()Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .locals 3

    .prologue
    .line 635
    const/4 v0, 0x0

    .line 636
    .local v0, "previousItem":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getPrevious()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mRestPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mRestPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSettingsChangesAllowed:Z

    .line 644
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->isSkip()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_1
    const-string v1, "hfa_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipHfa()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_2
    const-string v1, "cmcc_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipCMCC()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_3
    const-string v1, "wifi_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipWifi()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_4
    const-string v1, "data_connection"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipDataConnection()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_5
    const-string v1, "background_traffic"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipBackgroundTraffic()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_6
    const-string v1, "date_and_time_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipDateTime()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_7
    const-string v1, "cu_registration"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipCUregistration()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_8
    const-string v1, "ctc_registration"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipCTCregistration()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_9
    const-string v1, "baidu_location"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipBaiduLocation()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_a
    const-string v1, "sim_missing"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_b
    const-string v1, "finger_print_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_c
    const-string v1, "activation_progress"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_d
    const-string v1, "feature_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSettingsChangesAllowed:Z

    if-eqz v1, :cond_19

    :cond_e
    const-string v1, "kor_v3"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipKorV3()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_f
    const-string v1, "reactivation_lock_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipReactivationLockSetup()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_10
    const-string v1, "sec_easy_signup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSecEasySignUp()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_11
    const-string v1, "orangecloud_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isLinkOrangeCloud()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_12
    const-string v1, "skt_account"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSktAccount()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_13
    const-string v1, "kt_welcomelogin"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipKtWelcomeLogin()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_14
    const-string v1, "att_welcome_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipAttWelcomeScreen()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_15
    const-string v1, "sec_account_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSamsungAccountScreen()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_16
    const-string v1, "sec_health_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSamsungHealthScreen()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_17
    const-string v1, "my_account_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipMyAccount()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    const-string v1, "skt_tphone_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->isSkipSktTphoneSetup()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 669
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPrevious()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    .line 671
    :cond_1a
    return-object v0
.end method

.method public getSecHealthSkipState()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1291
    const-string v1, "setupwizard"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1292
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "sec_health_setup_wizard_complete"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getSktAccountStatus()Z
    .locals 4

    .prologue
    .line 129
    const-string v0, "SktAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature Test: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SetupWizard_ConfigOperatorAccount"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SktAccount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SetupWizard_ConfigOperatorAccount"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SktAccount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSktTphoneSetupStatus()Z
    .locals 4

    .prologue
    .line 149
    const-string v0, "SktTPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature Test: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigOperatorPhoneAppDuringSetupWizard"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tphone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigOperatorPhoneAppDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1010
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1011
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resultCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v8}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const/4 v5, -0x1

    iput v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    .line 1016
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_setup_complete"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    sput-boolean v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mUserSetupCompleted:Z

    .line 1017
    sget-boolean v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mUserSetupCompleted:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsAfwSequenceList:Z

    if-nez v5, :cond_2

    .line 1018
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    const-string v7, "SetupWizard onActivityResult ingnored by afwProvisioning"

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_0
    :goto_1
    return-void

    .line 1016
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1022
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1024
    :pswitch_0
    const-string v5, "validation_email"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1025
    invoke-virtual {p0, p3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeValidationEmail(Landroid/content/Intent;)V

    .line 1027
    :cond_3
    const-string v5, "sec_backup_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1028
    const-string v5, "setupwizard"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1029
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1030
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "backup_restore_done"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1031
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1033
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeSecBackup(Z)V

    .line 1035
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :cond_4
    const-string v5, "sec_account_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1036
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeSecAccount(ILandroid/content/Intent;)V

    .line 1038
    :cond_5
    const-string v5, "reactivation_lock_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1039
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeReactivationLock(ILandroid/content/Intent;)V

    .line 1041
    :cond_6
    const-string v5, "terms_and_condition"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "language_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "wifi_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1042
    :cond_7
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v6, "google_account_setup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v1

    .line 1043
    .local v1, "googleAccount":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v1, :cond_8

    .line 1044
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->checkNetwork()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v1, v5}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1046
    :cond_8
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    const-string v6, "google_name_setup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v2

    .line 1047
    .local v2, "googleName":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-eqz v2, :cond_9

    .line 1048
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->checkNetwork()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setSkipState(Z)V

    .line 1051
    .end local v1    # "googleAccount":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .end local v2    # "googleName":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_9
    const-string v5, "google_account_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1053
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    goto/16 :goto_1

    .line 1044
    .restart local v1    # "googleAccount":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 1056
    .end local v1    # "googleAccount":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_b
    const-string v5, "google_name_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1057
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    goto/16 :goto_1

    .line 1060
    :cond_c
    const-string v5, "finger_print_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1061
    invoke-virtual {p0, p2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeFingerPrintSetup(I)V

    .line 1063
    :cond_d
    const-string v5, "sec_easy_signup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1064
    invoke-virtual {p0, p2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeSecEasySignUp(I)V

    .line 1066
    :cond_e
    const-string v5, "hfa_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1067
    const/4 p2, -0x1

    .line 1070
    :cond_f
    const-string v5, "sec_health_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1071
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeSecHealthSetup(ILandroid/content/Intent;)V

    .line 1074
    :cond_10
    const-string v5, "dropbox_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1075
    invoke-virtual {p0, p2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeDropboxSetup(I)V

    .line 1077
    :cond_11
    const-string v5, "kor_v3"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1078
    invoke-virtual {p0, p2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeV3Setup(I)V

    .line 1080
    :cond_12
    const-string v5, "skt_account"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1081
    invoke-virtual {p0, p2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeSktAccount(I)V

    .line 1083
    :cond_13
    const-string v5, "skt_tphone_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1084
    invoke-virtual {p0, p2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeSktTphoneSetup(I)V

    .line 1086
    :cond_14
    const-string v5, "google_subsuer_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1087
    iput p2, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    goto/16 :goto_1

    .line 1090
    :cond_15
    const-string v5, "kt_welcomelogin"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1091
    invoke-virtual {p0, p2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->completeKtWelcomeLogin(I)V

    .line 1094
    :cond_16
    if-eqz p2, :cond_17

    const/16 v5, 0xa

    if-ne p2, v5, :cond_19

    .line 1095
    :cond_17
    const-string v5, "att_locker_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    goto/16 :goto_1

    .line 1098
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPrevious()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 1100
    :cond_19
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1a

    const/16 v5, 0xb

    if-eq p2, v5, :cond_1a

    const/4 v5, 0x7

    if-eq p2, v5, :cond_1a

    const/4 v5, 0x3

    if-eq p2, v5, :cond_1a

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1c

    .line 1102
    :cond_1a
    const-string v5, "att_welcome_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x7

    if-ne p2, v5, :cond_1b

    sget-boolean v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    if-eqz v5, :cond_1b

    iget-boolean v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-eqz v5, :cond_1b

    .line 1103
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.osp.app.signin.action.SAMSUNG_ACCOUNT_SETUPWIZARD"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "required_auth"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1105
    const/16 v5, 0x3f3

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1106
    const-string v5, "SecSetupWizardActivity"

    const-string v6, "Lanching Samsung Account with extra information for reactivation"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1108
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 1110
    :cond_1c
    const/16 v5, 0xe

    if-ne p2, v5, :cond_0

    .line 1111
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    if-eqz v5, :cond_1e

    const-string v5, "complete"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrentItem()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getNext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "dual_sim_always_on_phone_number_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrentItem()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getNext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1113
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    goto/16 :goto_1

    .line 1115
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 1121
    :pswitch_1
    const-string v5, "att_welcome_setup"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1123
    const-string v5, "SecSetupWizardActivity"

    const-string v6, "Back to welcome screen"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    if-eqz v5, :cond_0

    .line 1125
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v5}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrentItem()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 1127
    :cond_1f
    const-string v5, "complete"

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrentItem()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getNext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1128
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    goto/16 :goto_1

    .line 1130
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 1022
    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 256
    :cond_0
    new-instance v3, Lcom/sec/android/app/SecSetupWizard/LogMsg;

    invoke-direct {v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    .line 257
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    const-string v7, "===== start ====="

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v6, "SecSetupWizardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isShouldSkipActivity(SKIP_PACKAGE_NAME_SAMSUNGSETUPWIZARD): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SecSetupWizard"

    invoke-static {v8}, Lcom/sec/android/app/SecSetupWizard/Utils;->isShouldSkipActivity(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "google"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "user_setup_complete"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v4

    .line 261
    .local v1, "isProvisionedGoogleB2BDevice":Z
    :goto_0
    const-string v3, "SecSetupWizard"

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/Utils;->isShouldSkipActivity(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_1

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_4

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->finish()V

    .line 344
    :cond_2
    :goto_1
    return-void

    .end local v1    # "isProvisionedGoogleB2BDevice":Z
    :cond_3
    move v1, v5

    .line 260
    goto :goto_0

    .line 268
    .restart local v1    # "isProvisionedGoogleB2BDevice":Z
    :cond_4
    const/4 v0, 0x0

    .line 269
    .local v0, "isCompleted":Z
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 270
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/Utils;->readReactivationFlag(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    .line 274
    :cond_5
    const-string v3, "enterprise_policy"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 276
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_6

    .line 277
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mRestPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 280
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_7

    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    .line 281
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSupportMUM:Z

    .line 283
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "persist.sys.setupwizard: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "persist.sys.setupwizard"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserHandle.myUserId(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsSupportMUM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsSupportMUM:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v3, "FINISH"

    const-string v4, "persist.sys.setupwizard"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_8

    .line 288
    const/4 v0, 0x1

    .line 290
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    const-string v5, "SetupWizard Complete again complete set"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->finish()V

    goto/16 :goto_1

    :cond_7
    move v4, v5

    .line 280
    goto/16 :goto_2

    .line 296
    :cond_8
    if-nez v0, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->disableNotifications()V

    .line 298
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fromCamera"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getLength()I

    move-result v3

    if-le v3, v9, :cond_9

    .line 300
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->initSequenceList()V

    .line 303
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v7}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getLength()I

    move-result v3

    if-ne v3, v9, :cond_c

    .line 305
    const-string v3, "persist.sys.setupwizard"

    const-string v4, "START"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_setup_complete"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 309
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->makeCameraOnlySequenceList()V

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 311
    :cond_a
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 312
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->makeVideoIntroSequenceList()V

    .line 313
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 315
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->makeDefaultSequenceList()V

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 320
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate is called again, current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.sys.setupwizard"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v3, "complete"

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 322
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    const-string v5, "setupComplete in onCreate()"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    goto/16 :goto_1

    .line 324
    :cond_d
    sget-boolean v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsAfwSequenceList:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    if-eqz v3, :cond_e

    .line 326
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrentItem()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 327
    :cond_e
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.sys.setupwizard"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupStart in onCreate(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v6}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "persist.sys.setupwizard"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SecSetupWizardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist.sys.setupwizard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "actionId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1

    .line 336
    :cond_f
    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/Utils;->isActivityOfSetupWizard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    if-eqz v3, :cond_2

    .line 338
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrentItem()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 393
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 993
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 995
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-nez v0, :cond_1

    .line 996
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    const-string v0, "google_account_setup"

    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "google_name_setup"

    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    .line 1003
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v1, "SecSetupWizardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v0, 0x0

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 372
    const-string v1, "google_account_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "google_name_setup"

    sget-object v2, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    if-ne v1, v5, :cond_2

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPrevious()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    .line 378
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurrentResult:I

    if-ne v1, v5, :cond_4

    .line 379
    :cond_3
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getCurrentItem()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    .line 382
    :cond_4
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 383
    .local v0, "isProvisionedGoogleB2BDevice":Z
    :cond_5
    if-eqz v0, :cond_6

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "google b2b device and user setup is completed so finish setupwizard"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->finish()V

    .line 390
    :cond_6
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_setup_complete"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mUserSetupCompleted:Z

    .line 353
    sget-boolean v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mUserSetupCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsOwner:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mReactivationLock:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsAfwSequenceList:Z

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v2, "SecSetupWizardActivity"

    const-string v3, "setupwizard privisioned by afw will finish"

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->initSequenceList()V

    .line 356
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->makeAfwMinimumSequenceList()V

    .line 357
    sget-object v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getLength()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupComplete()V

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->finish()V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    sget-object v0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mList:Lcom/sec/android/app/SecSetupWizard/SequenceList;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setupStart(Lcom/sec/android/app/SecSetupWizard/SequenceItem;)V

    .line 363
    sput-boolean v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mIsAfwSequenceList:Z

    goto :goto_0
.end method

.method public setLargeFont()V
    .locals 4

    .prologue
    .line 1653
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    :goto_0
    const-string v1, "SecSetupWizardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK setLargeFont : mCurConfig.fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const-wide v2, 0x3ff30a3d70a3d70aL    # 1.19

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->objValue:Ljava/lang/Object;

    .line 1660
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1661
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1662
    return-void

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecSetupWizardActivity"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockPhoneLock()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 222
    const-string v5, "/efs/sms/sktcarrierlockmode"

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->secFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    const-string v5, "LostLock"

    const-string v6, "LostPhone Step : /efs/sms/sktcarrierlockmode"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v5, "/efs/sms/sktcarrierlockmode"

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->secFileRead(Ljava/lang/String;)[B

    move-result-object v0

    .line 225
    .local v0, "bytes":[B
    new-instance v3, Ljava/lang/String;

    array-length v5, v0

    invoke-direct {v3, v0, v8, v5}, Ljava/lang/String;-><init>([BII)V

    .line 226
    .local v3, "readData":Ljava/lang/String;
    const-string v5, "LostLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LostPhone Lock Status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-eqz v3, :cond_0

    const-string v5, "ON"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "flpSubscribeIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    const-string v6, "android.permission.MASTER_CLEAR"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 235
    .end local v0    # "bytes":[B
    .end local v1    # "flpSubscribeIntent":Landroid/content/Intent;
    .end local v3    # "readData":Ljava/lang/String;
    :cond_0
    const-string v5, "/efs/sktdm_mem/lawlock.txt"

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->secFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    const-string v5, "LostLock"

    const-string v6, "LostPhone Step : /efs/sktdm_mem/lawlock.txt"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v5, "/efs/sktdm_mem/lawlock.txt"

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->secFileRead(Ljava/lang/String;)[B

    move-result-object v0

    .line 238
    .restart local v0    # "bytes":[B
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    invoke-direct {v4, v0, v8, v5}, Ljava/lang/String;-><init>([BII)V

    .line 239
    .local v4, "readData_plus":Ljava/lang/String;
    const-string v5, "LostLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LostPhonePlus Lock Status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz v4, :cond_1

    const-string v5, "ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, "flpSubscribePlusIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->v_context:Landroid/content/Context;

    const-string v6, "android.permission.MASTER_CLEAR"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 247
    .end local v0    # "bytes":[B
    .end local v2    # "flpSubscribePlusIntent":Landroid/content/Intent;
    .end local v4    # "readData_plus":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected setupComplete()V
    .locals 12

    .prologue
    .line 1354
    iget-object v9, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v10, "SecSetupWizardActivity"

    const-string v11, "setupComplete"

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "sync"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_0
    const/4 v8, 0x0

    .line 1365
    .local v8, "stateChg":Z
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time_zone"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1367
    const/4 v8, 0x1

    .line 1368
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time_zone"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1372
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSktAccountStatus()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1373
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.skt.apra.action.SETUP_WIZARD_HAS_RUN"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1375
    const-string v9, "SktAccount"

    const-string v10, "setupComplete Send"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "user_setup_complete"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1388
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getSktTphoneSetupStatus()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1389
    const-string v9, "SktTPhone"

    const-string v10, "Broadcast : skttphone_setupwizard"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1391
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1395
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1396
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->enableNotifications()V

    .line 1397
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->updateLastSetupShown(Landroid/content/Context;)V

    .line 1398
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcastDeviceNameChanged()V

    .line 1399
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcastSetupWizardComplete()V

    .line 1400
    const-string v9, "persist.sys.setupwizard"

    const-string v10, "FINISH"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1403
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setLockPhoneLock()V

    .line 1406
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->setEasyMode()V

    .line 1409
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1410
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v9, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;

    invoke-direct {v0, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1411
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v7, v0, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1413
    const-string v9, "persist.sys.userdata_flashed"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1414
    .local v6, "mUserDataFlashed":Z
    const/4 v5, 0x1

    .line 1416
    .local v5, "mPreloadAppExist":Z
    :try_start_1
    const-string v9, "com.samsung.preloadapp"

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1422
    :goto_1
    if-eqz v6, :cond_4

    .line 1423
    new-instance v4, Landroid/content/ComponentName;

    const-string v9, "com.samsung.preloadapp"

    const-string v10, "com.samsung.preloadapp.PreloadApp"

    invoke-direct {v4, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    .local v4, "mDisablePreload":Landroid/content/ComponentName;
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v7, v4, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1444
    .end local v4    # "mDisablePreload":Landroid/content/ComponentName;
    :cond_4
    const-string v9, "BMW"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1445
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1446
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1447
    const-string v9, "com.sec.android.app.launcher"

    const-string v10, "com.android.launcher2.Launcher"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->startActivity(Landroid/content/Intent;)V

    .line 1463
    :goto_2
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCarrierLockEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1464
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcastFindingLostPhone()V

    .line 1467
    :cond_5
    if-eqz v8, :cond_6

    .line 1468
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time_zone"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1472
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_SendTerminateSetupWizardBroadCast"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    if-nez v5, :cond_7

    .line 1473
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.vodafone.vodafone360updates.intent.action.OEM_SETUP_WIZARD_FINISHED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v3, "intent_vf":Landroid/content/Intent;
    const-string v9, "SetupWizardLaunchedBy"

    const-string v10, "LaunchedBySystem"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1476
    iget-object v9, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v10, "SecSetupWizardActivity"

    const-string v11, "send terminate setupwizard broadcast message"

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    .end local v3    # "intent_vf":Landroid/content/Intent;
    :cond_7
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "sync"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1486
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->finish()V

    .line 1487
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->killSetupWizardProcess()V

    .line 1488
    return-void

    .line 1359
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "mPreloadAppExist":Z
    .end local v6    # "mUserDataFlashed":Z
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "stateChg":Z
    :catch_0
    move-exception v1

    .line 1360
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1417
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v5    # "mPreloadAppExist":Z
    .restart local v6    # "mUserDataFlashed":Z
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "stateChg":Z
    :catch_1
    move-exception v1

    .line 1418
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    .line 1419
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1451
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.setupwizard.EXIT"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1452
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v9, "actionId"

    const-string v10, "exit"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    const v9, 0x10028000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1454
    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1455
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 1456
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    const/high16 v9, 0x10000000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1459
    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1482
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v1

    .line 1483
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1577
    const-string v2, "SecSetupWizardActivity"

    const-string v3, "KKK writeFontSizePreference"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1580
    .local v1, "fontScale":F
    const-string v2, "SecSetupWizardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1582
    sget v1, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->LARGE_FONT_SCALE:F

    .line 1583
    const-string v2, "SecSetupWizardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1587
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1588
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;->mChangeFont:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    .end local v1    # "fontScale":F
    :goto_0
    return-void

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SecSetupWizardActivity"

    const-string v3, "KKK Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
