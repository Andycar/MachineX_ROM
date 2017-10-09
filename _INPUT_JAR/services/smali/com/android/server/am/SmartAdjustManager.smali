.class public Lcom/android/server/am/SmartAdjustManager;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SmartAdjustManager$IniFile;,
        Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;,
        Lcom/android/server/am/SmartAdjustManager$PackageTable;,
        Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    }
.end annotation


# static fields
.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field private static final BROADCAST_SERVICEMANAGER_SHIRINKSERVICE:Ljava/lang/String; = "com.android.server.am.BROADCAST_SERVICEMANAGER_SHIRINKSERVICE"

.field private static final CONFIG_ALRAMWHEN:Ljava/lang/String; = "FreezingAlramInterval"

.field private static final CONFIG_BLACKLIST:Ljava/lang/String; = "GcmBlackList"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/data/misc/lpnet/lpnetConfig"

.field private static final CONFIG_FREEZINGWHEN:Ljava/lang/String; = "FreezingAfterScreenOff"

.field private static final CONFIG_GCMFREEZING:Ljava/lang/String; = "enableGcmFreezing"

.field private static final CONFIG_SECTION:Ljava/lang/String; = "GCMFREEZER_INIT"

.field static final CSC_FILE:Ljava/lang/String; = "/system/csc/default_application_order.xml"

.field private static final CSC_TAG:Ljava/lang/String; = "favorite"

.field static DB_CONN_KILL_SKIP:Z = false

.field static DEBUG_SPCM:Z = false

.field private static final GCM_LOCKER_ALARM:Ljava/lang/String; = "GCM_LOCKER_ALARM"

.field static final HOTNESS_ACTIVITY:I = 0x0

.field static final HOTNESS_EMPTY:I = 0x1

.field static final MOVE_TO_INACTIVE_TIME_INTERNAL:J = 0xf731400L

.field static final PROTECTED_PACKAGES_LIMIT:I = 0x6

.field static SAMP_DEBUG:Z = false

.field static SAMP_DEBUG_SPCM:Z = false

.field static SAMP_DEBUG_TRACE:Z = false

.field static SAMP_ENABLE:Z = false

.field static SAMP_HOTNESS_ENABLE:Z = false

.field static SAMP_SPCM_ENABLE:Z = false

.field static SERVICE_KILL_LIMIT_OF_ADJ:I = 0x0

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static SMART_DHA_CACHED_APP_MAX:I = 0x0

.field static final SMART_DHA_HOTNESS_PROTECT_TIME:J = 0x1388L

.field public static final SPCM_APPLOCKING_RESETTIME_MSG:I = 0x321

.field static final SPCM_BASE_PACKAGE_SCORE:I = 0x2710

.field static final SPCM_COOL_TIME:J = 0x7530L

.field static SPCM_DB_ENABLE:Z = false

.field static SPCM_DB_LAUNCHER_ONLY:Z = false

.field static final SPCM_FORCESTOP_INTERVAL_TIME:J = 0x927c0L

.field static SPCM_GCM_KILL_ENABLE:Z = false

.field static SPCM_INIT:Z = false

.field static SPCM_KILL_SKIP:Z = false

.field static SPCM_PRELOAD_ENABLE:Z = false

.field static SPCM_TRIGGER:Z = false

.field static final TAG:Ljava/lang/String; = "SAMP"

.field static final TAG_HOTNESS:Ljava/lang/String; = "SAMP_Hotness"

.field static final TAG_KILL:Ljava/lang/String; = "SPCM kill"

.field static final TAG_SDHA:Ljava/lang/String; = "SAMP_SDHA"

.field static final TAG_SPCM:Ljava/lang/String; = "SAMP_SPCM"

.field static final TAG_TEST:Ljava/lang/String; = "_test"

.field static final UPDATE_PACKAGES_INTERNAL_TIME:J = 0x36ee80L

.field static final UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J = 0x1d4c0L

.field static debuggingR:Lcom/android/server/am/ProcessRecord;

.field static isFirst:Z

.field static isLogPrinted:Z

.field static mGcmFreezingEnable:Z

.field static strPrevAppForActivityHotness:Ljava/lang/String;

.field static strPrevAppForEmptyHotness:Ljava/lang/String;


# instance fields
.field private GCMThreshInterval:J

.field private SAMP_HOTNESS_MAX_VALUE:I

.field protected SAMP_PPM_ENABLE:Z

.field protected SMART_SPM_ENABLE:Z

.field private UPDATE_UNUSEDPACKAGES_INTERVAL:J

.field final cscpkgName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mActivePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field final mActivePackagesByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarm:Landroid/app/AlarmManager;

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field mAppWidgetServiceLock:Ljava/lang/Object;

.field private mBlacklistPackagesFromConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDefaultAlramInterval:J

.field private mDefaultFreezingInterval:J

.field private final mDefaultServiceLimitScale:I

.field public mExternalWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGCMKillPkgLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGCMKillProcLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mGCMLockerAlarmIntent:Landroid/app/PendingIntent;

.field mGCMProcNameLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGCMPushPkgLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

.field private final mHotnessAdjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SmartAdjustManager$HotnessValue;",
            ">;"
        }
    .end annotation
.end field

.field public mInActivePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field final mInActivePackagesByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field final mKillingServiceGraylist:[Ljava/lang/String;

.field private final mLastKillTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSPCMExtWhiteListMod:J

.field private mLastSPCMWorkingTime:J

.field public mLatestProtectedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field private mPackageScoreUpdated:Z

.field private mPrevGCMKillBlockPkg:Ljava/lang/String;

.field private mPrevGCMKillBlockPkgTime:J

.field private mPrevPrevGCMKillBlockPkg:Ljava/lang/String;

.field private mPrevPrevGCMKillBlockPkgTime:J

.field mProcessList:Lcom/android/server/am/ProcessList;

.field mProcessStats:Lcom/android/server/am/ProcessStatsService;

.field private mProcessesExtraCache:J

.field private mSPCMDBfromSMList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScreenOn:Z

.field private mServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mUpdateActiveInActivePackagesThread:Ljava/lang/Thread;

.field public mVpnPackageName:Ljava/lang/String;

.field mWallpaperServiceLock:Ljava/lang/Object;

.field mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

.field numCached:I

.field numEmpty:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 128
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    .line 129
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 130
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    .line 131
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    .line 132
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    .line 133
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    .line 134
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    .line 136
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    .line 137
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    .line 138
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    .line 139
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_KILL_SKIP:Z

    .line 142
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    .line 143
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_GCM_KILL_ENABLE:Z

    .line 150
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_INIT:Z

    .line 151
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_TRIGGER:Z

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SmartAdjustManager;->debuggingR:Lcom/android/server/am/ProcessRecord;

    .line 154
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->isLogPrinted:Z

    .line 159
    const/16 v0, 0xe

    sput v0, Lcom/android/server/am/SmartAdjustManager;->SERVICE_KILL_LIMIT_OF_ADJ:I

    .line 167
    const-string/jumbo v0, "ro.config.sdha_apps_bg_max"

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_BG_APPS_MAX:I

    .line 168
    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    .line 172
    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 224
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    .line 3075
    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->mGcmFreezingEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessStatsService;Landroid/os/Handler;)V
    .registers 16
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "processList"    # Lcom/android/server/am/ProcessList;
    .param p4, "processStats"    # Lcom/android/server/am/ProcessStatsService;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    const-wide/32 v8, 0x493e0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v3, p0, Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/server/am/SmartAdjustManager;->SAMP_PPM_ENABLE:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/server/am/SmartAdjustManager;->SMART_SPM_ENABLE:Z

    .line 161
    iput v2, p0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    .line 162
    iput v2, p0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    .line 163
    iput v2, p0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    .line 164
    iput v2, p0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    .line 169
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    .line 171
    const v0, 0xf4240

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_MAX_VALUE:I

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mCachedServiceList:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;

    .line 182
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultServiceLimitScale:I

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    .line 199
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    .line 211
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    .line 214
    iput-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMWorkingTime:J

    .line 215
    iput-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMExtWhiteListMod:J

    .line 216
    iput-boolean v2, p0, Lcom/android/server/am/SmartAdjustManager;->mPackageScoreUpdated:Z

    .line 218
    iput-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mVpnPackageName:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    .line 233
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.dummy"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    .line 3058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    .line 3059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mGCMProcNameLists:Ljava/util/ArrayList;

    .line 3060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    .line 3061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mGCMPushPkgLists:Ljava/util/ArrayList;

    .line 3062
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkg:Ljava/lang/String;

    .line 3063
    iput-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkgTime:J

    .line 3064
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mPrevPrevGCMKillBlockPkg:Ljava/lang/String;

    .line 3065
    iput-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mPrevPrevGCMKillBlockPkgTime:J

    .line 3074
    iput-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    .line 3076
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultFreezingInterval:J

    .line 3077
    iput-wide v8, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultAlramInterval:J

    .line 3078
    iput-wide v8, p0, Lcom/android/server/am/SmartAdjustManager;->GCMThreshInterval:J

    .line 239
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 240
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    .line 241
    iput-object p2, p0, Lcom/android/server/am/SmartAdjustManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 242
    iput-object p3, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 243
    iput-object p4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 248
    new-instance v0, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;-><init>(Lcom/android/server/am/SmartAdjustManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    .line 250
    return-void
.end method

.method private AddPackageInfoToSPCM(Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;)V
    .registers 13
    .param p1, "mSPCMDBfromSM"    # Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 847
    const/4 v2, 0x0

    .line 848
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v1, 0xd

    .line 851
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 893
    :cond_1b
    :goto_1b
    return-void

    .line 856
    :cond_1c
    :try_start_1c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v4, v5, v1, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_91

    move-result-object v2

    .line 864
    :cond_2c
    :goto_2c
    if-eqz v2, :cond_8a

    .line 865
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8a

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8a

    .line 866
    new-instance v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    invoke-direct {v3, p0}, Lcom/android/server/am/SmartAdjustManager$PackageTable;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    .line 867
    .local v3, "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->name:Ljava/lang/String;

    .line 868
    iput-object v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    .line 869
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    .line 870
    iput-boolean v7, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isRunning:Z

    .line 871
    iput-boolean v7, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isWidget:Z

    .line 872
    iput v7, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 873
    iput v7, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    .line 874
    iput-boolean v10, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    .line 875
    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastServiceActivityTime:J

    .line 876
    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    .line 877
    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    .line 879
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_8a

    .line 883
    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_PACKAGE_ADDED add new package -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .end local v3    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_8a
    const/4 v4, 0x1

    :try_start_8b
    invoke-virtual {p0, v4}, Lcom/android/server/am/SmartAdjustManager;->updateSPCMExternalWhiteList(Z)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_1b

    .line 891
    :catch_8f
    move-exception v4

    goto :goto_1b

    .line 859
    :catch_91
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_2c

    .line 861
    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting package info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c
.end method

.method private RunSPCMDB()V
    .registers 23

    .prologue
    .line 989
    new-instance v2, Lcom/android/server/am/SPCMDataBaseManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/am/SPCMDataBaseManager;-><init>(Landroid/content/Context;)V

    .line 990
    .local v2, "SPCMDB":Lcom/android/server/am/SPCMDataBaseManager;
    invoke-virtual {v2}, Lcom/android/server/am/SPCMDataBaseManager;->GetLockingTimeFromSM()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/SmartAdjustManager;->setPackageLockingTimeBySPCM(I)V

    .line 992
    const-wide/16 v16, 0x0

    .line 993
    .local v16, "mSPCMDBInterval":J
    const-wide/32 v14, 0xea60

    .line 994
    .local v14, "mSPCMDBInitInterval":J
    const-wide/32 v18, 0x2bf20

    .line 996
    .local v18, "mSPCMDBUpdateInterval":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 997
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_30

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Lcom/android/server/am/SPCMDataBaseManager;->GetPackgeInfofromSM(Landroid/util/ArrayMap;)V

    .line 1001
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_7f

    .line 1002
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_45

    .line 1003
    const-string v3, "SAMP_SPCM_test"

    const-string v5, "SPCMDB needs update to get package list"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_45
    const-wide/32 v16, 0xea60

    .line 1012
    :goto_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_a9

    .line 1014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1015
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_b3

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b3

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_6a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1018
    .local v11, "strPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/SmartAdjustManager;->UpdateSPCMDB(Ljava/lang/String;)V

    goto :goto_6a

    .line 1024
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "strPkgName":Ljava/lang/String;
    :catchall_7c
    move-exception v3

    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_4e .. :try_end_7e} :catchall_7c

    throw v3

    .line 1006
    :cond_7f
    :try_start_7f
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    const-wide/16 v20, 0x5

    div-long v6, v6, v20

    const-wide/32 v20, 0x2bf20

    cmp-long v3, v6, v20

    if-lez v3, :cond_92

    .line 1007
    const-wide/32 v16, 0x2bf20

    goto :goto_48

    .line 1010
    :cond_92
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-eqz v3, :cond_a5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    const-wide/16 v20, 0x5

    div-long v16, v6, v20

    :goto_a4
    goto :goto_48

    :cond_a5
    const-wide/32 v16, 0x36ee80

    goto :goto_a4

    .line 1012
    :catchall_a9
    move-exception v3

    monitor-exit v4
    :try_end_ab
    .catchall {:try_start_7f .. :try_end_ab} :catchall_a9

    throw v3

    .line 1021
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_ac
    :try_start_ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1024
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_b3
    monitor-exit v4
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_7c

    .line 1026
    const-wide/32 v4, 0xea60

    cmp-long v3, v16, v4

    if-nez v3, :cond_127

    .line 1028
    :try_start_bb
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_122

    .line 1053
    :cond_be
    :goto_be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1054
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Lcom/android/server/am/SPCMDataBaseManager;->GetPackgeInfofromSM(Landroid/util/ArrayMap;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_df

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/am/SPCMDataBaseManager;->UpdateResetTime(Landroid/util/ArrayMap;J)V

    .line 1060
    :cond_df
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/SmartAdjustManager;->mWallpaperServiceLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_e4
    .catchall {:try_start_c3 .. :try_end_e4} :catchall_11f

    .line 1061
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/SmartAdjustManager;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_e9
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_11c

    .line 1062
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_ee
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_119

    .line 1063
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_fa
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1064
    .restart local v11    # "strPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/SmartAdjustManager;->AddPackageInfoToSPCM(Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;)V

    goto :goto_fa

    .line 1068
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "strPkgName":Ljava/lang/String;
    :catchall_116
    move-exception v3

    monitor-exit v7
    :try_end_118
    .catchall {:try_start_ee .. :try_end_118} :catchall_116

    :try_start_118
    throw v3

    .line 1069
    :catchall_119
    move-exception v3

    monitor-exit v6
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_119

    :try_start_11b
    throw v3

    .line 1070
    :catchall_11c
    move-exception v3

    monitor-exit v5
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_11c

    :try_start_11e
    throw v3

    .line 1071
    :catchall_11f
    move-exception v3

    monitor-exit v4
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_11f

    throw v3

    .line 1030
    :catch_122
    move-exception v9

    .line 1031
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_be

    .line 1035
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1039
    .local v12, "lSleepBegin":J
    :cond_12b
    :goto_12b
    :try_start_12b
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_146

    .line 1045
    :goto_12e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    const-wide/32 v6, 0x36ee80

    cmp-long v3, v4, v6

    if-gtz v3, :cond_be

    .line 1048
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_12b

    .line 1049
    const-string v3, "SAMP_SPCM_test"

    const-string v4, "SPCMDataBase need more interval time"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    .line 1041
    :catch_146
    move-exception v9

    .line 1042
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12e

    .line 1067
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "lSleepBegin":J
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_14b
    :try_start_14b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/SmartAdjustManager;->updateActiveInActivePackagesLocked()V

    .line 1068
    monitor-exit v7
    :try_end_14f
    .catchall {:try_start_14b .. :try_end_14f} :catchall_116

    .line 1069
    :try_start_14f
    monitor-exit v6
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_119

    .line 1070
    :try_start_150
    monitor-exit v5
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_11c

    .line 1071
    :try_start_151
    monitor-exit v4
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_11f

    .line 1073
    invoke-virtual {v2}, Lcom/android/server/am/SPCMDataBaseManager;->GetLockingTimeFromSM()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/SmartAdjustManager;->setPackageLockingTimeBySPCM(I)V

    .line 1075
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_190

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1077
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_191

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/SPCMDataBaseManager;->UpdateDBAll(Landroid/util/ArrayMap;JJ)Z

    move-result v8

    .line 1080
    .local v8, "bRet":Z
    if-eqz v8, :cond_18f

    .line 1081
    const-string v3, "SAMP"

    const-string v4, "SPCMDataBase was updated!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v8    # "bRet":Z
    :cond_18f
    :goto_18f
    monitor-exit v20

    .line 1089
    :cond_190
    return-void

    .line 1085
    :cond_191
    const-string v3, "SAMP"

    const-string v4, "SPCMDataBase is empty!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18f

    .line 1087
    :catchall_199
    move-exception v3

    monitor-exit v20
    :try_end_19b
    .catchall {:try_start_16c .. :try_end_19b} :catchall_199

    throw v3
.end method

.method private UpdateSPCMDB(Ljava/lang/String;)V
    .registers 8
    .param p1, "strPkgName"    # Ljava/lang/String;

    .prologue
    .line 949
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 950
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 951
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    monitor-exit v3

    .line 975
    :goto_19
    return-void

    .line 955
    :cond_1a
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 956
    monitor-exit v3

    goto :goto_19

    .line 974
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2

    .line 959
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .line 961
    .local v1, "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    if-nez v1, :cond_33

    .line 962
    monitor-exit v3

    goto :goto_19

    .line 965
    :cond_33
    const-string v2, "1"

    iget-object v4, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 966
    new-instance v0, Lcom/android/server/am/SPCMDataBaseManager;

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/am/SPCMDataBaseManager;-><init>(Landroid/content/Context;)V

    .line 967
    .local v0, "SPCMDB":Lcom/android/server/am/SPCMDataBaseManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/SPCMDataBaseManager;->UpdateDBSpecific(Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;J)V

    .line 974
    .end local v0    # "SPCMDB":Lcom/android/server/am/SPCMDataBaseManager;
    :cond_4b
    :goto_4b
    monitor-exit v3

    goto :goto_19

    .line 970
    :cond_4d
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    .line 971
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_4b

    .line 972
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launched -: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_27 .. :try_end_6c} :catchall_24

    goto :goto_4b
