.class public Lcom/android/settings/powersavingmode/PowerNotiDataService;
.super Landroid/app/Activity;
.source "PowerNotiDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLimitBackgroundDataTask:Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/android/settings/powersavingmode/PowerNotiDataService$1;

    invoke-direct {v0}, Lcom/android/settings/powersavingmode/PowerNotiDataService$1;-><init>()V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 107
    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerNotiDataService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerNotiDataService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerNotiDataService;[Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerNotiDataService;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->setUidAllowedForData([Ljava/lang/String;Z)V

    return-void
.end method

.method private setUidAllowedForData([Ljava/lang/String;Z)V
    .locals 6
    .param p1, "appList"    # [Ljava/lang/String;
    .param p2, "set"    # Z

    .prologue
    .line 230
    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    .line 232
    .local v2, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 233
    const-string v3, "PowerNotiDataService.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AllowedForData getUid(appList[i])="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->getUid(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Applist is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz p2, :cond_0

    .line 236
    :try_start_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->getUid(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicyManager;->setUidAllowedForData(II)V

    .line 232
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->getUid(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicyManager;->setUidAllowedForData(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void
.end method


# virtual methods
.method public getLimitBackgoundData()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "value":I
    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, "powersavingmode_switch":I
    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_powersaving_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "data_powersaving":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 77
    move v2, v0

    .line 81
    :goto_0
    return v2

    .line 79
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUid(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 252
    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 255
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 261
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 259
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-string v1, "PowerNotiDataService.java"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sput-object p0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;

    .line 38
    sget-object v1, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mContentResolver:Landroid/content/ContentResolver;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->getLimitBackgoundData()I

    move-result v0

    .line 42
    .local v0, "data_powersaving":I
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mLimitBackgroundDataTask:Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;-><init>(Lcom/android/settings/powersavingmode/PowerNotiDataService;Lcom/android/settings/powersavingmode/PowerNotiDataService$1;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mLimitBackgroundDataTask:Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService;->mLimitBackgroundDataTask:Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "PowerNotiDataService.java"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "PowerNotiDataService.java"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "PowerNotiDataService.java"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 67
    return-void
.end method
