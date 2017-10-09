.class Lcom/android/server/AlarmManagerServiceExt;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$PackageList;,
        Lcom/android/server/AlarmManagerServiceExt$Sales;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;,
        Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    }
.end annotation


# static fields
.field private static final APP_SYNC_LOG:Z

.field private static final BLACKLIST:Ljava/lang/String; = "BlackList"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/data/misc/lpnet/lpnetConfig"

.field private static final CONFIG_SECTION:Ljava/lang/String; = "APPSYNC_INIT"

.field static final COUNTRY_CODE_CHN:Z

.field private static final DEBUG_MID:Z

.field private static final DELTA_FROM_TRIGGERS:Ljava/lang/String; = "deltaFromTriggers"

.field private static final ENABLE_CHN_DEACT_IN_SCR_ON:Ljava/lang/String; = "DeactivateInScreenOn"

.field private static final ENABLE_CHN_DEACT_IN_USB_ON:Ljava/lang/String; = "DeactivateInUSB"

.field private static final ENABLE_CHN_SOLUTION:Ljava/lang/String; = "enableChnSolution"

.field private static final EXTRA_WHITE_LIST:Ljava/lang/String; = "ExtraWhiteList"

.field private static NEW_ALARM_MANAGER:Z = false

.field private static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field private static final TAG:Ljava/lang/String; = "AlarmManagerEXT"

.field static final sCountryCode:Ljava/lang/String;

.field static final sIsGalaxyView:Z

.field static final sProductModel:Ljava/lang/String;


# instance fields
.field mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/app_sync_log_enable"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v1

    :goto_1a
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    .line 129
    const-string v0, "0x494d"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_7f

    move v0, v1

    :goto_35
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    .line 274
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    .line 276
    const-string v0, "CHINA"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "TAIWAN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "HONG KONG"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_5e
    move v0, v1

    :goto_5f
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->COUNTRY_CODE_CHN:Z

    .line 280
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerServiceExt;->sProductModel:Ljava/lang/String;

    .line 282
    sget-object v0, Lcom/android/server/AlarmManagerServiceExt;->sProductModel:Ljava/lang/String;

    if-eqz v0, :cond_83

    sget-object v0, Lcom/android/server/AlarmManagerServiceExt;->sProductModel:Ljava/lang/String;

    const-string v3, "SM-T67"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    :goto_78
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->sIsGalaxyView:Z

    return-void

    :cond_7b
    move v0, v2

    .line 127
    goto :goto_1a

    :cond_7d
    move v0, v2

    .line 129
    goto :goto_2c

    :cond_7f
    move v0, v2

    .line 141
    goto :goto_35

    :cond_81
    move v0, v2

    .line 276
    goto :goto_5f

    :cond_83
    move v1, v2

    .line 282
    goto :goto_78
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 150
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    return v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    return v0
.end method

.method static isAppSync3PlusTarget(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3749
    const/4 v1, 0x0

    .line 3751
    .local v1, "isSmartManagerProviderExist":Z
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.sm"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_42

    move-result-object v4

    if-eqz v4, :cond_3b

    move v1, v2

    .line 3755
    :goto_11
    sget-boolean v4, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-nez v4, :cond_3d

    if-eqz v1, :cond_3d

    move v0, v2

    .line 3758
    .local v0, "enable":Z
    :goto_18
    const-string v3, "dev.ssrm.appsync3p"

    if-eqz v0, :cond_3f

    const-string/jumbo v2, "true"

    :goto_1f
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppSync3+ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    return v0

    .end local v0    # "enable":Z
    :cond_3b
    move v1, v3

    .line 3751
    goto :goto_11

    :cond_3d
    move v0, v3

    .line 3755
    goto :goto_18

    .line 3758
    .restart local v0    # "enable":Z
    :cond_3f
    const-string v2, "false"

    goto :goto_1f

    .line 3752
    .end local v0    # "enable":Z
    :catch_42
    move-exception v4

    goto :goto_11
.end method

.method public static isApplicationUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .prologue
    .line 285
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_a

    const/16 v0, 0x4e1f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static maxRepeatInterval(JJ)J
    .registers 16
    .param p0, "interval"    # J
    .param p2, "window"    # J

    .prologue
    .line 249
    move-wide v4, p0

    .line 250
    .local v4, "ret":J
    add-long v2, p0, p2

    .line 251
    .local v2, "maxInterval":J
    const-wide/16 v8, 0x2

    div-long v0, p0, v8

    .line 252
    .local v0, "halfInterval":J
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-nez v8, :cond_f

    move-wide v6, v4

    .line 271
    .end local v4    # "ret":J
    .local v6, "ret":J
    :goto_e
    return-wide v6

    .line 256
    .end local v6    # "ret":J
    .restart local v4    # "ret":J
    :cond_f
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-ltz v8, :cond_22

    .line 257
    long-to-double v8, v2

    long-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long v4, v8, v0

    :goto_20
    move-wide v6, v4

    .line 271
    .end local v4    # "ret":J
    .restart local v6    # "ret":J
    goto :goto_e

    .line 262
    .end local v6    # "ret":J
    .restart local v4    # "ret":J
    :cond_22
    const-wide/32 v8, 0x1b7740

    cmp-long v8, v2, v8

    if-ltz v8, :cond_3b

    .line 263
    long-to-double v8, v2

    const-wide v10, 0x41224f8000000000L    # 600000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/32 v10, 0x927c0

    mul-long v4, v8, v10

    goto :goto_20

    .line 269
    :cond_3b
    long-to-double v8, v2

    const-wide v10, 0x41124f8000000000L    # 300000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/32 v10, 0x493e0

    mul-long v4, v8, v10

    goto :goto_20
.end method


# virtual methods
.method public getSyncScheduler()Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-object v0
.end method