.end method

.method static synthetic access$000(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->UpdateSPCMDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/SmartAdjustManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/am/SmartAdjustManager;->RunSPCMDB()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/SmartAdjustManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/SmartAdjustManager;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->getLowestScorePackageAndKillLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/SmartAdjustManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/am/SmartAdjustManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/am/SmartAdjustManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/am/SmartAdjustManager;->killGCMPkgs()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/SmartAdjustManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultFreezingInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/am/SmartAdjustManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultAlramInterval:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SmartAdjustManager;->setAlarm(Ljava/lang/String;J)V

    return-void
.end method

.method private final computeHotnessAdjLocked(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "cchListExcludeService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_6
    if-ltz v4, :cond_b7

    .line 320
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 323
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "provi":I
    :goto_16
    if-ltz v6, :cond_89

    .line 324
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 325
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "j":I
    :goto_28
    if-ltz v5, :cond_86

    .line 326
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .line 327
    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v1, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 328
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v1, v0, :cond_39

    .line 325
    :cond_36
    :goto_36
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    .line 329
    :cond_39
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v7, v8, :cond_36

    .line 330
    sget-boolean v7, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v7, :cond_81

    .line 331
    const-string v7, "SAMP_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content provider process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", client process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_81
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iput v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_36

    .line 323
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_86
    add-int/lit8 v6, v6, -0x1

    goto :goto_16

    .line 340
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "j":I
    :cond_89
    sget-boolean v7, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v7, :cond_b3

    .line 341
    const-string v7, "SAMP_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_b3
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_6

    .line 343
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "provi":I
    :cond_b7
    return-void
.end method

.method private createDeviceAdminInfo(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;
    .registers 6
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2711
    :try_start_0
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 2715
    :goto_7
    return-object v1

    .line 2712
    :catch_8
    move-exception v0

    .line 2713
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2715
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_28

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 806
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_28

    .line 808
    aget-object v0, v1, v4

    .line 812
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_28
    return-object v0
.end method

.method private getLowestScorePackageAndKillLocked(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1433
    .local p1, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_b

    .line 1434
    const-string v10, "SAMP_SPCM_test"

    const-string v11, "SPCM getLowestScorePackageAndKillLocked called !!"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1e

    .line 1438
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1d

    .line 1439
    const-string v10, "SAMP_SPCM_test"

    const-string/jumbo v11, "serviceList size is 0, so don\'t have anyone to kill"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_1d
    :goto_1d
    return-void

    .line 1443
    :cond_1e
    iget-boolean v10, p0, Lcom/android/server/am/SmartAdjustManager;->mPackageScoreUpdated:Z

    if-nez v10, :cond_2e

    .line 1445
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1d

    .line 1446
    const-string v10, "SAMP_SPCM_test"

    const-string v11, "PackageScore not calclated, all are 0, so didn\'t find anyone to kill"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1450
    :cond_2e
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SPCM_KILL_SKIP:Z

    if-nez v10, :cond_1d

    .line 1455
    const-string v10, "FINISH"

    const-string/jumbo v11, "persist.sys.setupwizard"

    const-string/jumbo v12, "xxx"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4c

    .line 1456
    const-string v10, "SAMP_SPCM"

    const-string v11, "Setup Wizard not finished! Keep current active lists"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1461
    :cond_4c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .local v9, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1464
    invoke-direct {p0}, Lcom/android/server/am/SmartAdjustManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v2

    .line 1468
    .local v2, "defaultIME":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_59
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_34d

    .line 1469
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1470
    .local v8, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1471
    .local v1, "actpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1472
    .local v4, "inactpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->resumedAppLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1474
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v10, :cond_e7

    .line 1475
    if-eqz v1, :cond_b8

    iget-boolean v10, v1, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    if-eqz v10, :cond_b8

    .line 1476
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_b0

    .line 1477
    const-string v10, "SAMPSPCMtest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is AppLocking Only !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_b0
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1479
    add-int/lit8 v3, v3, -0x1

    .line 1468
    :cond_b5
    :goto_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 1484
    :cond_b8
    if-eqz v4, :cond_e7

    iget-boolean v10, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    if-eqz v10, :cond_e7

    .line 1485
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_e1

    .line 1486
    const-string v10, "SAMPSPCMtest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is AppLocking Only !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_e1
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1488
    add-int/lit8 v3, v3, -0x1

    .line 1490
    goto :goto_b5

    .line 1494
    :cond_e7
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/am/SmartAdjustManager;->isDependsOnSystem(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11a

    .line 1495
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_114

    .line 1496
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " system_server package, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_114
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1498
    add-int/lit8 v3, v3, -0x1

    goto :goto_b5

    .line 1500
    :cond_11a
    if-eqz v2, :cond_150

    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_150

    .line 1501
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_149

    .line 1502
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is DefaultIME, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_149
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1504
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1506
    :cond_150
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mVpnPackageName:Ljava/lang/String;

    if-eqz v10, :cond_18a

    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mVpnPackageName:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18a

    .line 1507
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_183

    .line 1508
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is VPNPackage, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_183
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1510
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1512
    :cond_18a
    const/4 v10, 0x1

    invoke-virtual {p0, v8, v10}, Lcom/android/server/am/SmartAdjustManager;->hasNotification(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v10

    if-eqz v10, :cond_1bb

    .line 1513
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1b4

    .line 1514
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has notification, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_1b4
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1516
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1518
    :cond_1bb
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v10, :cond_1f5

    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallPaper(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f5

    .line 1519
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1ee

    .line 1520
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is active wallpaper, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_1ee
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1522
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1524
    :cond_1f5
    invoke-virtual {p0, v8}, Lcom/android/server/am/SmartAdjustManager;->hasActiveWidgets(Lcom/android/server/am/ProcessRecord;)Z

    move-result v10

    if-eqz v10, :cond_225

    .line 1525
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_21e

    .line 1526
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hasActiveWidgets, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_21e
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1528
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1530
    :cond_225
    if-eqz v0, :cond_25d

    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25d

    .line 1533
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_256

    .line 1534
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  foreground package!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_256
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1536
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1538
    :cond_25d
    if-nez v1, :cond_294

    if-eqz v4, :cond_294

    .line 1539
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_28d

    .line 1540
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "running process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in inactive list!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "was waiting to kill, do not sort it again!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_28d
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1544
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1546
    :cond_294
    if-nez v1, :cond_2cb

    if-nez v4, :cond_2cb

    .line 1547
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_2c4

    .line 1548
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "running process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not in inactive list!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "not in active list, think it like in white list, do not sort it !"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_2c4
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1552
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1554
    :cond_2cb
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30a

    .line 1555
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_303

    .line 1556
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "running process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in latest protection list!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "was waiting to kill, do not sort it again!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_303
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1560
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1562
    :cond_30a
    if-eqz v1, :cond_b5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x927c0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_b5

    .line 1563
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_346

    .line 1564
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "running process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in SPCM Forcestop-interval time!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "was waiting to kill, do not sort it again!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_346
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1567
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b5

    .line 1571
    .end local v0    # "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "actpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v4    # "inactpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_34d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_361

    .line 1572
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1d

    .line 1573
    const-string v10, "SAMP_SPCM_test"

    const-string/jumbo v11, "processes list size is 0, so don\'t have anyone to kill"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1577
    :cond_361
    new-instance v10, Lcom/android/server/am/SmartAdjustManager$5;

    invoke-direct {v10, p0}, Lcom/android/server/am/SmartAdjustManager$5;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1607
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1609
    .local v6, "killproc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1611
    .local v5, "killpkgName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_390

    .line 1612
    const-string v10, "SAMP_SPCM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "choose package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_390
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1616
    .local v7, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v7, :cond_3a0

    .line 1617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    .line 1621
    :cond_3a0
    invoke-virtual {p0, v6}, Lcom/android/server/am/SmartAdjustManager;->isInGrayList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v10

    if-eqz v10, :cond_3af

    .line 1622
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "SPCM kill lowestscore package!, but keep it as active package(GrayList)"

    invoke-virtual {v10, v5, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 1627
    :cond_3af
    const/4 v10, 0x0

    invoke-virtual {p0, v6, v10}, Lcom/android/server/am/SmartAdjustManager;->hasNotification(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v10

    if-eqz v10, :cond_3bf

    .line 1628
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "SPCM kill lowestscore package!, but keep it as active package(Notification)"

    invoke-virtual {v10, v5, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 1640
    :cond_3bf
    if-eqz v7, :cond_3de

    .line 1641
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1642
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    :cond_3d5
    :goto_3d5
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "SPCM kill lowestscore package!"

    invoke-virtual {v10, v5, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 1648
    :cond_3de
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_3d5

    .line 1649
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not exspected!!!!, killingpackage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not in active packages list"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d5
.end method

.method private getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;J)I
    .registers 14
    .param p1, "pkgtable"    # Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .param p2, "activities"    # [Landroid/content/pm/ActivityInfo;
    .param p4, "totaltime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            "[",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 2067
    .local p3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const-wide/32 v6, 0xf731400

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v0

    return v0
.end method

.method private getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I
    .registers 36
    .param p1, "pkgtable"    # Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .param p2, "activities"    # [Landroid/content/pm/ActivityInfo;
    .param p4, "totaltime"    # J
    .param p6, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            "[",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;JJ)I"
        }
    .end annotation

    .prologue
    .line 2071
    .local p3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_b

    .line 2072
    const-string v22, "SAMP_SPCM_test"

    const-string v23, "--- getPackageActivityscore --- "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_b
    move-object/from16 v0, p2

    array-length v6, v0

    .line 2075
    .local v6, "count":I
    const/16 v19, 0x0

    .line 2076
    .local v19, "score":I
    const v7, 0x20015

    .line 2083
    .local v7, "dateFormatFlags":I
    if-eqz p2, :cond_19c

    if-lez v6, :cond_19c

    .line 2084
    const/16 v22, 0x0

    aget-object v4, p2, v22

    .line 2086
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v8, 0x0

    .line 2087
    .local v8, "foreground_score":I
    const/4 v14, 0x0

    .line 2089
    .local v14, "lasttime_score":I
    const-wide/16 v10, 0x0

    .line 2090
    .local v10, "foregroundtime":J
    const-wide/16 v12, 0x0

    .line 2091
    .local v12, "lasttime":J
    const/4 v9, 0x0

    .line 2093
    .local v9, "found":Z
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2094
    .local v5, "activityName":Ljava/lang/String;
    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2095
    .local v15, "packageName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2097
    .local v18, "processName":Ljava/lang/String;
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_76

    .line 2098
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- ActivityInfo activityname "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " processName "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " packageName "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " uid "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_76
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_96

    .line 2111
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- getPackageActivityscore running in last 7 days packages size --- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_96
    const/16 v16, 0x0

    .local v16, "pkg_i":I
    :goto_98
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_161

    .line 2114
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    .line 2116
    .local v17, "pkgstat":Landroid/app/usage/UsageStats;
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_104

    .line 2117
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- 3 days active packages  --- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " foreground time "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mLastTimeUsed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_104
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19d

    .line 2122
    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 2123
    move-object/from16 v0, v17

    iget-wide v12, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 2124
    const/4 v9, 0x1

    .line 2126
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_161

    .line 2127
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- find this package --- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " foreground time "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    div-long v24, v10, v24

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mLastTimeUsed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v12, v13, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    .end local v17    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_161
    if-nez v9, :cond_1a1

    .line 2136
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_16e

    .line 2137
    const-string v22, "SAMP_SPCM_test"

    const-string v23, "--- not found in 7 days packages --- "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_16e
    const/4 v8, 0x0

    .line 2139
    const/4 v14, 0x0

    .line 2165
    :goto_170
    add-int v19, v8, v14

    .line 2167
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_19c

    .line 2168
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- getPackageActivityscore --- foreground_score "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " lasttime_score "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    .end local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "activityName":Ljava/lang/String;
    .end local v8    # "foreground_score":I
    .end local v9    # "found":Z
    .end local v10    # "foregroundtime":J
    .end local v12    # "lasttime":J
    .end local v14    # "lasttime_score":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "pkg_i":I
    .end local v18    # "processName":Ljava/lang/String;
    :cond_19c
    return v19

    .line 2112
    .restart local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "activityName":Ljava/lang/String;
    .restart local v8    # "foreground_score":I
    .restart local v9    # "found":Z
    .restart local v10    # "foregroundtime":J
    .restart local v12    # "lasttime":J
    .restart local v14    # "lasttime_score":I
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "pkg_i":I
    .restart local v17    # "pkgstat":Landroid/app/usage/UsageStats;
    .restart local v18    # "processName":Ljava/lang/String;
    :cond_19d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_98

    .line 2141
    .end local v17    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_1a1
    const-wide/16 v22, 0x0

    cmp-long v22, p4, v22

    if-eqz v22, :cond_1b0

    .line 2142
    const-wide/16 v22, 0x2710

    mul-long v22, v22, v10

    div-long v22, v22, p4

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 2144
    :cond_1b0
    if-nez v8, :cond_1b9

    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-eqz v22, :cond_1b9

    .line 2145
    const/4 v8, 0x1

    .line 2147
    :cond_1b9
    if-lez v8, :cond_1bd

    .line 2148
    add-int/lit16 v8, v8, 0x7d0

    .line 2150
    :cond_1bd
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_1ed

    .line 2151
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- foreground_score --- totaltime "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    div-long v24, p4, v24

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " foreground_score "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_1ed
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v20, v22, v12

    .line 2155
    .local v20, "tmptime":J
    const-wide/16 v22, 0x2710

    const-wide/16 v24, 0x2710

    mul-long v24, v24, v20

    div-long v24, v24, p6

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v14, v0

    .line 2157
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_230

    .line 2158
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- foreground_score --- tmptime "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    div-long v24, v20, v24

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " lasttime_score "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_230
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    goto/16 :goto_170
.end method

.method private getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I
    .registers 16
    .param p1, "providers"    # [Landroid/content/pm/ProviderInfo;

    .prologue
    .line 2175
    const/4 v8, 0x0

    .line 2176
    .local v8, "score":I
    const/4 v10, 0x0

    .line 2177
    .local v10, "tmpscore":I
    if-eqz p1, :cond_e0

    array-length v11, p1

    if-lez v11, :cond_e0

    .line 2178
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v11, p1

    if-ge v2, v11, :cond_e0

    .line 2179
    aget-object v3, p1, v2

    .line 2181
    .local v3, "pInfo":Landroid/content/pm/ProviderInfo;
    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 2182
    .local v7, "providerName":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 2183
    .local v5, "processName":Ljava/lang/String;
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 2185
    .local v4, "packageName":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v11, :cond_43

    .line 2186
    const-string v11, "SAMP_SPCM_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- getPackageProviderScore --- providerName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " processName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " packageName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_43
    iget-object v11, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v13, 0x1

    invoke-virtual {v11, v5, v12, v13}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2191
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_d6

    .line 2192
    sget-boolean v11, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v11, :cond_72

    .line 2193
    const-string v11, "SAMP_SPCM_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- the provider process is current running --- pubProviders size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_72
    const/16 v10, 0x3e8

    .line 2198
    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .local v6, "proi":I
    :goto_7c
    if-ltz v6, :cond_d6

    .line 2199
    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2200
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    sget-boolean v11, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v11, :cond_a6

    .line 2201
    const-string v11, "SAMP_SPCM_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- cpr.info.name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :cond_a6
    iget-object v11, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_dd

    .line 2205
    iget-object v11, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2206
    .local v9, "size":I
    sget-boolean v11, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v11, :cond_d2

    .line 2207
    const-string v11, "SAMP_SPCM_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- connections.size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_d2
    if-lez v9, :cond_d6

    .line 2209
    add-int/lit16 v10, v10, 0xfa0

    .line 2214
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v6    # "proi":I
    .end local v9    # "size":I
    :cond_d6
    if-le v10, v8, :cond_d9

    move v8, v10

    .line 2178
    :cond_d9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 2198
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v6    # "proi":I
    :cond_dd
    add-int/lit8 v6, v6, -0x1

    goto :goto_7c

    .line 2217
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "i":I
    .end local v3    # "pInfo":Landroid/content/pm/ProviderInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "processName":Ljava/lang/String;
    .end local v6    # "proi":I
    .end local v7    # "providerName":Ljava/lang/String;
    :cond_e0
    return v8
.end method

.method private getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J
    .registers 26
    .param p2, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 2221
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    const-string/jumbo v17, "usagestats"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 2222
    .local v2, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const-wide/16 v18, 0x0

    .line 2224
    .local v18, "totalForegroundtime_indays":J
    if-eqz v2, :cond_197

    if-eqz p1, :cond_197

    .line 2226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, p2

    .line 2227
    .local v4, "begintime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2228
    .local v6, "endtime":J
    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v16

    .line 2231
    .local v16, "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const v8, 0x20015

    .line 2236
    .local v8, "dateFormatFlags":I
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_9e

    .line 2237
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getTotalForegroundtimeIndays from time  "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " to time "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6, v7, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "queryUsageStats size--- "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_9e
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_198

    .line 2244
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    .line 2246
    .local v15, "pkgcnt":I
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_a9
    if-ge v14, v15, :cond_168

    .line 2247
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-object v9, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 2248
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v10, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 2249
    .local v10, "foregroundtime":J
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v12, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 2250
    .local v12, "lasttime":J
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_125

    .line 2251
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--- queryUsageStats query mPackageName-"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " foregroundtime "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-wide/16 v20, 0x3e8

    div-long v20, v10, v20

    invoke-static/range {v20 .. v21}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " laststarttime "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v12, v13, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_125
    cmp-long v3, v12, v4

    if-ltz v3, :cond_132

    const-wide/32 v20, 0xea60

    add-long v20, v20, v6

    cmp-long v3, v12, v20

    if-lez v3, :cond_15a

    .line 2257
    :cond_132
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_156

    .line 2258
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--- before 7 days--- "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_156
    :goto_156
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a9

    .line 2261
    :cond_15a
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    add-long v18, v18, v10

    goto :goto_156

    .line 2265
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "foregroundtime":J
    .end local v12    # "lasttime":J
    :cond_168
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_197

    .line 2266
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "totalForegroundtime_indays --- "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-wide/16 v20, 0x3e8

    div-long v20, v18, v20

    invoke-static/range {v20 .. v21}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    .end local v4    # "begintime":J
    .end local v6    # "endtime":J
    .end local v8    # "dateFormatFlags":I
    .end local v14    # "pkg_i":I
    .end local v15    # "pkgcnt":I
    .end local v16    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_197
    :goto_197
    return-wide v18

    .line 2270
    .restart local v4    # "begintime":J
    .restart local v6    # "endtime":J
    .restart local v8    # "dateFormatFlags":I
    .restart local v16    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_198
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_197

    .line 2271
    const-string v3, "SAMP_SPCM_test"

    const-string v17, "getTotalForegroundtimeIndays no packages run activit in last 3 days!!! --- "

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_197
.end method

.method private getWallpaperManager()Lcom/android/server/wallpaper/WallpaperManagerService;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-nez v0, :cond_f

    .line 743
    const-string/jumbo v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 745
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-object v0
.end method

.method private isAccessibilityPackages(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2679
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2680
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2682
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2685
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3c

    .line 2686
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_3a

    const-string v2, "SAMP_SPCM_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip Accessibility pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_3a
    const/4 v2, 0x1

    .line 2689
    :goto_3b
    return v2

    :cond_3c
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method private isC2DMPermAvl(Ljava/lang/String;)Z
    .registers 9
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 3357
    const/4 v0, 0x0

    .line 3358
    .local v0, "c2dmPermissionFound":Z
    const/4 v2, 0x0

    .line 3359
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3360
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2b

    .line 3362
    const/16 v5, 0x1000

    :try_start_c
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3363
    if-eqz v2, :cond_2b

    .line 3365
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 3366
    .local v3, "perms":[Landroid/content/pm/PermissionInfo;
    if-eqz v3, :cond_2b

    .line 3367
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_17
    array-length v5, v3

    if-ge v1, v5, :cond_2b

    .line 3368
    aget-object v5, v3, v1

    if-eqz v5, :cond_2c

    aget-object v5, v3, v1

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, ".permission.C2D_MESSAGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_27} :catch_2f

    move-result v5

    if-eqz v5, :cond_2c

    .line 3369
    const/4 v0, 0x1

    .line 3379
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_2b
    :goto_2b
    return v0

    .line 3367
    .restart local v1    # "j":I
    .restart local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 3375
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :catch_2f
    move-exception v5

    goto :goto_2b
.end method

.method private isDependsOnSystem(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 780
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "system"

    const/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 781
    .local v0, "prSystem":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_6c

    .line 782
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_36

    .line 783
    const-string v3, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "system: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_36
    if-eqz v0, :cond_79

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v3, :cond_79

    .line 791
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 792
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_6b

    .line 793
    const-string v2, "SAMP_SPCM_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is depends on system: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_6b
    :goto_6b
    return v1

    .line 785
    :cond_6c
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_6b

    .line 786
    const-string v2, "SAMP_SPCM_test"

    const-string/jumbo v3, "system is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_79
    move v1, v2

    .line 797
    goto :goto_6b
.end method

.method private isDeviceAdminPackages(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2693
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2694
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2696
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x8080

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2698
    .local v1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_5a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5a

    .line 2699
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3}, Lcom/android/server/am/SmartAdjustManager;->createDeviceAdminInfo(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 2700
    .local v0, "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2701
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_58

    const-string v5, "SAMP_SPCM_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip DeviceAdmin pkg : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :cond_58
    const/4 v3, 0x1

    .line 2706
    .end local v0    # "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    :goto_59
    return v3

    :cond_5a
    move v3, v4

    goto :goto_59
.end method

.method private isSPCMExcludePkg(Ljava/lang/String;)Z
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2337
    if-nez p1, :cond_4

    const/4 v10, 0x1

    .line 2659
    :goto_3
    return v10

    .line 2339
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->isAccessibilityPackages(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2340
    const/4 v10, 0x1

    goto :goto_3

    .line 2342
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->isDeviceAdminPackages(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 2343
    const/4 v10, 0x1

    goto :goto_3

    .line 2346
    :cond_14
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    if-eqz v10, :cond_5b

    .line 2347
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2348
    .local v2, "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 2349
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_51

    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip CSC Preload pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_51
    const/4 v10, 0x1

    goto :goto_3

    .line 2353
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_53
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->isSystemPackages(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 2354
    const/4 v10, 0x1

    goto :goto_3

    .line 2358
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5b
    const/16 v10, 0xb

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.sk"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string v11, "com.kt"

    aput-object v11, v1, v10

    const/4 v10, 0x2

    const-string v11, "com.lg"

    aput-object v11, v1, v10

    const/4 v10, 0x3

    const-string v11, "com.estsoft.alyac"

    aput-object v11, v1, v10

    const/4 v10, 0x4

    const-string v11, "com.uplus"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string v11, "com.tmobile"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "com.sprint"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string v11, "com.vzw"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string v11, "com.verizon"

    aput-object v11, v1, v10

    const/16 v10, 0x9

    const-string v11, "com.att"

    aput-object v11, v1, v10

    const/16 v10, 0xa

    const-string v11, "com.mizmowireless"

    aput-object v11, v1, v10

    .line 2362
    .local v1, "carrierStartingStr":[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ".sec."

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "samsung"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "com.sds"

    aput-object v11, v8, v10

    .line 2365
    .local v8, "samsungContainStr":[Ljava/lang/String;
    const/4 v10, 0x6

    new-array v3, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "kt.navi"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const-string v11, "com.estsoft.alyac.kt"

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const-string v11, "com.mtelo.ktapp"

    aput-object v11, v3, v10

    const/4 v10, 0x3

    const-string v11, "lgt.call"

    aput-object v11, v3, v10

    const/4 v10, 0x4

    const-string v11, "com.mnsoft.lgunavi"

    aput-object v11, v3, v10

    const/4 v10, 0x5

    const-string v11, "lg.uplusbox"

    aput-object v11, v3, v10

    .line 2369
    .local v3, "etcStr":[Ljava/lang/String;
    const/16 v10, 0xb2

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.android.systemui"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "com.android.defcontainer"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "android"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string v11, "com.visionobjects.resourcemanager"

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const-string v11, "com.vlingo.midas"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const-string v11, "android.process.media"

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string v11, "com.google.android.gms"

    aput-object v11, v7, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "org.simalliance.openmobileapi.service"

    aput-object v11, v7, v10

    const/16 v10, 0x8

    const-string v11, "com.google.android.gsf"

    aput-object v11, v7, v10

    const/16 v10, 0x9

    const-string v11, "com.tencent.mm"

    aput-object v11, v7, v10

    const/16 v10, 0xa

    const-string v11, "com.android.providers.media"

    aput-object v11, v7, v10

    const/16 v10, 0xb

    const-string v11, "com.wildtangent.android"

    aput-object v11, v7, v10

    const/16 v10, 0xc

    const-string v11, "com.google.android.youtube"

    aput-object v11, v7, v10

    const/16 v10, 0xd

    const-string v11, "ds.cpuoverlay"

    aput-object v11, v7, v10

    const/16 v10, 0xe

    const-string v11, "android.app.enterprise.knoxcustom"

    aput-object v11, v7, v10

    const/16 v10, 0xf

    const-string v11, "com.absolute.android.persistence"

    aput-object v11, v7, v10

    const/16 v10, 0x10

    const-string v11, "com.policydm"

    aput-object v11, v7, v10

    const/16 v10, 0x11

    const-string v11, "com.android.vpndialogs"

    aput-object v11, v7, v10

    const/16 v10, 0x12

    const-string v11, "com.android.server.enterprise.vpn"

    aput-object v11, v7, v10

    const/16 v10, 0x13

    const-string v11, "android.app.enterprise.*"

    aput-object v11, v7, v10

    const/16 v10, 0x14

    const-string v11, "android.dirEncryption.*"

    aput-object v11, v7, v10

    const/16 v10, 0x15

    const-string v11, "com.android.server.enterprise.*"

    aput-object v11, v7, v10

    const/16 v10, 0x16

    const-string v11, "android.sec.enterprise.*"

    aput-object v11, v7, v10

    const/16 v10, 0x17

    const-string v11, "com.android.sdp"

    aput-object v11, v7, v10

    const/16 v10, 0x18

    const-string v11, "com.android.bluetooth"

    aput-object v11, v7, v10

    const/16 v10, 0x19

    const-string v11, "com.android.nfc"

    aput-object v11, v7, v10

    const/16 v10, 0x1a

    const-string v11, "com.vzw.apnservice"

    aput-object v11, v7, v10

    const/16 v10, 0x1b

    const-string v11, "com.osp.app.signin"

    aput-object v11, v7, v10

    const/16 v10, 0x1c

    const-string v11, "com.oculus.oculus360photos"

    aput-object v11, v7, v10

    const/16 v10, 0x1d

    const-string v11, "com.oculus.oculus360videos"

    aput-object v11, v7, v10

    const/16 v10, 0x1e

    const-string v11, "com.oculus.horizon"

    aput-object v11, v7, v10

    const/16 v10, 0x1f

    const-string v11, "com.oculus.cinema"

    aput-object v11, v7, v10

    const/16 v10, 0x20

    const-string v11, "com.oculus.home"

    aput-object v11, v7, v10

    const/16 v10, 0x21

    const-string v11, "com.oculus.systemactivities"

    aput-object v11, v7, v10

    const/16 v10, 0x22

    const-string v11, "com.facebook.appmanager"

    aput-object v11, v7, v10

    const/16 v10, 0x23

    const-string v11, "com.facebook.system"

    aput-object v11, v7, v10

    const/16 v10, 0x24

    const-string v11, "*.cocktailbarservice"

    aput-object v11, v7, v10

    const/16 v10, 0x25

    const-string v11, "com.wssnps"

    aput-object v11, v7, v10

    const/16 v10, 0x26

    const-string v11, "com.enhance.gameservice"

    aput-object v11, v7, v10

    const/16 v10, 0x27

    const-string v11, "com.yahoo.mobile.client.android.liveweather"

    aput-object v11, v7, v10

    const/16 v10, 0x28

    const-string v11, "com.ipsec.service"

    aput-object v11, v7, v10

    const/16 v10, 0x29

    const-string v11, "com.ipsec.vpnclient"

    aput-object v11, v7, v10

    const/16 v10, 0x2a

    const-string v11, "com.verizon.epdg"

    aput-object v11, v7, v10

    const/16 v10, 0x2b

    const-string v11, "com.android.mms"

    aput-object v11, v7, v10

    const/16 v10, 0x2c

    const-string v11, "com.android.providers.calendar"

    aput-object v11, v7, v10

    const/16 v10, 0x2d

    const-string v11, "com.trustonic.tuiservice"

    aput-object v11, v7, v10

    const/16 v10, 0x2e

    const-string v11, "com.myscript.atk.rmc.service.sample"

    aput-object v11, v7, v10

    const/16 v10, 0x2f

    const-string v11, "com.ws.dm"

    aput-object v11, v7, v10

    const/16 v10, 0x30

    const-string v11, "com.smlds"

    aput-object v11, v7, v10

    const/16 v10, 0x31

    const-string v11, "com.wssyncmldm"

    aput-object v11, v7, v10

    const/16 v10, 0x32

    const-string v11, "com.sprint.dsa"

    aput-object v11, v7, v10

    const/16 v10, 0x33

    const-string v11, "com.oem.smartwifisupport"

    aput-object v11, v7, v10

    const/16 v10, 0x34

    const-string v11, "com.kineto.smartwifi"

    aput-object v11, v7, v10

    const/16 v10, 0x35

    const-string v11, "com.fmm.dm"

    aput-object v11, v7, v10

    const/16 v10, 0x36

    const-string v11, "com.fmm.ds"

    aput-object v11, v7, v10

    const/16 v10, 0x37

    const-string v11, "com.android.settings"

    aput-object v11, v7, v10

    const/16 v10, 0x38

    const-string v11, "com.elevenst.deals"

    aput-object v11, v7, v10

    const/16 v10, 0x39

    const-string v11, "com.elevenst"

    aput-object v11, v7, v10

    const/16 v10, 0x3a

    const-string v11, "com.iloen.melon"

    aput-object v11, v7, v10

    const/16 v10, 0x3b

    const-string v11, "com.nate.android.portalmini"

    aput-object v11, v7, v10

    const/16 v10, 0x3c

    const-string v11, "com.tms"

    aput-object v11, v7, v10

    const/16 v10, 0x3d

    const-string v11, "com.cyworld.camera"

    aput-object v11, v7, v10

    const/16 v10, 0x3e

    const-string v11, "com.moent.vas"

    aput-object v11, v7, v10

    const/16 v10, 0x3f

    const-string v11, "com.mnet.app"

    aput-object v11, v7, v10

    const/16 v10, 0x40

    const-string v11, "com.amazon.mShop.android"

    aput-object v11, v7, v10

    const/16 v10, 0x41

    const-string v11, "com.mobitv.client.tmobiletvhd"

    aput-object v11, v7, v10

    const/16 v10, 0x42

    const-string v11, "com.lookout"

    aput-object v11, v7, v10

    const/16 v10, 0x43

    const-string v11, "com.customermobile.preload"

    aput-object v11, v7, v10

    const/16 v10, 0x44

    const-string v11, "com.whitepages.nameid.tmobile"

    aput-object v11, v7, v10

    const/16 v10, 0x45

    const-string/jumbo v11, "us.com.dt.iq.appsource.tmobile"

    aput-object v11, v7, v10

    const/16 v10, 0x46

    const-string v11, "com.smithmicro.mnd"

    aput-object v11, v7, v10

    const/16 v10, 0x47

    const-string v11, "com.smithmicro.EDM"

    aput-object v11, v7, v10

    const/16 v10, 0x48

    const-string v11, "com.locationlabs.sparkle.yellow.pre"

    aput-object v11, v7, v10

    const/16 v10, 0x49

    const-string v11, "com.coremobility.app.vnotes"

    aput-object v11, v7, v10

    const/16 v10, 0x4a

    const-string v11, "com.lookout"

    aput-object v11, v7, v10

    const/16 v10, 0x4b

    const-string v11, "com.oem.smartwifisupport"

    aput-object v11, v7, v10

    const/16 v10, 0x4c

    const-string v11, "com.kineto.smartwifi"

    aput-object v11, v7, v10

    const/16 v10, 0x4d

    const-string v11, "com.itsoninc.android.uid"

    aput-object v11, v7, v10

    const/16 v10, 0x4e

    const-string v11, "com.itsoninc.android.itsonservice"

    aput-object v11, v7, v10

    const/16 v10, 0x4f

    const-string v11, "com.telenav.app.android.scout_us"

    aput-object v11, v7, v10

    const/16 v10, 0x50

    const-string v11, "com.mobitv.client.sprinttvng"

    aput-object v11, v7, v10

    const/16 v10, 0x51

    const-string v11, "com.nextradioapp.nextradio"

    aput-object v11, v7, v10

    const/16 v10, 0x52

    const-string v11, "com.nbadigital.gametimelite"

    aput-object v11, v7, v10

    const/16 v10, 0x53

    const-string v11, "com.nascar.nascarmobile"

    aput-object v11, v7, v10

    const/16 v10, 0x54

    const-string v11, "com.pinsight.v1"

    aput-object v11, v7, v10

    const/16 v10, 0x55

    const-string v11, "msgplus.jibe.sca"

    aput-object v11, v7, v10

    const/16 v10, 0x56

    const-string v11, "com.handmark.expressweather"

    aput-object v11, v7, v10

    const/16 v10, 0x57

    const-string v11, "com.amazon.mShop"

    aput-object v11, v7, v10

    const/16 v10, 0x58

    const-string v11, "com.familyandco.familywall"

    aput-object v11, v7, v10

    const/16 v10, 0x59

    const-string v11, "com.locationlabs.finder.sprint"

    aput-object v11, v7, v10

    const/16 v10, 0x5a

    const-string v11, "com.ubercab"

    aput-object v11, v7, v10

    const/16 v10, 0x5b

    const-string v11, "com.spotify.music"

    aput-object v11, v7, v10

    const/16 v10, 0x5c

    const-string v11, "com.airg"

    aput-object v11, v7, v10

    const/16 v10, 0x5d

    const-string v11, "com.soleo.numbersearch"

    aput-object v11, v7, v10

    const/16 v10, 0x5e

    const-string v11, "com.livewiremobile.musicstore.boost"

    aput-object v11, v7, v10

    const/16 v10, 0x5f

    const-string v11, "com.wipit.android.boostwallet"

    aput-object v11, v7, v10

    const/16 v10, 0x60

    const-string v11, "com.ebay.mobile"

    aput-object v11, v7, v10

    const/16 v10, 0x61

    const-string v11, "com.asurion.android.mobilerecovery.sprint"

    aput-object v11, v7, v10

    const/16 v10, 0x62

    const-string v11, "com.itsoninc.android.itsonclient"

    aput-object v11, v7, v10

    const/16 v10, 0x63

    const-string v11, "com.onelouder.baconreader"

    aput-object v11, v7, v10

    const/16 v10, 0x64

    const-string v11, "com.livewiremobile.musicstore.vmu"

    aput-object v11, v7, v10

    const/16 v10, 0x65

    const-string v11, "com.amazon.mShop.android"

    aput-object v11, v7, v10

    const/16 v10, 0x66

    const-string v11, "com.cequint.ecid"

    aput-object v11, v7, v10

    const/16 v10, 0x67

    const-string v11, "com.nqmobile.antivirus20.uscc"

    aput-object v11, v7, v10

    const/16 v10, 0x68

    const-string v11, "com.mobitv.client.uscctv"

    aput-object v11, v7, v10

    const/16 v10, 0x69

    const-string v11, "com.synchronoss.sm"

    aput-object v11, v7, v10

    const/16 v10, 0x6a

    const-string v11, "com.LogiaGroup.LogiaDeck"

    aput-object v11, v7, v10

    const/16 v10, 0x6b

    const-string v11, "com.telenav.app.android.uscc"

    aput-object v11, v7, v10

    const/16 v10, 0x6c

    const-string v11, "com.zed.TrdWapLauncher"

    aput-object v11, v7, v10

    const/16 v10, 0x6d

    const-string v11, "com.privacystar.android.metro"

    aput-object v11, v7, v10

    const/16 v10, 0x6e

    const-string v11, "com.lookout"

    aput-object v11, v7, v10

    const/16 v10, 0x6f

    const-string v11, "com.whitepages.metro411"

    aput-object v11, v7, v10

    const/16 v10, 0x70

    const-string v11, "com.handmark.metro.launcher"

    aput-object v11, v7, v10

    const/16 v10, 0x71

    const-string v11, "com.mobileposse.client"

    aput-object v11, v7, v10

    const/16 v10, 0x72

    const-string v11, "com.nuance.nmc.sihome.metropcs"

    aput-object v11, v7, v10

    const/16 v10, 0x73

    const-string v11, "com.metro.simlock"

    aput-object v11, v7, v10

    const/16 v10, 0x74

    const-string v11, "com.metropcs.service.vvm"

    aput-object v11, v7, v10

    const/16 v10, 0x75

    const-string v11, "com.amazon.kindle"

    aput-object v11, v7, v10

    const/16 v10, 0x76

    const-string v11, "com.amazon.mp3"

    aput-object v11, v7, v10

    const/16 v10, 0x77

    const-string v11, "com.amazon.venezia"

    aput-object v11, v7, v10

    const/16 v10, 0x78

    const-string v11, "com.amazon.mShop.android"

    aput-object v11, v7, v10

    const/16 v10, 0x79

    const-string v11, "com.audible.application"

    aput-object v11, v7, v10

    const/16 v10, 0x7a

    const-string v11, "com.imdb.mobile"

    aput-object v11, v7, v10

    const/16 v10, 0x7b

    const-string v11, "com.amazon.fv"

    aput-object v11, v7, v10

    const/16 v10, 0x7c

    const-string v11, "com.gotv.nflgamecenter.us.lite"

    aput-object v11, v7, v10

    const/16 v10, 0x7d

    const-string v11, "com.slacker.radio"

    aput-object v11, v7, v10

    const/16 v10, 0x7e

    const-string v11, "com.telecomsys.directedsms.android.SCG"

    aput-object v11, v7, v10

    const/16 v10, 0x7f

    const-string v11, "com.asurion.android.verizon.vms"

    aput-object v11, v7, v10

    const/16 v10, 0x80

    const-string v11, "com.LogiaGroup.LogiaDeck"

    aput-object v11, v7, v10

    const/16 v10, 0x81

    const-string v11, "com.vznavigator.Generic"

    aput-object v11, v7, v10

    const/16 v10, 0x82

    const-string v11, "com.cequint.ecid"

    aput-object v11, v7, v10

    const/16 v10, 0x83

    const-string v11, "com.motricity.verizon.ssodownloadable"

    aput-object v11, v7, v10

    const/16 v10, 0x84

    const-string v11, "com.vcast.mediamanager"

    aput-object v11, v7, v10

    const/16 v10, 0x85

    const-string v11, "com.fusionone.android.sync.vzbuaclient"

    aput-object v11, v7, v10

    const/16 v10, 0x86

    const-string v11, "net.aetherpal.device"

    aput-object v11, v7, v10

    const/16 v10, 0x87

    const-string v11, "com.yahoo.mobile.client.android.yahoo.att"

    aput-object v11, v7, v10

    const/16 v10, 0x88

    const-string v11, "com.yahoo.mobile.client.android.mail.att"

    aput-object v11, v7, v10

    const/16 v10, 0x89

    const-string v11, "com.asurison.android.mobilerecovery.att"

    aput-object v11, v7, v10

    const/16 v10, 0x8a

    const-string v11, "com.telenav.app.android.cingular"

    aput-object v11, v7, v10

    const/16 v10, 0x8b

    const-string v11, "com.drivemode"

    aput-object v11, v7, v10

    const/16 v10, 0x8c

    const-string v11, "com.locationlabs.sparkle.blue"

    aput-object v11, v7, v10

    const/16 v10, 0x8d

    const-string v11, "com.lookout"

    aput-object v11, v7, v10

    const/16 v10, 0x8e

    const-string v11, "com.mobitv.client.tv"

    aput-object v11, v7, v10

    const/16 v10, 0x8f

    const-string v11, "com.locationlabs.cni.att"

    aput-object v11, v7, v10

    const/16 v10, 0x90

    const-string v11, "com.yellowpages.android.ypmobile"

    aput-object v11, v7, v10

    const/16 v10, 0x91

    const-string v11, "com.wavemarket.waplauncher"

    aput-object v11, v7, v10

    const/16 v10, 0x92

    const-string v11, "com.ubercab"

    aput-object v11, v7, v10

    const/16 v10, 0x93

    const-string v11, "com.amazon.mShop.android"

    aput-object v11, v7, v10

    const/16 v10, 0x94

    const-string v11, "com.ampsvc.android"

    aput-object v11, v7, v10

    const/16 v10, 0x95

    const-string v11, "com.americanexpress.plenti"

    aput-object v11, v7, v10

    const/16 v10, 0x96

    const-string v11, "com.synchronoss.dcs.att.r2g"

    aput-object v11, v7, v10

    const/16 v10, 0x97

    const-string v11, "com.cequint.ecid"

    aput-object v11, v7, v10

    const/16 v10, 0x98

    const-string v11, "com.amazon.kindle"

    aput-object v11, v7, v10

    const/16 v10, 0x99

    const-string v11, "com.matchboxmobile.wisp"

    aput-object v11, v7, v10

    const/16 v10, 0x9a

    const-string v11, "com.quickmobile.att.experienceweekend2014"

    aput-object v11, v7, v10

    const/16 v10, 0x9b

    const-string v11, "com.themarketingarm.attexpressions"

    aput-object v11, v7, v10

    const/16 v10, 0x9c

    const-string v11, "com.welldoc.diabetesmanager"

    aput-object v11, v7, v10

    const/16 v10, 0x9d

    const-string v11, "com.xora.att"

    aput-object v11, v7, v10

    const/16 v10, 0x9e

    const-string v11, "deezer.android.app"

    aput-object v11, v7, v10

    const/16 v10, 0x9f

    const-string v11, "com.quickplay.android.bellmediaplayer"

    aput-object v11, v7, v10

    const/16 v10, 0xa0

    const-string v11, "ca.bell.selfserve.mybellmobile"

    aput-object v11, v7, v10

    const/16 v10, 0xa1

    const-string v11, "com.bell.ptt"

    aput-object v11, v7, v10

    const/16 v10, 0xa2

    const-string v11, "ca.bell.wt.android.tunesappswidget"

    aput-object v11, v7, v10

    const/16 v10, 0xa3

    const-string v11, "com.suretap.suretap_wallet"

    aput-object v11, v7, v10

    const/16 v10, 0xa4

    const-string v11, "com.fivemobile.myaccount"

    aput-object v11, v7, v10

    const/16 v10, 0xa5

    const-string v11, "com.rogers.npd.appzone"

    aput-object v11, v7, v10

    const/16 v10, 0xa6

    const-string v11, "com.nhl.gc1112.free"

    aput-object v11, v7, v10

    const/16 v10, 0xa7

    const-string v11, "com.rogers.citytv.phone"

    aput-object v11, v7, v10

    const/16 v10, 0xa8

    const-string v11, "com.telus.myaccount"

    aput-object v11, v7, v10

    const/16 v10, 0xa9

    const-string v11, "com.telus.featuredapps"

    aput-object v11, v7, v10

    const/16 v10, 0xaa

    const-string v11, "com.koodo.selfserve"

    aput-object v11, v7, v10

    const/16 v10, 0xab

    const-string v11, "com.android.settings"

    aput-object v11, v7, v10

    const/16 v10, 0xac

    const-string v11, "com.videotron.android.portail.launcher"

    aput-object v11, v7, v10

    const/16 v10, 0xad

    const-string v11, "ca.windmobile.selfcare.prod"

    aput-object v11, v7, v10

    const/16 v10, 0xae

    const-string v11, "com.pelmorex.WeatherEyeAndroid"

    aput-object v11, v7, v10

    const/16 v10, 0xaf

    const-string v11, "com.android.sharedstoragebackup"

    aput-object v11, v7, v10

    const/16 v10, 0xb0

    const-string v11, "com.opera.max.global"

    aput-object v11, v7, v10

    const/16 v10, 0xb1

    const-string v11, "com.LogiaGroup.LogiaDeck"

    aput-object v11, v7, v10

    .line 2629
    .local v7, "mKillingServiceWhitelist":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4fa
    if-ge v5, v6, :cond_52b

    aget-object v2, v0, v5

    .line 2630
    .restart local v2    # "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_528

    .line 2631
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_525

    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip Samsung pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_525
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2629
    :cond_528
    add-int/lit8 v5, v5, 0x1

    goto :goto_4fa

    .line 2634
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_52b
    move-object v0, v1

    array-length v6, v0

    const/4 v5, 0x0

    :goto_52e
    if-ge v5, v6, :cond_55f

    aget-object v2, v0, v5

    .line 2635
    .restart local v2    # "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_55c

    .line 2636
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_559

    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip Carrier pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_559
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2634
    :cond_55c
    add-int/lit8 v5, v5, 0x1

    goto :goto_52e

    .line 2639
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_55f
    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_562
    if-ge v5, v6, :cond_593

    aget-object v2, v0, v5

    .line 2640
    .restart local v2    # "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_590

    .line 2641
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_58d

    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip Etc     pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_58d
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2639
    :cond_590
    add-int/lit8 v5, v5, 0x1

    goto :goto_562

    .line 2644
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_593
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_594
    array-length v10, v7

    if-ge v4, v10, :cond_5d8

    .line 2645
    aget-object v10, v7, v4

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5ca

    .line 2647
    aget-object v10, v7, v4

    const-string v11, "\\*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2648
    .local v9, "tmp":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5be

    .line 2649
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5d5

    .line 2650
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2652
    :cond_5be
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5d5

    .line 2653
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2655
    .end local v9    # "tmp":[Ljava/lang/String;
    :cond_5ca
    aget-object v10, v7, v4

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5d5

    .line 2656
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2644
    :cond_5d5
    add-int/lit8 v4, v4, 0x1

    goto :goto_594

    .line 2659
    :cond_5d8
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method private isSystemPackages(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2664
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2666
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2667
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3c

    move v5, v2

    :goto_14
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3e

    move v4, v2

    :goto_1b
    or-int/2addr v4, v5

    if-eqz v4, :cond_41

    .line 2668
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_3b

    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip SYSTEM Flag  pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_3b} :catch_40

    .line 2674
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3b
    :goto_3b
    return v2

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3c
    move v5, v3

    .line 2667
    goto :goto_14

    :cond_3e
    move v4, v3

    goto :goto_1b

    .line 2672
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_40
    move-exception v2

    :cond_41
    move v2, v3

    .line 2674
    goto :goto_3b
.end method

.method private killGCMPkgs()V
    .registers 25

    .prologue
    .line 3128
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->mGcmFreezingEnable:Z

    if-eqz v20, :cond_12

    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->SPCM_GCM_KILL_ENABLE:Z

    if-eqz v20, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/SmartAdjustManager;->isConnectedInChina()Z

    move-result v20

    if-nez v20, :cond_12

    sget-boolean v20, Lcom/android/server/LpnetManagerService;->mGCMAppFreezerEnabled:Z

    if-nez v20, :cond_1a

    .line 3129
    :cond_12
    const-string v20, "SAMP_GCMKill"

    const-string v21, "GCM freezing disabled"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    :cond_19
    :goto_19
    return-void

    .line 3134
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 3135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMProcNameLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 3136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1f4

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/am/ActivityManagerService;->getServices(II)Ljava/util/List;

    move-result-object v13

    .line 3137
    .local v13, "mRSlist":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v14, 0x0

    .local v14, "n":I
    :goto_3b
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_b3

    .line 3138
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3139
    .local v3, "RSInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 3140
    .local v16, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMPushPkgLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b0

    .line 3141
    iget-object v0, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 3142
    .local v19, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMProcNameLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b0

    .line 3143
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_a3

    .line 3144
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "GCM[Y] proc : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", pkg : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMProcNameLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3137
    .end local v19    # "procName":Ljava/lang/String;
    :cond_b0
    add-int/lit8 v14, v14, 0x1

    goto :goto_3b

    .line 3150
    .end local v3    # "RSInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v16    # "pkgName":Ljava/lang/String;
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMProcNameLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_bd
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_16d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3151
    .local v12, "mProcName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3152
    :try_start_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v6, v20, -0x1

    .local v6, "i":I
    :goto_e8
    if-ltz v6, :cond_163

    .line 3153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 3154
    .local v17, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v17, :cond_169

    .line 3155
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v12, :cond_169

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_169

    .line 3156
    const-string v20, "SAMP_GCMKill"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "GCMLists proc : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3162
    .end local v17    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_163
    monitor-exit v21

    goto/16 :goto_bd

    .end local v6    # "i":I
    :catchall_166
    move-exception v20

    monitor-exit v21
    :try_end_168
    .catchall {:try_start_d6 .. :try_end_168} :catchall_166

    throw v20

    .line 3152
    .restart local v6    # "i":I
    .restart local v17    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_169
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_e8

    .line 3165
    .end local v6    # "i":I
    .end local v12    # "mProcName":Ljava/lang/String;
    .end local v17    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_16d
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_44c

    .line 3166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 3167
    .local v18, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->resumedAppLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3169
    .local v4, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 3170
    .local v5, "actpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 3172
    .local v8, "inactpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-nez v5, :cond_20b

    if-nez v8, :cond_20b

    .line 3173
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_1f8

    .line 3174
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "running process "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " not in inactive list!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "not in active list, think it like in white list, do not kill !"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3177
    add-int/lit8 v6, v6, -0x1

    .line 3165
    :cond_207
    :goto_207
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16e

    .line 3179
    :cond_20b
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager;->isDependsOnSystem(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_258

    .line 3180
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_248

    .line 3181
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "process "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " system_server package, do not kill  !!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    :cond_248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3183
    add-int/lit8 v6, v6, -0x1

    goto :goto_207

    .line 3185
    :cond_258
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/SmartAdjustManager;->hasNotification(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v20

    if-eqz v20, :cond_29e

    .line 3186
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_28d

    .line 3187
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "process "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " has notification, do not kill !!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3189
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_207

    .line 3191
    :cond_29e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SmartAdjustManager;->getWallpaperManager()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallPaper(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2ec

    .line 3192
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_2db

    .line 3193
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "process "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is active wallpaper, do not kill !!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    :cond_2db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3195
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_207

    .line 3197
    :cond_2ec
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/SmartAdjustManager;->hasActiveWidgets(Lcom/android/server/am/ProcessRecord;)Z

    move-result v20

    if-eqz v20, :cond_32e

    .line 3198
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_31d

    .line 3199
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "process "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " hasActiveWidgets, do not kill !!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    :cond_31d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3201
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_207

    .line 3203
    :cond_32e
    if-eqz v4, :cond_37e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_37e

    .line 3206
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_36d

    .line 3207
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "process "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  foreground package!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    :cond_36d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3209
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_207

    .line 3211
    :cond_37e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3d6

    .line 3212
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_3c5

    .line 3213
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "process "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in latest protection list "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " do not kill !!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :cond_3c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3216
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_207

    .line 3218
    :cond_3d6
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_207

    .line 3219
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_449

    .line 3220
    sget-boolean v20, Lcom/android/server/am/SmartAdjustManager;->DEBUG_SPCM:Z

    if-eqz v20, :cond_438

    .line 3221
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "process "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is included in blacklist"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  do not kill !!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    :cond_438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3224
    add-int/lit8 v6, v6, -0x1

    .line 3225
    goto/16 :goto_207

    .line 3218
    :cond_449
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d7

    .line 3231
    .end local v4    # "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "actpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v8    # "inactpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v9    # "j":I
    .end local v18    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_44c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_461

    .line 3232
    const-string v20, "SAMP_GCMKill"

    const-string v21, "GCM kill size 0. just return"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 3236
    :cond_461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_46b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_492

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3237
    .local v15, "oldKillPkgName":Ljava/lang/String;
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-------- Old Kill Target package : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46b

    .line 3240
    .end local v15    # "oldKillPkgName":Ljava/lang/String;
    :cond_492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_49c
    :goto_49c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3241
    .local v11, "killproc":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3243
    .local v10, "killpkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_49c

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    const-string v21, "SPCM kill_GCMKill GCM Kill package!"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    const-string v20, "SAMP_GCMKill"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-------- New Kill Target package : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49c
.end method

.method private loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1794
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1797
    .local v2, "startDepth":I
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1798
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_19

    .line 1799
    :cond_16
    const/4 v4, 0x1

    if-ne v3, v4, :cond_38

    .line 1813
    :cond_19
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_37

    .line 1814
    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSC File Preload pkgs :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_37
    return-void

    .line 1801
    :cond_38
    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 1804
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1806
    .local v1, "name":Ljava/lang/String;
    const-string v4, "favorite"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1807
    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1808
    .local v0, "cscpkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_9

    .line 1810
    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cscpkgName :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private setAlarm(Ljava/lang/String;J)V
    .registers 10
    .param p1, "theIntentString"    # Ljava/lang/String;
    .param p2, "alarmTime"    # J

    .prologue
    const/4 v3, 0x0

    .line 1214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1217
    .local v0, "pendingIntent":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->mGcmFreezingEnable:Z

    if-eqz v1, :cond_39

    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_GCM_KILL_ENABLE:Z

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/android/server/am/SmartAdjustManager;->isConnectedInChina()Z

    move-result v1

    if-nez v1, :cond_39

    .line 1218
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mGCMLockerAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_2c

    .line 1219
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mGCMLockerAlarmIntent:Landroid/app/PendingIntent;

    .line 1221
    :cond_2c
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mAlarm:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mGCMLockerAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1223
    :cond_39
    return-void
.end method


# virtual methods
.method protected GCMAppFreezerConfigInit()V
    .registers 11

    .prologue
    .line 3094
    const/4 v1, 0x0

    .line 3096
    .local v1, "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    :try_start_1
    new-instance v2, Lcom/android/server/am/SmartAdjustManager$IniFile;

    const-string v6, "/data/misc/lpnet/lpnetConfig"

    invoke-direct {v2, p0, v6}, Lcom/android/server/am/SmartAdjustManager$IniFile;-><init>(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_48

    .line 3100
    .end local v1    # "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    .local v2, "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    if-eqz v2, :cond_6d

    .line 3101
    const/4 v4, 0x0

    .line 3102
    .local v4, "stringBlackList":Ljava/lang/String;
    const-string v6, "GCMFREEZER_INIT"

    const-string v7, "GcmBlackList"

    invoke-virtual {v2, v6, v7, v4}, Lcom/android/server/am/SmartAdjustManager$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3103
    if-eqz v4, :cond_4a

    .line 3104
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    .line 3105
    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3106
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    .local v5, "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_28
    :goto_28
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 3109
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3111
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_28

    .line 3112
    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 3097
    .end local v2    # "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "stringBlackList":Ljava/lang/String;
    .end local v5    # "stringTokenizer":Ljava/util/StringTokenizer;
    .restart local v1    # "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    :catch_48
    move-exception v0

    .line 3121
    :goto_49
    return-void

    .line 3116
    .end local v1    # "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    .restart local v2    # "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    .restart local v4    # "stringBlackList":Ljava/lang/String;
    :cond_4a
    const-string v6, "GCMFREEZER_INIT"

    const-string v7, "enableGcmFreezing"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/server/am/SmartAdjustManager$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/am/SmartAdjustManager;->mGcmFreezingEnable:Z

    .line 3117
    const-string v6, "GCMFREEZER_INIT"

    const-string v7, "FreezingAfterScreenOff"

    iget-wide v8, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultFreezingInterval:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/android/server/am/SmartAdjustManager$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultFreezingInterval:J

    .line 3118
    const-string v6, "GCMFREEZER_INIT"

    const-string v7, "FreezingAlramInterval"

    iget-wide v8, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultAlramInterval:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/android/server/am/SmartAdjustManager$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultAlramInterval:J

    .line 3120
    .end local v4    # "stringBlackList":Ljava/lang/String;
    :cond_6d
    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mGCMPushPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object v1, v2

    .line 3121
    .end local v2    # "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    .restart local v1    # "mConfig":Lcom/android/server/am/SmartAdjustManager$IniFile;
    goto :goto_49
.end method

.method protected RunUpdateActiveInActivePackagesThread()V
    .registers 3

    .prologue
    .line 1092
    new-instance v0, Lcom/android/server/am/SmartAdjustManager$3;

    const-string v1, "UpdateActiveInActivePackages"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SmartAdjustManager$3;-><init>(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mUpdateActiveInActivePackagesThread:Ljava/lang/Thread;

    .line 1128
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mUpdateActiveInActivePackagesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1129
    return-void
.end method

.method public SPCMDBResetTime(Ljava/lang/String;)V
    .registers 5
    .param p1, "strPkgName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x321

    .line 896
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v1, :cond_b

    .line 908
    :cond_a
    :goto_a
    return-void

    .line 900
    :cond_b
    if-eqz p1, :cond_a

    .line 904
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->removeMessages(I)V

    .line 905
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 906
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 907
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method protected final SPCMLocked(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1227
    .local p1, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1228
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMWorkingTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7530

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3e

    .line 1229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMWorkingTime:J

    .line 1230
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1231
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1234
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1235
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1236
    const-string v3, "com.android.server.am.BROADCAST_SERVICEMANAGER_SHIRINKSERVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1240
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_3d

    .line 1241
    const-string v3, "SAMP_SPCM_test"

    const-string v4, "SPCM sendBroadcast called !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3d
    :goto_3d
    return-void

    .line 1243
    :cond_3e
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_3d

    .line 1244
    const-string v3, "SAMP_SPCM_test"

    const-string/jumbo v4, "we don\'t call sendBroadcast in cool time!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method protected addPackageInfo(Landroid/net/Uri;Landroid/content/Intent;)V
    .registers 15
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 1657
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_2e

    .line 1658
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent.ACTION_PACKAGE_ADDED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_2e
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    if-eqz v5, :cond_33

    .line 1709
    :cond_32
    :goto_32
    return-void

    .line 1665
    :cond_33
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1666
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1667
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v1, 0xd

    .line 1671
    .local v1, "flags":I
    :try_start_3a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v5, v2, v1, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_d0

    move-result-object v3

    .line 1677
    :goto_48
    if-eqz v3, :cond_ac

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/SmartAdjustManager;->isSPCMExcludePkg(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ac

    .line 1678
    new-instance v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    invoke-direct {v4, p0}, Lcom/android/server/am/SmartAdjustManager$PackageTable;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    .line 1679
    .local v4, "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->name:Ljava/lang/String;

    .line 1680
    iput-object v3, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    .line 1681
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    .line 1682
    iput-boolean v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isRunning:Z

    .line 1683
    iput-boolean v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isWidget:Z

    .line 1684
    iput v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 1685
    iput v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    .line 1686
    iput-boolean v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    .line 1687
    iput-wide v10, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastServiceActivityTime:J

    .line 1688
    iput-wide v10, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    .line 1689
    iput-wide v10, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    .line 1691
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_90

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_90

    .line 1692
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    :cond_90
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_ac

    .line 1696
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_ADDED add new package -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    .end local v4    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_ac
    const/4 v5, 0x1

    :try_start_ad
    invoke-virtual {p0, v5}, Lcom/android/server/am/SmartAdjustManager;->updateSPCMExternalWhiteList(Z)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_32

    .line 1701
    :catch_b1
    move-exception v0

    .line 1702
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_32

    .line 1703
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException in updateSPCMExternalWhiteList,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 1673
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d0
    move-exception v0

    .line 1674
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "SAMP_SPCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting package info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48
.end method

.method final decreaseHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    .line 384
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 407
    :cond_6
    :goto_6
    return-void

    .line 387
    :cond_7
    sget-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 390
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 391
    const-string/jumbo v1, "unknown"

    sput-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    .line 392
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_38

    const-string v1, "SAMP_Hotness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decreaseHotnessAdj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_38
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 395
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 396
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 398
    .local v0, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_7b

    const-string v1, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_7b
    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v1

    if-lez v1, :cond_8b

    .line 401
    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->decreaseHotness(I)V

    .line 402
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_8b
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_c3

    const-string v1, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v0    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :cond_c3
    monitor-exit v2

    goto/16 :goto_6

    :catchall_c6
    move-exception v1

    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_3b .. :try_end_c8} :catchall_c6

    throw v1
.end method

.method dumpsampLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2719
    const-string v3, "ACTIVITY MANAGER SAMP (dumpsys activity samp)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2721
    const-string v3, " hotnessAdj value (mHotnessAdjMap) --"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2722
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2723
    .local v2, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2724
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2725
    .local v1, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 2726
    .local v0, "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tHotnessAdj: activity %8d , empty %8d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v8}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    .line 2728
    .end local v0    # "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v1    # "entryHotness":Ljava/util/Map$Entry;
    :cond_6b
    return-void
.end method

.method dumpspcmLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2731
    const-string v5, "ACTIVITY MANAGER SPCM (dumpsys activity spcm)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2732
    const-string v5, "mActivePackages ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_51

    .line 2734
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2735
    .local v2, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2736
    const-string v5, "--Score "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2738
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v5, :cond_49

    .line 2739
    const-string v5, " --Score_applocking "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2740
    const-string v5, " --LockingOnly: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2743
    :cond_49
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2733
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2746
    .end local v2    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_51
    const-string v5, "mInActivePackages ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2747
    const/4 v0, 0x0

    :goto_57
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_9d

    .line 2748
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2749
    .restart local v2    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2750
    const-string v5, "--Score "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2752
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v5, :cond_95

    .line 2753
    const-string v5, " --Score_applocking "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2754
    const-string v5, " --LockingOnly: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2757
    :cond_95
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2747
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 2760
    .end local v2    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_9d
    const-string v5, "mExternalWhiteList ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2761
    const/4 v0, 0x0

    :goto_a3
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_be

    .line 2762
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2761
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 2765
    :cond_be
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v5, :cond_118

    .line 2766
    const-string v5, "mSPCMDBfromSMList ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d1
    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_118

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2768
    .local v4, "strPkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .line 2770
    .local v3, "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    if-eqz v3, :cond_d1

    .line 2771
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2772
    const-string v5, " : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2773
    const-string v5, " : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2774
    const-string v5, " : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2775
    const-string v5, " : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_d1

    .line 2783
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    .end local v4    # "strPkgName":Ljava/lang/String;
    :cond_118
    return-void
.end method

.method protected forceKill(Ljava/lang/String;)V
    .registers 10
    .param p1, "procName"    # Ljava/lang/String;

    .prologue
    .line 2832
    const/4 v1, 0x0

    .line 2834
    .local v1, "killproc":Lcom/android/server/am/ProcessRecord;
    const/4 v2, 0x0

    .local v2, "nCnt":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1f

    .line 2835
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2836
    .local v4, "tmpProc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2837
    move-object v1, v4

    .line 2842
    .end local v4    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_1f
    if-nez v1, :cond_25

    .line 2869
    :goto_21
    return-void

    .line 2834
    .restart local v4    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2845
    .end local v4    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_25
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2847
    .local v0, "killpkgName":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_45

    const-string v5, "SAMP_SPCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "choose package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_45
    invoke-virtual {p0, v1}, Lcom/android/server/am/SmartAdjustManager;->isInGrayList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2850
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "SPCM kill kill lowestscore package!"

    invoke-virtual {v5, v0, v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 2855
    :cond_53
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2856
    .local v3, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v3, :cond_79

    .line 2857
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2858
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2861
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    :cond_71
    :goto_71
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "SPCM kill kill lowestscore package!"

    invoke-virtual {v5, v0, v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 2863
    :cond_79
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_71

    .line 2864
    const-string v5, "SAMP_SPCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not exspected!!!!, killingpackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not in active packages list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method protected forceKillAll(I)V
    .registers 6
    .param p1, "killStartAdj"    # I

    .prologue
    .line 2872
    monitor-enter p0

    .line 2873
    const/4 v0, 0x0

    .local v0, "nCnt":I
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 2874
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2875
    .local v1, "tmpProc":Lcom/android/server/am/ProcessRecord;
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v2, p1, :cond_20

    .line 2876
    const-string v2, "SPCM test"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 2873
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2879
    .end local v1    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_23
    monitor-exit p0

    .line 2880
    return-void

    .line 2879
    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_25

    throw v2
.end method

.method protected forceMoveToActive(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2815
    if-nez p1, :cond_a

    .line 2816
    const-string v1, "SAMP_SPCM"

    const-string v2, "PackageName is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :goto_9
    return-void

    .line 2819
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2820
    .local v0, "pt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v0, :cond_41

    .line 2821
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2822
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2823
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2824
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2825
    const-string v1, "SAMP_SPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force moved into Active list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2828
    :cond_41
    const-string v1, "SAMP_SPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not in the InActive list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method protected forceMoveToInactive(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2796
    if-nez p1, :cond_a

    .line 2797
    const-string v1, "SAMP_SPCM"

    const-string v2, "PackageName is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :goto_9
    return-void

    .line 2800
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2801
    .local v0, "pt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v0, :cond_48

    .line 2802
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "SPCM kill kill ForceInactive package!"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2805
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2806
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    const-string v1, "SAMP_SPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force moved into Inactive list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2811
    :cond_48
    const-string v1, "SAMP_SPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not in the active list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method protected forceStopAll(I)V
    .registers 8
    .param p1, "killStartAdj"    # I

    .prologue
    .line 2883
    monitor-enter p0

    .line 2884
    const/4 v0, 0x0

    .local v0, "nCnt":I
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 2885
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2886
    .local v1, "tmpProc":Lcom/android/server/am/ProcessRecord;
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v2, p1, :cond_3a

    .line 2887
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPCM kill ForceStop pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2891
    .end local v1    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_3d
    monitor-exit p0

    .line 2892
    return-void

    .line 2891
    :catchall_3f
    move-exception v2

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method protected getBgProcCount(I)I
    .registers 3
    .param p1, "kind"    # I

    .prologue
    .line 2896
    packed-switch p1, :pswitch_data_12

    .line 2906
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2898
    :pswitch_5
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    goto :goto_4

    .line 2900
    :pswitch_8
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    goto :goto_4

    .line 2902
    :pswitch_b
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    goto :goto_4

    .line 2904
    :pswitch_e
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    goto :goto_4

    .line 2896
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method getShortPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2910
    if-eqz p1, :cond_74

    .line 2911
    move-object v0, p1

    .line 2912
    .local v0, "shortPkgName":Ljava/lang/String;
    const-string v1, "com."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2913
    const-string v1, "com."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2915
    :cond_15
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2916
    const-string v1, "android."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2918
    :cond_25
    const-string/jumbo v1, "samsung."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2919
    const-string/jumbo v1, "samsung."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2921
    :cond_37
    const-string/jumbo v1, "sec."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2922
    const-string/jumbo v1, "sec."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2924
    :cond_49
    const-string v1, "app."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2925
    const-string v1, "app."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2927
    :cond_59
    const-string v1, "google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 2928
    const-string v1, "google."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2930
    :cond_69
    const-string v1, "%30s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2932
    .end local v0    # "shortPkgName":Ljava/lang/String;
    :goto_73
    return-object v1

    :cond_74
    const-string v1, "%30s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_73
.end method

.method final hasActiveWidgets(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 449
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 450
    .local v0, "awg":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetPackageList()[Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "packagelist":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v3, v2

    if-ge v1, v3, :cond_4b

    .line 452
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 453
    const-string v3, "SAMP_SPCM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasActiveWidgets packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , so don\'t kill!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v3, 0x1

    .line 457
    :goto_47
    return v3

    .line 451
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 457
    :cond_4b
    const/4 v3, 0x0

    goto :goto_47
.end method

.method final hasActiveWidgetsForSM(Ljava/lang/String;)Z
    .registers 6
    .param p1, "strPkgName"    # Ljava/lang/String;

    .prologue
    .line 978
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 979
    .local v0, "awg":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetPackageList()[Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "packagelist":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v3, v2

    if-ge v1, v3, :cond_1b

    .line 981
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 982
    const/4 v3, 0x1

    .line 985
    :goto_17
    return v3

    .line 980
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 985
    :cond_1b
    const/4 v3, 0x0

    goto :goto_17
.end method

.method hasNotification(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "bOngoing"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 749
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 750
    .local v0, "inm":Landroid/app/INotificationManager;
    if-nez v0, :cond_9

    .line 776
    :cond_8
    :goto_8
    return v3

    .line 753
    :cond_9
    const/4 v1, 0x0

    .local v1, "nCnt":I
    :goto_a
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 754
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 756
    .local v2, "strPkg":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_29

    const-string v5, "android"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 753
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 759
    :cond_2c
    if-eqz p2, :cond_65

    .line 760
    :try_start_2e
    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->hasOngoingNotification(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 761
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_63

    .line 762
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " processName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has important Notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    move v3, v4

    .line 763
    goto :goto_8

    .line 767
    :cond_65
    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->hasNotification(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 768
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_9a

    .line 769
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " processName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has important Notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_9a} :catch_9d

    :cond_9a
    move v3, v4

    .line 770
    goto/16 :goto_8

    .line 774
    :catch_9d
    move-exception v5

    goto :goto_29
.end method

.method public isActivePackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;)Z
    .registers 22
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 1261
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1263
    .local v11, "pkgName":Ljava/lang/String;
    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->mGcmFreezingEnable:Z

    if-eqz v12, :cond_23

    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->SPCM_GCM_KILL_ENABLE:Z

    if-eqz v12, :cond_23

    const-string v12, "gcmbroadcast"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_23

    .line 1264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMPushPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_23

    .line 1265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMPushPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_23
    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->mGcmFreezingEnable:Z

    if-eqz v12, :cond_1f9

    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->SPCM_GCM_KILL_ENABLE:Z

    if-eqz v12, :cond_1f9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_1f9

    .line 1269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f9

    .line 1270
    const/4 v2, 0x0

    .line 1271
    .local v2, "GCMBlock":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z

    if-eqz v12, :cond_ca

    .line 1272
    const-string v12, "SAMP_GCMKill"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remove from GCM Kill list : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", reason : LCD On"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1302
    :cond_6b
    :goto_6b
    move-object v5, v11

    .line 1303
    .local v5, "currentPkg":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1304
    .local v6, "currentPkgTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkg:Ljava/lang/String;

    if-ne v5, v12, :cond_1df

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevPrevGCMKillBlockPkg:Ljava/lang/String;

    if-ne v5, v12, :cond_1df

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevPrevGCMKillBlockPkgTime:J

    sub-long v12, v6, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/SmartAdjustManager;->GCMThreshInterval:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_1df

    .line 1306
    const-string v12, "SAMP_GCMKill"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remove from GCM Kill list : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", reason : repeat block"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1309
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkg:Ljava/lang/String;

    .line 1310
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkgTime:J

    .line 1311
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevPrevGCMKillBlockPkg:Ljava/lang/String;

    .line 1312
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevPrevGCMKillBlockPkgTime:J

    .line 1314
    const/4 v2, 0x0

    .line 1321
    :goto_c6
    if-eqz v2, :cond_1f9

    const/4 v4, 0x0

    .line 1425
    .end local v2    # "GCMBlock":Z
    .end local v5    # "currentPkg":Ljava/lang/String;
    .end local v6    # "currentPkgTime":J
    :cond_c9
    :goto_c9
    return v4

    .line 1275
    .restart local v2    # "GCMBlock":Z
    :cond_ca
    const-string v12, "activity"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_d8

    .line 1277
    const-string v12, "SAMP_GCMKill"

    const-string v13, "isActivePackage , You should not see this log. Activity is launched when LCD Off"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1279
    :cond_d8
    const-string/jumbo v12, "service"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_106

    .line 1280
    const-string v12, "SAMP_GCMKill"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isActivePackage , Blocked service  ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], pkg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v2, 0x1

    goto/16 :goto_6b

    .line 1283
    :cond_106
    const-string v12, "broadcast"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_133

    .line 1284
    const-string v12, "SAMP_GCMKill"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isActivePackage , Blocked intent ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], pkg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v2, 0x1

    goto/16 :goto_6b

    .line 1287
    :cond_133
    const-string v12, "gcmbroadcast"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_184

    .line 1288
    const-string v12, "SAMP_GCMKill"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isActivePackage , Allow gcm intent!!!  ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], pkg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const-string v12, "SAMP_GCMKill"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remove from GCM Kill list : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", reason : LCD Off intent receive"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6b

    .line 1292
    :cond_184
    const-string/jumbo v12, "provider"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_1b2

    .line 1293
    const-string v12, "SAMP_GCMKill"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isActivePackage , Blocked provider ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], pkg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v2, 0x1

    goto/16 :goto_6b

    .line 1296
    :cond_1b2
    const-string v12, "backup"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_6b

    .line 1297
    const-string v12, "SAMP_GCMKill"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isActivePackage , Blocked backupAgent ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], pkg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/4 v2, 0x1

    goto/16 :goto_6b

    .line 1316
    .restart local v5    # "currentPkg":Ljava/lang/String;
    .restart local v6    # "currentPkgTime":J
    :cond_1df
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevPrevGCMKillBlockPkg:Ljava/lang/String;

    .line 1317
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkgTime:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevPrevGCMKillBlockPkgTime:J

    .line 1318
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkg:Ljava/lang/String;

    .line 1319
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->mPrevGCMKillBlockPkgTime:J

    goto/16 :goto_c6

    .line 1324
    .end local v2    # "GCMBlock":Z
    .end local v5    # "currentPkg":Ljava/lang/String;
    .end local v6    # "currentPkgTime":J
    :cond_1f9
    const-string v12, "gcmbroadcast"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_201

    .line 1325
    const-string p5, "broadcast"

    .line 1329
    :cond_201
    const/4 v4, 0x0

    .line 1333
    .local v4, "allowed":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_219

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_219

    .line 1335
    const/4 v4, 0x1

    goto/16 :goto_c9

    .line 1338
    :cond_219
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1339
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1340
    .local v3, "actpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1341
    .local v8, "inactpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v3, :cond_23b

    iget v12, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_23b

    .line 1344
    const/4 v4, 0x1

    goto/16 :goto_c9

    .line 1345
    :cond_23b
    if-nez v3, :cond_242

    if-nez v8, :cond_242

    .line 1347
    const/4 v4, 0x1

    goto/16 :goto_c9

    .line 1351
    :cond_242
    const-string/jumbo v12, "service"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_2a5

    .line 1352
    const/4 v4, 0x1

    .line 1401
    :cond_24a
    :goto_24a
    if-eqz v4, :cond_c9

    .line 1403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1404
    .local v10, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v10, :cond_2ba

    .line 1405
    const/4 v12, 0x3

    iput v12, v10, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    .line 1406
    const-string/jumbo v12, "service"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_268

    .line 1407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastServiceActivityTime:J

    .line 1410
    :cond_268
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    const-string v12, "SAMP_SPCM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " move to active."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c9

    .line 1396
    .end local v10    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_2a5
    const-string v12, "activity"

    move-object/from16 v0, p5

    if-eq v0, v12, :cond_2b8

    const-string v12, "broadcast"

    move-object/from16 v0, p5

    if-eq v0, v12, :cond_2b8

    const-string/jumbo v12, "provider"

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_24a

    .line 1398
    :cond_2b8
    const/4 v4, 0x1

    goto :goto_24a

    .line 1420
    .restart local v10    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_2ba
    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v12, :cond_2c6

    .line 1421
    const-string v12, "SAMP_SPCM_test"

    const-string/jumbo v13, "not in active and inactive list, allow it, think it\'s in white list"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_2c6
    const/4 v4, 0x1

    goto/16 :goto_c9
.end method

.method public isConnectedInChina()Z
    .registers 3

    .prologue
    .line 3081
    const/4 v0, 0x0

    .line 3084
    .local v0, "mCountryIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 3086
    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3087
    const/4 v1, 0x1

    .line 3089
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public isInGrayList(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3c

    .line 817
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 819
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "\\*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "tmp":[Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 829
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_2a
    :goto_2a
    return v2

    .line 824
    :cond_2b
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 816
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3c
    move v2, v3

    .line 829
    goto :goto_2a
.end method

.method protected registSPCM()V
    .registers 4

    .prologue
    .line 2937
    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SPCM_INIT:Z

    if-nez v0, :cond_19

    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2946
    :cond_19
    :goto_19
    return-void

    .line 2942
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/am/SmartAdjustManager;->getWallpaperManager()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2943
    invoke-virtual {p0}, Lcom/android/server/am/SmartAdjustManager;->RunUpdateActiveInActivePackagesThread()V

    .line 2944
    invoke-virtual {p0}, Lcom/android/server/am/SmartAdjustManager;->registerReceiver()V

    .line 2945
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SPCM_INIT:Z

    goto :goto_19
.end method

.method protected registerReceiver()V
    .registers 4

    .prologue
    .line 1132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1133
    .local v0, "SevicemanagerFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.am.BROADCAST_SERVICEMANAGER_SHIRINKSERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1138
    const-string v1, "GCM_LOCKER_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mAlarm:Landroid/app/AlarmManager;

    .line 1142
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/SmartAdjustManager$4;

    invoke-direct {v2, p0}, Lcom/android/server/am/SmartAdjustManager$4;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1210
    return-void
.end method

.method public setAppWidgetServiceLock(Ljava/lang/Object;)V
    .registers 2
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager;->mAppWidgetServiceLock:Ljava/lang/Object;

    .line 735
    return-void
.end method

.method public setPackageLockingTimeBySPCM(I)V
    .registers 6
    .param p1, "nTime"    # I

    .prologue
    .line 834
    const-string v0, "SAMP_SPCMtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageLockingTimeBySPCM() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-gez p1, :cond_1c

    .line 844
    :cond_1b
    :goto_1b
    return-void

    .line 840
    :cond_1c
    const v0, 0x15630

    if-ge p1, v0, :cond_49

    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :goto_28
    iput-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    .line 842
    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v0, :cond_1b

    .line 843
    const-string v0, "SAMP_SPCMtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_UNUSEDPACKAGES_INTERVAL :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 840
    :cond_49
    const-wide/16 v0, 0x0

    goto :goto_28
.end method

.method public setWallpaperManagerServiceLock(Ljava/lang/Object;)V
    .registers 2
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager;->mWallpaperServiceLock:Ljava/lang/Object;

    .line 739
    return-void
.end method

.method protected final smartAdjustProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .registers 57
    .param p2, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v44, :cond_e

    .line 462
    const-wide/16 v44, 0x40

    const-string/jumbo v46, "smartAdjustProcessesLocked"

    const/16 v47, 0x0

    invoke-static/range {v44 .. v47}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 464
    :cond_e
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v32, "smartDHACachedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v33, "smartDHAEmptyProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v34, "smartDHAServiceProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 472
    .local v4, "N":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 473
    .local v28, "now":J
    const-wide/32 v44, 0x1b7740

    sub-long v30, v28, v44

    .line 475
    .local v30, "oldTime":J
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    .line 476
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    .line 477
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    .line 478
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    .line 480
    add-int/lit8 v11, v4, -0x1

    .local v11, "i":I
    :goto_4c
    if-ltz v11, :cond_211

    .line 481
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 482
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v44, v0

    if-nez v44, :cond_86

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v44, v0

    if-eqz v44, :cond_86

    .line 490
    const-string v44, "android.process.acore"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_86

    const-string v44, "com.sec.android.provider.logsprovider"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_86

    const-string v44, "com.android.contacts"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_89

    .line 480
    :cond_86
    :goto_86
    add-int/lit8 v11, v11, -0x1

    goto :goto_4c

    .line 497
    :cond_89
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_88a

    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    .line 531
    :goto_9e
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v44, :cond_cf

    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v44, :cond_cf

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x7

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_cf

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-gt v0, v1, :cond_cf

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_cf

    .line 535
    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_cf
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v44, v0

    const/16 v45, 0x7

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_86

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x9

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_86

    .line 539
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_206

    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_86

    .line 500
    :pswitch_fb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v44, v0

    sget v45, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_162

    .line 504
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v44

    if-eqz v44, :cond_13e

    .line 505
    const-string v44, "com.android.vending"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_13e

    .line 506
    const-string v44, "GATE"

    const-string v45, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_13e
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "cachedCount ##"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_9e

    .line 512
    :cond_162
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_9e

    .line 516
    :pswitch_16d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v44, v0

    sget v45, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_1bb

    iget-wide v0, v5, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v44, v0

    cmp-long v44, v44, v30

    if-gez v44, :cond_1bb

    .line 517
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "empty for "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-wide/32 v46, 0x1b7740

    add-long v46, v46, v30

    iget-wide v0, v5, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v48, v0

    sub-long v46, v46, v48

    const-wide/16 v48, 0x3e8

    div-long v46, v46, v48

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "s"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_9e

    .line 519
    :cond_1bb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    .line 520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v44, v0

    sget v45, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_1fb

    .line 521
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "emptyCount ##"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_9e

    .line 523
    :cond_1fb
    const/16 v44, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_9e

    .line 540
    :cond_206
    const/16 v44, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_86

    .line 546
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_211
    const/16 v27, 0x0

    .line 547
    .local v27, "skipKillBGCount":I
    const-wide/16 v6, 0x0

    .line 548
    .local v6, "avgUSS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/am/ProcessList;->getSmartDHADefaultMargin()J

    move-result-wide v22

    .line 549
    .local v22, "margin":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v45, v0

    add-int v10, v44, v45

    .line 552
    .local v10, "bgCount":I
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v44, :cond_23a

    .line 553
    const-wide/16 v44, 0x40

    const-string v46, "get memory size"

    const/16 v47, 0x0

    invoke-static/range {v44 .. v47}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 554
    :cond_23a
    new-instance v15, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v15}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 555
    .local v15, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 556
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v38

    .line 557
    .local v38, "szFreeMem":J
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v36

    .line 559
    .local v36, "szCached":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-lez v44, :cond_280

    .line 561
    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    move-wide/from16 v48, v0

    mul-long v44, v44, v48

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v48, v0

    sget-boolean v44, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v44, :cond_2eb

    const-wide/high16 v44, 0x3ff8000000000000L    # 1.5

    :goto_277
    mul-double v44, v44, v48

    sub-double v44, v46, v44

    move-wide/from16 v0, v44

    double-to-long v0, v0

    move-wide/from16 v36, v0

    .line 563
    :cond_280
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v44, :cond_28d

    .line 564
    const-wide/16 v44, 0x40

    const-string v46, "get memory size"

    const/16 v47, 0x0

    invoke-static/range {v44 .. v47}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 567
    :cond_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v44, v0

    const/16 v45, 0xf

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/am/ProcessList;->getLMKThreshold(I)J

    move-result-wide v20

    .line 568
    .local v20, "lmkThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/am/ProcessList;->getKswapdWatermark()J

    move-result-wide v16

    .line 569
    .local v16, "kswapdWatermark":J
    add-long v44, v16, v22

    sub-long v42, v44, v38

    .line 572
    .local v42, "szNeedFree":J
    const-wide/16 v40, 0x0

    .line 573
    .local v40, "szFreed":J
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v35, "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v44

    add-int/lit8 v14, v44, -0x1

    .local v14, "j":I
    :goto_2b4
    if-ltz v14, :cond_2f5

    .line 578
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 579
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_2ee

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v44

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    .line 576
    :goto_2e8
    add-int/lit8 v14, v14, -0x1

    goto :goto_2b4

    .line 561
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "j":I
    .end local v16    # "kswapdWatermark":J
    .end local v20    # "lmkThreshold":J
    .end local v35    # "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v40    # "szFreed":J
    .end local v42    # "szNeedFree":J
    :cond_2eb
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    goto :goto_277

    .line 582
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "j":I
    .restart local v16    # "kswapdWatermark":J
    .restart local v20    # "lmkThreshold":J
    .restart local v35    # "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v40    # "szFreed":J
    .restart local v42    # "szNeedFree":J
    :cond_2ee
    const/16 v44, 0x0

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_2e8

    .line 584
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2f5
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v44

    add-int/lit8 v14, v44, -0x1

    :goto_2fb
    if-ltz v14, :cond_339

    .line 586
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 587
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_332

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v44

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    .line 584
    :goto_32f
    add-int/lit8 v14, v14, -0x1

    goto :goto_2fb

    .line 590
    :cond_332
    const/16 v44, 0x0

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_32f

    .line 593
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_339
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v44, :cond_3b9

    .line 594
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 595
    .local v25, "nEmptyNum":I
    div-int/lit8 v26, v25, 0xa

    .line 597
    .local v26, "nHotnessSlot":I
    if-lez v26, :cond_3b9

    .line 598
    new-instance v44, Lcom/android/server/am/SmartAdjustManager$1;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager$1;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 610
    const/16 v24, 0x1

    .local v24, "nCnt":I
    :goto_357
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_3b9

    .line 611
    sub-int v44, v25, v24

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 612
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    sub-int v44, v25, v24

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 613
    add-int/lit8 v27, v27, 0x1

    .line 614
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v44, :cond_3b6

    .line 615
    const-string v44, "SAMP"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Protected empty proc: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "("

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "/"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ")"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_3b6
    add-int/lit8 v24, v24, 0x1

    goto :goto_357

    .line 621
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v24    # "nCnt":I
    .end local v25    # "nEmptyNum":I
    .end local v26    # "nHotnessSlot":I
    :cond_3b9
    const-wide/16 v44, 0x0

    cmp-long v44, v42, v44

    if-lez v44, :cond_5bd

    add-long v44, v42, v20

    cmp-long v44, v36, v44

    if-gtz v44, :cond_5bd

    sget v44, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    move/from16 v0, v44

    if-le v10, v0, :cond_5bd

    .line 624
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 625
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    .line 629
    new-instance v44, Lcom/android/server/am/SmartAdjustManager$2;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager$2;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 654
    const/4 v11, 0x0

    :goto_3f1
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-ge v11, v0, :cond_57e

    .line 655
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 656
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_406

    .line 654
    :cond_403
    :goto_403
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f1

    .line 659
    :cond_406
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0xa

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_41e

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x9

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_421

    .line 660
    :cond_41e
    add-int/lit8 v27, v27, 0x1

    .line 661
    goto :goto_403

    .line 664
    :cond_421
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    if-nez v44, :cond_49b

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->hasProviderClient:Z

    move/from16 v44, v0

    if-eqz v44, :cond_49b

    .line 665
    const-string v44, "SAMP_SDHA"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "No longer want but don\'t kill provider connected empty : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " (pid "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") (adj "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "(clientLowAdj "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") (clientName : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ")"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/16 v44, 0x10

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    .line 669
    const/16 v44, 0x0

    move-object/from16 v0, v44

    iput-object v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    .line 670
    add-int/lit8 v27, v27, 0x1

    .line 671
    goto/16 :goto_403

    .line 674
    :cond_49b
    const-wide/16 v18, 0x0

    .line 675
    .local v18, "lastKillTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_50b

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Long;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 677
    sub-long v12, v28, v18

    .line 678
    .local v12, "interval":J
    const-wide/16 v44, 0x1388

    cmp-long v44, v12, v44

    if-gez v44, :cond_50b

    .line 679
    const-string v44, "SAMP_SDHA"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "No longer want but don\'t kill hotness protected bg : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " (pid "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") (lastKillTime: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-wide/16 v46, 0x3e8

    div-long v46, v12, v46

    invoke-virtual/range {v45 .. v47}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " sec ago)"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    add-int/lit8 v27, v27, 0x1

    .line 682
    goto/16 :goto_403

    .line 686
    .end local v12    # "interval":J
    :cond_50b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->getHistoricallyAvgUSS(Lcom/android/server/am/ProcessStatsService;I)J

    move-result-wide v8

    .line 687
    .local v8, "avgUssSize":J
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "BG, "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-wide/16 v46, 0x400

    div-long v46, v8, v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "K, hotnessAdj="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", XmlFlag="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->xmlFlag:Z

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", oom_adj="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 688
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/am/SmartAdjustManager;->updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 689
    add-long v40, v40, v8

    .line 690
    add-int/lit8 v10, v10, -0x1

    .line 692
    cmp-long v44, v40, v42

    if-gez v44, :cond_57e

    sget v44, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    move/from16 v0, v44

    if-gt v10, v0, :cond_403

    .line 697
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "avgUssSize":J
    .end local v18    # "lastKillTime":J
    :cond_57e
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v44, :cond_5bd

    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SPCM_TRIGGER:Z

    if-eqz v44, :cond_5bd

    if-eqz v34, :cond_5bd

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_5bd

    .line 699
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v44, :cond_5b2

    .line 700
    const-string v44, "SAMP_SPCM_test"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "call SPCMLocked in SAMP : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v46, v0

    sget v46, Lcom/android/server/am/ActivityManagerService;->mLastMemFactor:I

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_5b2
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/am/SmartAdjustManager;->SPCMLocked(Ljava/util/ArrayList;)V

    .line 706
    const/16 v44, 0x0

    sput-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SPCM_TRIGGER:Z

    .line 711
    :cond_5bd
    const-wide/16 v44, 0x0

    cmp-long v44, v40, v44

    if-gtz v44, :cond_5c7

    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v44, :cond_837

    .line 712
    :cond_5c7
    const-string v45, "SAMP_SDHA"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "F:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v38, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, C:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v36, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, ProcCnt:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "K, mgn:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v22, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, nF:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-wide/16 v48, 0x0

    cmp-long v44, v42, v48

    if-gtz v44, :cond_846

    const-string v44, "-----"

    :goto_69c
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "K, fd:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-wide/16 v48, 0x0

    cmp-long v44, v40, v48

    if-nez v44, :cond_866

    const-string v44, "-----"

    :goto_6b6
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "K, thd:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v20, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, wm:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v16, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, cch:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, emp:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, ", svcB:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, ", skipBG:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, ", TOP:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    if-eqz p2, :cond_886

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v47, "com."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    const-string v47, "android."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v47, "sec."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v47, "samsung."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    const-string v47, "app."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    :goto_824
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_837
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v44, :cond_845

    .line 729
    const-wide/16 v44, 0x40

    const-string/jumbo v46, "smartAdjustProcessesLocked"

    const/16 v47, 0x0

    invoke-static/range {v44 .. v47}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 730
    :cond_845
    return-void

    .line 712
    :cond_846
    const-string v44, "%05d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v42, v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_69c

    :cond_866
    const-string v44, "%05d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v40, v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_6b6

    :cond_886
    const-string/jumbo v44, "null"

    goto :goto_824

    .line 497
    :pswitch_data_88a
    .packed-switch 0xb
        :pswitch_fb
        :pswitch_fb
        :pswitch_16d
    .end packed-switch
.end method

.method protected updateActiveInActivePackagesLocked()V
    .registers 37

    .prologue
    .line 1854
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_c

    .line 1855
    const-string v2, "SAMP_SPCM_test"

    const-string/jumbo v4, "updateActiveInActivePackagesLocked "

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_11c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_11c

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    if-eqz v2, :cond_11c

    .line 1860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 1862
    .local v27, "pm":Landroid/content/pm/PackageManager;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    .local v22, "installedPackagesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v19, 0xd

    .line 1866
    .local v19, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v35

    .line 1867
    .local v35, "users":[I
    const/16 v34, 0x0

    .local v34, "ui":I
    :goto_3d
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v34

    if-ge v0, v2, :cond_56

    .line 1868
    aget v2, v35, v34

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1867
    add-int/lit8 v34, v34, 0x1

    goto :goto_3d

    .line 1871
    :cond_56
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_77

    .line 1872
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateActiveInActivePackagesLocked --- all pakgs size "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_77
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_80

    .line 1875
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    .line 1877
    :cond_80
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_82
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_3f6

    .line 1878
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/PackageInfo;

    .line 1880
    .local v26, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->isSPCMExcludePkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 1881
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_c1

    .line 1882
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateActiveInActivePackagesLocked - Skip package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_c1
    :goto_c1
    add-int/lit8 v20, v20, 0x1

    goto :goto_82

    .line 1885
    :cond_c4
    new-instance v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/SmartAdjustManager$PackageTable;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    .line 1886
    .local v3, "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->name:Ljava/lang/String;

    .line 1887
    move-object/from16 v0, v26

    iput-object v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    .line 1888
    const/4 v2, 0x3

    iput v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    .line 1889
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isRunning:Z

    .line 1890
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isWidget:Z

    .line 1891
    const/4 v2, 0x0

    iput v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 1892
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastServiceActivityTime:J

    .line 1893
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    .line 1894
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c1

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    .line 1907
    .end local v3    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v22    # "installedPackagesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "pi":Landroid/content/pm/PackageInfo;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v34    # "ui":I
    .end local v35    # "users":[I
    :cond_11c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/SmartAdjustManager;->mPackageScoreUpdated:Z

    .line 1911
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1912
    .local v5, "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v6, 0x0

    .line 1913
    .local v6, "totalForegroundtime_indays":J
    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/am/SmartAdjustManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v6

    .line 1915
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    .local v11, "activePackages_indays_applocking":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v12, 0x0

    .line 1918
    .local v12, "totalForegroundtime_indays_applocking":J
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_14a

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v2, :cond_14a

    .line 1919
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9}, Lcom/android/server/am/SmartAdjustManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v12

    .line 1923
    :cond_14a
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1924
    .local v23, "mPackagesForScoring":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SmartAdjustManager$PackageTable;>;"
    const/16 v21, 0x0

    .line 1925
    .local v21, "inm":Landroid/app/INotificationManager;
    const/16 v32, 0x0

    .line 1927
    .local v32, "strPreferredIME":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1930
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_1bc

    .line 1931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1932
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 1933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "default_input_method"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1935
    if-eqz v32, :cond_19e

    const-string v2, "/"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 1937
    const-string v2, "/"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 1938
    .local v33, "tmp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v33, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19e

    .line 1939
    const/4 v2, 0x0

    aget-object v32, v33, v2

    .line 1943
    .end local v33    # "tmp":[Ljava/lang/String;
    :cond_19e
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_1bc

    .line 1944
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreferredIMEPackage -: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_1bc
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_1be
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_3f6

    .line 1949
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1950
    .restart local v3    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    .line 1951
    .restart local v26    # "pi":Landroid/content/pm/PackageInfo;
    const/16 v24, 0x0

    .line 1953
    .local v24, "packageScore":I
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_1f6

    .line 1954
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- mActivePackages PackageInfo name"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_1f6
    const/16 v16, 0x0

    .line 1958
    .local v16, "activityScore":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_208

    .line 1959
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;J)I

    move-result v16

    .line 1962
    :cond_208
    const/16 v29, 0x0

    .line 1963
    .local v29, "serviceScore":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_21e

    .line 1964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActiveServices;->getPackageServiceScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ServiceInfo;)I

    move-result v29

    .line 1968
    :cond_21e
    const/16 v28, 0x0

    .line 1969
    .local v28, "providerScore":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_230

    .line 1970
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I

    move-result v28

    .line 1974
    :cond_230
    add-int v2, v16, v29

    add-int v24, v2, v28

    .line 1976
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_276

    .line 1977
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- packageScore "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " activityScore "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " serviceScore  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " providerScore "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_276
    move/from16 v0, v24

    iput v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 1983
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_313

    .line 1984
    const/16 v25, 0x0

    .line 1986
    .local v25, "packageScore_applocking":I
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v2, :cond_2c5

    .line 1987
    const/16 v17, 0x0

    .line 1989
    .local v17, "activityScore_applocking":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_29b

    .line 1990
    move-object/from16 v0, v26

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v17

    .line 1993
    :cond_29b
    const/16 v30, 0x0

    .line 1995
    .local v30, "serviceScore_applocking":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_2b5

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    invoke-virtual {v2, v3, v4, v8, v9}, Lcom/android/server/am/ActiveServices;->getPackageServiceScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ServiceInfo;J)I

    move-result v30

    .line 1999
    :cond_2b5
    add-int v2, v17, v30

    const/16 v4, 0x3e8

    move/from16 v0, v28

    if-ne v0, v4, :cond_2bf

    const/16 v28, 0x0

    .end local v28    # "providerScore":I
    :cond_2bf
    add-int v25, v2, v28

    .line 2000
    move/from16 v0, v25

    iput v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    .line 2003
    .end local v17    # "activityScore_applocking":I
    .end local v30    # "serviceScore_applocking":I
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    iget-object v4, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .line 2005
    .local v31, "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    if-eqz v31, :cond_313

    .line 2006
    move/from16 v0, v25

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    .line 2008
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    if-nez v2, :cond_313

    .line 2009
    if-eqz v32, :cond_317

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_317

    .line 2010
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_30e

    .line 2011
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preferredIME - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_30e
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    .line 1947
    .end local v25    # "packageScore_applocking":I
    .end local v31    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    :cond_313
    :goto_313
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1be

    .line 2014
    .restart local v25    # "packageScore_applocking":I
    .restart local v31    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    :cond_317
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->hasActiveWidgetsForSM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_349

    .line 2015
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_343

    .line 2016
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActiveWidget - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_343
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    goto :goto_313

    .line 2019
    :cond_349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v2, :cond_383

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallPaper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_383

    .line 2020
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_37d

    .line 2021
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_37d
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    goto :goto_313

    .line 2024
    :cond_383
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    if-eqz v2, :cond_3be

    iget-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v2, v8, v14

    if-lez v2, :cond_3be

    .line 2025
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_3b7

    .line 2026
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ByUsageStats - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_3b7
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    goto/16 :goto_313

    .line 2029
    :cond_3be
    if-eqz v21, :cond_313

    .line 2031
    :try_start_3c0
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->hasNotificationForAppLocking(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_313

    .line 2032
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_3ec

    .line 2033
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_3ec
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z
    :try_end_3f1
    .catch Landroid/os/RemoteException; {:try_start_3c0 .. :try_end_3f1} :catch_3f3

    goto/16 :goto_313

    .line 2037
    :catch_3f3
    move-exception v2

    goto/16 :goto_313

    .line 2059
    .end local v3    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v5    # "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    .end local v6    # "totalForegroundtime_indays":J
    .end local v11    # "activePackages_indays_applocking":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    .end local v12    # "totalForegroundtime_indays_applocking":J
    .end local v16    # "activityScore":I
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v23    # "mPackagesForScoring":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SmartAdjustManager$PackageTable;>;"
    .end local v24    # "packageScore":I
    .end local v25    # "packageScore_applocking":I
    .end local v26    # "pi":Landroid/content/pm/PackageInfo;
    .end local v29    # "serviceScore":I
    .end local v31    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    .end local v32    # "strPreferredIME":Ljava/lang/String;
    :cond_3f6
    const/4 v2, 0x1

    :try_start_3f7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->updateSPCMExternalWhiteList(Z)V
    :try_end_3fc
    .catch Ljava/io/IOException; {:try_start_3f7 .. :try_end_3fc} :catch_3fd

    .line 2064
    :cond_3fc
    :goto_3fc
    return-void

    .line 2060
    :catch_3fd
    move-exception v18

    .line 2061
    .local v18, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_3fc

    .line 2062
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException in updateSPCMExternalWhiteList,"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3fc
.end method

.method protected updateCSCPackagesList()V
    .registers 11

    .prologue
    .line 1818
    const/4 v0, 0x0

    .line 1820
    .local v0, "cscFile":Ljava/io/FileReader;
    :try_start_1
    const-string v6, "SAMP_SPCM_test"

    const-string v7, "CSC File load.. "

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const/4 v5, 0x0

    .line 1822
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/csc/default_application_order.xml"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v2, "cscFileChk":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3c

    .line 1824
    new-instance v1, Ljava/io/FileReader;

    const-string v6, "/system/csc/default_application_order.xml"

    invoke-direct {v1, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_27} :catch_47
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_5d
    .catchall {:try_start_1 .. :try_end_27} :catchall_73

    .line 1825
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .local v1, "cscFile":Ljava/io/FileReader;
    :try_start_27
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 1826
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1827
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1828
    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1829
    if-eqz v5, :cond_3b

    .line 1830
    invoke-direct {p0, v5}, Lcom/android/server/am/SmartAdjustManager;->loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_3b} :catch_85
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3b} :catch_82
    .catchall {:try_start_27 .. :try_end_3b} :catchall_7f

    :cond_3b
    move-object v0, v1

    .line 1842
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    :cond_3c
    if-eqz v0, :cond_41

    .line 1844
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 1851
    .end local v2    # "cscFileChk":Ljava/io/File;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_41
    :goto_41
    return-void

    .line 1846
    .restart local v2    # "cscFileChk":Ljava/io/File;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_42
    move-exception v3

    .line 1847
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    .line 1833
    .end local v2    # "cscFileChk":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_47
    move-exception v3

    .line 1834
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_48
    :try_start_48
    const-string v6, "SAMP_SPCM_test"

    const-string v7, "XmlPullParserException in updateActiveInActivePackageLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_73

    .line 1842
    if-eqz v0, :cond_41

    .line 1844
    :try_start_54
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_41

    .line 1846
    :catch_58
    move-exception v3

    .line 1847
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    .line 1837
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5d
    move-exception v3

    .line 1838
    .local v3, "e":Ljava/io/IOException;
    :goto_5e
    :try_start_5e
    const-string v6, "SAMP_SPCM_test"

    const-string v7, "IOException in updateActiveInActivePackageLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_73

    .line 1842
    if-eqz v0, :cond_41

    .line 1844
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_41

    .line 1846
    :catch_6e
    move-exception v3

    .line 1847
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    .line 1842
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_73
    move-exception v6

    :goto_74
    if-eqz v0, :cond_79

    .line 1844
    :try_start_76
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    .line 1848
    :cond_79
    :goto_79
    throw v6

    .line 1846
    :catch_7a
    move-exception v3

    .line 1847
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_79

    .line 1842
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFileChk":Ljava/io/File;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_7f
    move-exception v6

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_74

    .line 1837
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :catch_82
    move-exception v3

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_5e

    .line 1833
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :catch_85
    move-exception v3

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_48
.end method

.method final updateHotnessAdj(Landroid/content/pm/ApplicationInfo;I)V
    .registers 11
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "nHotnessType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 411
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 412
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_48

    .line 413
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v7, v6, v6}, Lcom/android/server/am/ActivityManagerService;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 414
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 416
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 417
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_48

    const-string v2, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find package record and new a Process Reccord in updateHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_48
    sget-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 437
    :cond_52
    :goto_52
    return-void

    .line 423
    :cond_53
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    .line 424
    const-string/jumbo v2, "unknown"

    sput-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 426
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 427
    :try_start_5f
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 428
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 429
    .local v1, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->increaseHotness(I)V

    .line 430
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :goto_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_5f .. :try_end_7e} :catchall_c5

    .line 436
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_52

    const-string v2, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateHotnessAdj right after finishboot in PPM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 432
    .end local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :cond_b8
    :try_start_b8
    new-instance v1, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;-><init>(Lcom/android/server/am/SmartAdjustManager;I)V

    .line 433
    .restart local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 435
    .end local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :catchall_c5
    move-exception v2

    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_c5

    throw v2
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    .line 348
    if-eqz p1, :cond_6

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 381
    :cond_6
    :goto_6
    return-void

    .line 351
    :cond_7
    sget-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 354
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    .line 355
    const-string/jumbo v5, "unknown"

    sput-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 357
    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 358
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 359
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 360
    .local v3, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->increaseHotness(I)V

    .line 361
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :goto_3b
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v5, :cond_c6

    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v5

    iget v7, p0, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_MAX_VALUE:I

    if-le v5, v7, :cond_c6

    .line 368
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_52

    const-string v5, "SAMP_Hotness"

    const-string v7, "hotness value reached MAX, the hotness value of all app will be tuned half"

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_52
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 371
    .local v4, "it":Ljava/util/Iterator;
    :cond_5c
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 372
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 373
    .local v2, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v1, v0

    .line 374
    .local v1, "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->setHalf(I)V

    .line 375
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_5c

    const-string v5, "SAMP_Hotness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HotnessMAX! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 379
    .end local v1    # "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v2    # "entryHotness":Ljava/util/Map$Entry;
    .end local v3    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v4    # "it":Ljava/util/Iterator;
    :catchall_b5
    move-exception v5

    monitor-exit v6
    :try_end_b7
    .catchall {:try_start_1d .. :try_end_b7} :catchall_b5

    throw v5

    .line 363
    :cond_b8
    :try_start_b8
    new-instance v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    invoke-direct {v3, p0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;-><init>(Lcom/android/server/am/SmartAdjustManager;I)V

    .line 364
    .restart local v3    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3b

    .line 379
    :cond_c6
    monitor-exit v6
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_b5

    .line 380
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "SAMP_Hotness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateHotnessAdj "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hotness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method final updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .prologue
    .line 440
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 446
    :cond_6
    :goto_6
    return-void

    .line 442
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 443
    :try_start_a
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_4c

    .line 445
    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "SAMP_SDHA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastKillTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 444
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public updatePackageResetTime(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "strPkgName"    # Ljava/lang/String;
    .param p2, "strCallerPkgName"    # Ljava/lang/String;
    .param p3, "isFullScreen"    # Z

    .prologue
    const/16 v2, 0x321

    .line 930
    if-nez p1, :cond_5

    .line 946
    :cond_4
    :goto_4
    return-void

    .line 934
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p3, :cond_4

    .line 942
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->removeMessages(I)V

    .line 943
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 944
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 945
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public updatePackageScore(Ljava/lang/String;)V
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1718
    .local v3, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_17

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v2, :cond_17

    .line 1719
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/SmartAdjustManager;->UpdateSPCMDB(Ljava/lang/String;)V

    .line 1722
    :cond_17
    if-nez v3, :cond_3f

    .line 1723
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_3e

    .line 1724
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePackageScore  packageName "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not in Active list, not update it.."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_3e
    :goto_3e
    return-void

    .line 1730
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/SmartAdjustManager;->mPackageScoreUpdated:Z

    if-eqz v2, :cond_3e

    .line 1733
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v5, "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v6, 0x0

    .line 1736
    .local v6, "totalForegroundtime_indays":J
    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/am/SmartAdjustManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v6

    .line 1738
    iget-object v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    .line 1739
    .local v20, "pi":Landroid/content/pm/PackageInfo;
    const/16 v18, 0x0

    .line 1742
    .local v18, "packageScore":I
    const/16 v16, 0x0

    .line 1743
    .local v16, "activityScore":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6d

    .line 1744
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;J)I

    move-result v16

    .line 1747
    :cond_6d
    if-nez v16, :cond_71

    .line 1748
    const/16 v16, 0x2710

    .line 1751
    :cond_71
    const/16 v22, 0x0

    .line 1752
    .local v22, "serviceScore":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_87

    .line 1753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActiveServices;->getPackageServiceScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ServiceInfo;)I

    move-result v22

    .line 1757
    :cond_87
    const/16 v21, 0x0

    .line 1758
    .local v21, "providerScore":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_99

    .line 1759
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I

    move-result v21

    .line 1762
    :cond_99
    add-int v2, v16, v22

    add-int v18, v2, v21

    .line 1764
    move/from16 v0, v18

    iput v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 1766
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_3e

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v2, :cond_3e

    .line 1767
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1768
    .local v11, "activePackages_indays_applocking":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v12, 0x0

    .line 1769
    .local v12, "totalForegroundtime_indays_applocking":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9}, Lcom/android/server/am/SmartAdjustManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v12

    .line 1771
    const/16 v19, 0x0

    .line 1772
    .local v19, "packageScore_applocking":I
    const/16 v17, 0x0

    .line 1774
    .local v17, "activityScore_applocking":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_d3

    .line 1775
    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v17

    .line 1778
    :cond_d3
    if-nez v17, :cond_d7

    .line 1779
    const/16 v17, 0x2710

    .line 1781
    :cond_d7
    const/16 v23, 0x0

    .line 1783
    .local v23, "serviceScore_applocking":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_f1

    .line 1784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    invoke-virtual {v2, v3, v4, v8, v9}, Lcom/android/server/am/ActiveServices;->getPackageServiceScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ServiceInfo;J)I

    move-result v23

    .line 1787
    :cond_f1
    add-int v2, v17, v23

    const/16 v4, 0x3e8

    move/from16 v0, v21

    if-ne v0, v4, :cond_fb

    const/16 v21, 0x0

    .end local v21    # "providerScore":I
    :cond_fb
    add-int v19, v2, v21

    .line 1788
    move/from16 v0, v19

    iput v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    goto/16 :goto_3e
.end method

.method protected updateProperty()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x400

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2950
    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    .line 2951
    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2957
    const-string/jumbo v2, "sys.config.samp_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2958
    .local v1, "systemPropString":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2959
    :cond_1e
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2961
    :cond_2a
    const-string/jumbo v2, "sys.config.samp_hotness_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2962
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2963
    :cond_3e
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2965
    :cond_48
    const-string/jumbo v2, "sys.config.samp_spcm_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2966
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    .line 2967
    :cond_5c
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    .line 2969
    :cond_66
    const-string/jumbo v2, "sys.config.spcm_db_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2970
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    .line 2971
    :cond_7a
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    .line 2973
    :cond_84
    const-string/jumbo v2, "sys.config.spcm_db_launcher"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2974
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    .line 2975
    :cond_98
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    .line 2977
    :cond_a2
    const-string/jumbo v2, "sys.config.spcm_preload_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2978
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    .line 2979
    :cond_b6
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    .line 2981
    :cond_c0
    const-string/jumbo v2, "sys.config.spcm_kill_skip"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2982
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_KILL_SKIP:Z

    .line 2983
    :cond_d4
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_KILL_SKIP:Z

    .line 2985
    :cond_de
    const-string/jumbo v2, "sys.config.samp_debug"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2986
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    .line 2987
    :cond_f2
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    .line 2988
    :cond_fc
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    invoke-static {v2}, Lcom/android/server/am/ProcessRecord;->setSmartDHADebugMode(Z)V

    .line 2990
    const-string/jumbo v2, "sys.config.samp_debug_trace"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2991
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    .line 2992
    :cond_115
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    .line 2995
    :cond_11f
    const-string/jumbo v2, "sys.config.spcm_gcm_kill_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2996
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_GCM_KILL_ENABLE:Z

    .line 2997
    :cond_133
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13d

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_GCM_KILL_ENABLE:Z

    .line 3001
    :cond_13d
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_1e2

    .line 3003
    :try_start_141
    const-string/jumbo v2, "sys.config.s_dha_margin"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3004
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15e

    .line 3005
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ProcessList;->setSmartDHADefaultMargin(J)V

    .line 3006
    :cond_15e
    const-string/jumbo v2, "sys.config.s_dha_bg_max"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3007
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_175

    .line 3008
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 3009
    :cond_175
    const-string/jumbo v2, "sys.config.s_dha_bg_min"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3010
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18c

    .line 3011
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 3012
    :cond_18c
    const-string/jumbo v2, "sys.config.s_dha_db_kill"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3013
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a1

    .line 3014
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    .line 3015
    :cond_1a1
    const-string/jumbo v2, "sys.config.s_dha_extra_cache"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3016
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b8

    .line 3017
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    .line 3018
    :cond_1b8
    const-string/jumbo v2, "sys.config.s_dha_cache_max"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3019
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1cd

    .line 3020
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    .line 3021
    :cond_1cd
    const-string/jumbo v2, "sys.config.service_kill_adj"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3022
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e2

    .line 3023
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/SmartAdjustManager;->SERVICE_KILL_LIMIT_OF_ADJ:I
    :try_end_1e2
    .catch Ljava/lang/NumberFormatException; {:try_start_141 .. :try_end_1e2} :catch_344

    .line 3030
    :cond_1e2
    :goto_1e2
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v2, :cond_210

    .line 3031
    const-string/jumbo v2, "sys.config.service_kill_adj"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3032
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1fb

    .line 3033
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/SmartAdjustManager;->SERVICE_KILL_LIMIT_OF_ADJ:I

    .line 3034
    :cond_1fb
    const-string/jumbo v2, "sys.config.samp_debug_spcm"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3035
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_210

    .line 3036
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    .line 3039
    :cond_210
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAMP       : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_351

    const-string v2, "Enabled"

    :goto_223
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hotness    : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_355

    const-string v2, "Enabled"

    :goto_241
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPCM       : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v2, :cond_359

    const-string v2, "Enabled"

    :goto_25f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samp debug : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_35d

    const-string v2, "Enabled"

    :goto_27e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spcm debug : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_361

    const-string v2, "Enabled"

    :goto_29d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samp trace : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v2, :cond_365

    const-string v2, "Enabled"

    :goto_2bc
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_343

    .line 3046
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DftMgn : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getSmartDHADefaultMargin()J

    move-result-wide v4

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M, ExtraC : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M, MaxBg :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v4, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MinBg :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v4, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MaxC :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", DBcKill :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    if-eqz v2, :cond_369

    const-string v2, "Y"

    :goto_328
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Hotness :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_36c

    const-string v2, "Y"

    :goto_338
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_343
    return-void

    .line 3024
    :catch_344
    move-exception v0

    .line 3025
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SAMP_SDHA"

    const-string v3, "Smart DHA parameter incorrect format!"

    invoke-static {v2, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1e2

    .line 3039
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_351
    const-string v2, "Disabled"

    goto/16 :goto_223

    .line 3040
    :cond_355
    const-string v2, "Disabled"

    goto/16 :goto_241

    .line 3041
    :cond_359
    const-string v2, "Disabled"

    goto/16 :goto_25f

    .line 3042
    :cond_35d
    const-string v2, "Disabled"

    goto/16 :goto_27e

    .line 3043
    :cond_361
    const-string v2, "Disabled"

    goto/16 :goto_29d

    .line 3044
    :cond_365
    const-string v2, "Disabled"

    goto/16 :goto_2bc

    .line 3046
    :cond_369
    const-string v2, "N"

    goto :goto_328

    :cond_36c
    const-string v2, "N"

    goto :goto_338
.end method

.method protected updateSPCMExternalWhiteList(Z)V
    .registers 17
    .param p1, "readFromFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2278
    if-eqz p1, :cond_79

    .line 2279
    const/4 v3, 0x0

    .line 2281
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_3
    const-string v1, "/data/misc/lpnet/lpnetConfig"

    .line 2282
    .local v1, "CONFIG_FILE":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2283
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 2285
    .local v8, "latestFileModifiedtime":J
    iget-wide v12, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMExtWhiteListMod:J

    cmp-long v12, v12, v8

    if-eqz v12, :cond_81

    .line 2286
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_10e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_89

    .line 2289
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_1e
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_7e

    .line 2290
    const-string v12, "[SPCMExternalWhiteList]"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 2291
    :cond_2c
    :goto_2c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1e

    .line 2292
    const-string v12, "SPCMExternalWhiteListend"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e

    .line 2295
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_2c

    .line 2296
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    const-string v12, "SAMP_SPCM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ExtWhiteList pkg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_66} :catch_67
    .catchall {:try_start_1e .. :try_end_66} :catchall_10a

    goto :goto_2c

    .line 2304
    .end local v10    # "line":Ljava/lang/String;
    :catch_67
    move-exception v5

    move-object v3, v4

    .line 2305
    .end local v1    # "CONFIG_FILE":Ljava/lang/String;
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "latestFileModifiedtime":J
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_69
    :try_start_69
    const-string v12, "SAMP_SPCM"

    const-string/jumbo v13, "updateSPCMExternalWhiteList Error! ---- "

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_89

    .line 2308
    if-eqz v3, :cond_79

    .line 2310
    :try_start_76
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_105

    .line 2317
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_79
    :goto_79
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    if-nez v12, :cond_90

    .line 2334
    :cond_7d
    return-void

    .line 2302
    .restart local v1    # "CONFIG_FILE":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "latestFileModifiedtime":J
    .restart local v10    # "line":Ljava/lang/String;
    :cond_7e
    :try_start_7e
    iput-wide v8, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMExtWhiteListMod:J
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_80} :catch_67
    .catchall {:try_start_7e .. :try_end_80} :catchall_10a

    move-object v3, v4

    .line 2308
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v10    # "line":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_81
    if-eqz v3, :cond_79

    .line 2310
    :try_start_83
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_79

    .line 2311
    :catch_87
    move-exception v12

    goto :goto_79

    .line 2308
    .end local v1    # "CONFIG_FILE":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "latestFileModifiedtime":J
    :catchall_89
    move-exception v12

    :goto_8a
    if-eqz v3, :cond_8f

    .line 2310
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_108

    .line 2312
    :cond_8f
    :goto_8f
    throw v12

    .line 2320
    .end local v3    # "br":Ljava/io/BufferedReader;
    :cond_90
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_96
    :goto_96
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2321
    .local v11, "pkgName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2322
    .local v0, "ActivePt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v0, :cond_d3

    .line 2323
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2324
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v12, :cond_d3

    const-string v12, "SAMP_SPCM_test"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removed pkg in ActivePackageList"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_d3
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2328
    .local v2, "InActivePt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v2, :cond_96

    .line 2329
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2330
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v12, :cond_96

    const-string v12, "SAMP_SPCM_test"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removed pkg in InActivePackageList"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 2311
    .end local v0    # "ActivePt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v2    # "InActivePt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkgName":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_105
    move-exception v12

    goto/16 :goto_79

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_108
    move-exception v13

    goto :goto_8f

    .line 2308
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "CONFIG_FILE":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "latestFileModifiedtime":J
    :catchall_10a
    move-exception v12

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_8a

    .line 2304
    .end local v1    # "CONFIG_FILE":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "latestFileModifiedtime":J
    :catch_10e
    move-exception v5

    goto/16 :goto_69
.end method
