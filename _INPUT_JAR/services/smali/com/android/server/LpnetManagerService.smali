.class public Lcom/android/server/LpnetManagerService;
.super Landroid/os/ILpnetManager$Stub;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LpnetManagerService$IniFile;,
        Lcom/android/server/LpnetManagerService$DBManager;,
        Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER_IDLE:Ljava/lang/String; = "ACTION_TRIGGER_IDLE"

.field private static final ACTION_TRIGGER_UNUSED_APP_LRU:Ljava/lang/String; = "ACTION_TRIGGER_UNUSED_APP_LRU "

.field private static final APP_FREEZER_LOG:Z

.field private static final AUTO_FREEZE_ENABLED:Ljava/lang/String; = "autoFreezeEnabled"

.field private static final AUTO_FREEZE_UNUSED_APPS_TIME_LIMIT:Ljava/lang/String; = "autoFreezeUnusedAppTime"

.field private static final AUTO_FREEZE_WITH_OWN_LRU:Ljava/lang/String; = "autoFreezeWithOwnLRU"

.field public static AppStartRestrictionInScreenOn:Z = false

.field private static final BLACKLIST:Ljava/lang/String; = "BlackList"

.field private static final COLUMN_NAME_EXTRAS_0:Ljava/lang/String; = "extras_0"

.field private static final COLUMN_NAME_EXTRAS_1:Ljava/lang/String; = "extras_1"

.field private static final COLUMN_NAME_EXTRAS_2:Ljava/lang/String; = "extras_2"

.field private static final COLUMN_NAME_EXTRAS_3:Ljava/lang/String; = "extras_3"

.field private static final COLUMN_NAME_EXTRAS_4:Ljava/lang/String; = "extras_4"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/data/misc/lpnet/lpnetConfig"

.field private static final CONFIG_SECTION:Ljava/lang/String; = "APPFREEZER_INIT"

.field private static final DISABLE_LRU:Ljava/lang/String; = "disableLRU"

.field private static final ENABLE_APPSTART_RESTRICT_IN_SCREEN_ON:Ljava/lang/String; = "enableAppStartRestrictScreenOn"

.field private static final ENABLE_FREEZE_BOOT_COMPLETED:Ljava/lang/String; = "enableFreezeBootCompleted"

.field private static final ENABLE_IMPORTANCE_CHECK:Ljava/lang/String; = "enableImportanceCheck"

.field private static final ENABLE_IMPORTANCE_FGONLY:Ljava/lang/String; = "enableImportanceFGOnly"

.field private static final ENABLE_SOLUTION:Ljava/lang/String; = "enableSolution"

.field private static final ENABLE_TIME_SHIFT:Ljava/lang/String; = "enableTimeShift"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field public static final FEATURE_ENABLE_APPFREEZER:Z = true

.field public static FEATURE_ENABLE_LPC:Z = false

.field public static final FEATURE_ENABLE_UNUSED_APP_LOCKING:Z = true

.field private static final FREEZE_IMMEDIATE:Ljava/lang/String; = "freezeImmediate"

.field private static final INACTIVITY_REPEAT_TIME:Ljava/lang/String; = "inActivityRepeatTime"

.field private static final INCLUDE_INSTALLED_TIME_FOR_LRU:Ljava/lang/String; = "includeInstalledTimeForLRU"

.field private static final INCLUDE_SYS_APP_FOR_LRU:Ljava/lang/String; = "includeSysAppForLru"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final LAST_USED:Ljava/lang/String; = "LAST_USED"

.field private static final LAST_USED_COLLECTION_INTERVAL:Ljava/lang/String; = "usageCollectionInterval"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field private static final LRU_BOOT_ACTION:J = 0x1b7740L

.field private static final LRU_CHECK_INTERVAL:Ljava/lang/String; = "lruCheckInterval"

.field private static final NETWORK_STAT:Ljava/lang/String; = "NETWORK_STAT"

.field private static final NETWORK_STAT_LRU:Ljava/lang/String; = "NETWORK_STAT_LRU"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final SCREEN_OFF_ACTION_TIME:Ljava/lang/String; = "screenOffActionTime"

.field private static final SM_APP_LOCK:Ljava/lang/String; = "com.samsung.android.sm.ACTION_APP_LOCKING_CONTROL"

.field private static final TAG:Ljava/lang/String; = "LpnetManagerService"

.field private static final TOUCHWIZHOME_INTERACTION_ENABLED:Z = false

.field private static final TRAFFIC_STAT_COLLECTOR:I = 0x7d0

.field private static final UNUSED_APPS_PERIOD_FOR_LRU_DB_DUMP:Ljava/lang/String; = "unusedPeriod"

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"

.field private static final WHITELIST:Z = true

.field private static final WHITELIST_ALL:Ljava/lang/String; = "whitelistAll"

.field private static final WHITELIST_ALL_GCM:Ljava/lang/String; = "whitelistAllGCM"

.field private static globalCurr:J

.field private static final isChinaNal:Ljava/lang/String;

.field public static mGCMAppFreezerEnabled:Z

.field static sLastModifiedTime:J

.field static final sSmartManagerDbFile:Ljava/io/File;

.field private static timeShift:J


# instance fields
.field private final SMART_MGR_URI:Landroid/net/Uri;

.field private final SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

.field private allowedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Landroid/content/IntentFilter;

.field private lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAlarm:Landroid/app/AlarmManager;

.field public mAppLockEnabled:Z

.field private mAutoFreezeEnabled:Z

.field private mAutoRunBasedFreeze:Z

.field private mBlackListedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

.field public volatile mDataConnectionIsConnected:Z

.field public volatile mDataConnectivityAtScreenOff:Z

.field private mDefaultPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableLRU:Z

.field private mEnableAppStartRestrictionInScreenOn:Z

.field private mEnableImportanceCheck:Z

.field private mEnableImportanceFGOnly:Z

.field private mEnableTimeShift:Z

.field private mFreezeImmediate:Z

.field private mFreezeWithOwnLRU:Z

.field private volatile mGCMMessageReceivedTime:J

.field private final mIdleTrafficMapLock:Ljava/lang/Object;

.field private mIdleTriggerIntent:Landroid/app/PendingIntent;

.field private mInactivityRepeatTime:J

.field private mIncludeInstalledTimeForLRU:Z

.field private mIncludeSystemAppsForLRU:Z

.field private mIntLruCheckInterval:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentRecvForPM:Landroid/content/BroadcastReceiver;

.field private mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

.field private mLRUIntent:Landroid/app/PendingIntent;

.field private final mLRUTrafficMapLock:Ljava/lang/Object;

.field private mLastUsedTimeCollectionInterval:J

.field private mLastUsedTriggerIntent:Landroid/app/PendingIntent;

.field private mLruMissedImmediateFreezeTime:J

.field private volatile mMissedLRUFiring:Z

.field private mNetworkStatIntent:Landroid/app/PendingIntent;

.field private mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

.field private mNotForceStoppedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgLock:Ljava/lang/Object;

.field private mPreviousLRUfreezedTime:J

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mSMPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSPCMPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffActionTime:J

.field private volatile mScreenOn:Z

.field private mSmartManagerObserver:Landroid/database/ContentObserver;

.field private mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

.field private mSolnEnabled:Z

.field private mTargetPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPkgLock:Ljava/lang/Object;

.field private mTrafficStatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUnusedAutoFreezeTime:J

.field private mUnusedPeriod:I

.field private mUserFSPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionDB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListAll:Z

.field private mWhiteListGCM:Z

.field private final nHandler:Landroid/os/Handler;

.field private networkFilter:Landroid/content/IntentFilter;

.field private pkgFilter:Landroid/content/IntentFilter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 98
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LpnetManagerService;->AppStartRestrictionInScreenOn:Z

    .line 166
    sput-boolean v4, Lcom/android/server/LpnetManagerService;->mGCMAppFreezerEnabled:Z

    .line 263
    sput-wide v2, Lcom/android/server/LpnetManagerService;->globalCurr:J

    .line 264
    sput-wide v2, Lcom/android/server/LpnetManagerService;->timeShift:J

    .line 266
    sput-boolean v4, Lcom/android/server/LpnetManagerService;->FEATURE_ENABLE_LPC:Z

    .line 274
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LpnetManagerService;->isChinaNal:Ljava/lang/String;

    .line 1220
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.samsung.android.sm/databases/sm.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/LpnetManagerService;->sSmartManagerDbFile:Ljava/io/File;

    .line 1223
    sput-wide v2, Lcom/android/server/LpnetManagerService;->sLastModifiedTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 276
    invoke-direct {p0}, Landroid/os/ILpnetManager$Stub;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mBlackListedPackages:Ljava/util/HashSet;

    .line 120
    iput-object v4, p0, Lcom/android/server/LpnetManagerService;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    .line 141
    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    .line 148
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    .line 149
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    .line 160
    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z

    .line 161
    iput-wide v6, p0, Lcom/android/server/LpnetManagerService;->mGCMMessageReceivedTime:J

    .line 162
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mScreenOn:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mDataConnectivityAtScreenOff:Z

    .line 165
    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mAppLockEnabled:Z

    .line 170
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    .line 173
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    .line 177
    iput-wide v8, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    .line 180
    iput-wide v8, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    .line 183
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J

    .line 185
    iput v2, p0, Lcom/android/server/LpnetManagerService;->mUnusedPeriod:I

    .line 187
    iput-wide v6, p0, Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J

    .line 189
    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    .line 192
    iput-object v4, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    .line 196
    iput-object v4, p0, Lcom/android/server/LpnetManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    .line 259
    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;

    .line 260
    const-string v0, "content://com.samsung.android.sm/AppFreezerWhiteList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    .line 261
    iput-object v4, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    .line 656
    new-instance v0, Lcom/android/server/LpnetManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$1;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    .line 675
    new-instance v0, Lcom/android/server/LpnetManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$2;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    .line 786
    new-instance v0, Lcom/android/server/LpnetManagerService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$3;-><init>(Lcom/android/server/LpnetManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;

    .line 794
    new-instance v0, Lcom/android/server/LpnetManagerService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$4;-><init>(Lcom/android/server/LpnetManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    .line 805
    new-instance v0, Lcom/android/server/LpnetManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$5;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    iput-object p1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    .line 279
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    .line 288
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    .line 289
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    .line 292
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "NETWORK_STAT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "NETWORK_STAT_LRU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.sm.ACTION_APP_LOCKING_CONTROL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    .line 300
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->networkFilter:Landroid/content/IntentFilter;

    .line 307
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->networkFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.sm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v1, "com.sec.spp.push"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.freezer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->initializeFromConfigFile()V

    .line 326
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    if-nez v0, :cond_1cf

    .line 327
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->FEATURE_ENABLE_LPC:Z

    if-nez v0, :cond_1cf

    .line 328
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "LAST_USED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    :cond_1cf
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_1e1

    .line 337
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU:Ljava/util/Map;

    .line 341
    :cond_1e1
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    if-eqz v0, :cond_1f2

    .line 342
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    .line 344
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->intentReceiverInitialization()V

    .line 354
    :cond_1f2
    const-string v0, "LpnetManagerService"

    const-string v1, "LpnetManagerService created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/LpnetManagerService;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LpnetManagerService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LpnetManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/LpnetManagerService;->screenOffAction(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/LpnetManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/LpnetManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->isAutoRunBlockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/LpnetManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->idleAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/LpnetManagerService;Lcom/android/server/LpnetManagerService$DBManager;)Lcom/android/server/LpnetManagerService$DBManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Lcom/android/server/LpnetManagerService$DBManager;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/LpnetManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/LpnetManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->getDBValues(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/LpnetManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/LpnetManagerService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/LpnetManagerService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/LpnetManagerService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/LpnetManagerService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000()J
    .registers 2

    .prologue
    .line 96
    sget-wide v0, Lcom/android/server/LpnetManagerService;->globalCurr:J

    return-wide v0
.end method

.method static synthetic access$5002(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 96
    sput-wide p0, Lcom/android/server/LpnetManagerService;->globalCurr:J

    return-wide p0
.end method

.method static synthetic access$5100(Lcom/android/server/LpnetManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->freezeBasedOnLRU(Z)V

    return-void
.end method

.method static synthetic access$5200()J
    .registers 2

    .prologue
    .line 96
    sget-wide v0, Lcom/android/server/LpnetManagerService;->timeShift:J

    return-wide v0
.end method

.method static synthetic access$5202(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 96
    sput-wide p0, Lcom/android/server/LpnetManagerService;->timeShift:J

    return-wide p0
.end method

.method static synthetic access$5300(Lcom/android/server/LpnetManagerService;I)Ljava/util/Map;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->getLRU(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/LpnetManagerService;Ljava/util/Map;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->updateDBForLRU(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/LpnetManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/LpnetManagerService;->freezerActionNotificationBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->unFreeze(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/LpnetManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->enableDisableSoln(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/LpnetManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method private enableDisableSoln(Z)V
    .registers 12
    .param p1, "pEnableSolution"    # Z

    .prologue
    const-wide/16 v8, 0x7d0

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    .line 1612
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_2d

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDisableSoln called pEnableSolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSolnEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1616
    .local v6, "identity":J
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    if-ne v0, p1, :cond_66

    .line 1618
    if-eqz p1, :cond_5c

    .line 1619
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->initializeFromConfigFile()V

    .line 1625
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V

    .line 1626
    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->getDBValues(Z)V

    .line 1629
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    .line 1630
    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    .line 1631
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_5c

    .line 1632
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    if-eqz v0, :cond_5d

    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_5d

    .line 1633
    const-string v1, "NETWORK_STAT_LRU"

    iget-wide v2, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    sub-long/2addr v2, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    .line 1705
    :cond_5c
    :goto_5c
    return-void

    .line 1635
    :cond_5d
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    iget-wide v2, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    goto :goto_5c

    .line 1640
    :cond_66
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    .line 1641
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1642
    :try_start_6b
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1643
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_c8

    .line 1644
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1645
    :try_start_74
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1646
    :cond_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_cb

    .line 1648
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    if-eqz v0, :cond_d7

    .line 1649
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->initializeFromConfigFile()V

    .line 1650
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V

    .line 1651
    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->getDBValues(Z)V

    .line 1654
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    .line 1659
    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    .line 1663
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->intentReceiverInitialization()V

    .line 1664
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1665
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1666
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_c4

    .line 1667
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    if-eqz v0, :cond_ce

    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_ce

    .line 1668
    const-string v1, "NETWORK_STAT_LRU"

    iget-wide v2, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    sub-long/2addr v2, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    .line 1703
    :cond_c4
    :goto_c4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5c

    .line 1643
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v0

    .line 1646
    :catchall_cb
    move-exception v0

    :try_start_cc
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0

    .line 1670
    :cond_ce
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    iget-wide v2, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    goto :goto_c4

    .line 1682
    :cond_d7
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1683
    :cond_e2
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1684
    :cond_ed
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1685
    :cond_f8
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_112

    .line 1686
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1687
    :cond_107
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1689
    :cond_112
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1690
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1691
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1692
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1693
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_c4
.end method

.method private freezeBasedOnLRU(Z)V
    .registers 64
    .param p1, "alarmBasedFreeze"    # Z

    .prologue
    .line 2461
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freezeBasedOnLRU(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    if-nez v5, :cond_d4

    const-string v5, "ChinaNalSecurity"

    sget-object v6, Lcom/android/server/LpnetManagerService;->isChinaNal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d4

    .line 2465
    :try_start_2a
    const-string v5, "android.os.SmartManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v52

    .line 2467
    .local v52, "smartManagerClass":Ljava/lang/Class;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 2468
    .local v14, "allmethods":[Ljava/lang/reflect/Method;
    move-object/from16 v16, v14

    .local v16, "arr$":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v38, v0

    .local v38, "len$":I
    const/16 v30, 0x0

    .local v30, "i$":I
    move/from16 v31, v30

    .end local v16    # "arr$":[Ljava/lang/reflect/Method;
    .end local v30    # "i$":I
    .end local v38    # "len$":I
    .local v31, "i$":I
    :goto_3f
    move/from16 v0, v31

    move/from16 v1, v38

    if-ge v0, v1, :cond_9f

    aget-object v45, v16, v31

    .line 2469
    .local v45, "method":Ljava/lang/reflect/Method;
    if-eqz v45, :cond_96

    .line 2470
    invoke-virtual/range {v45 .. v45}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getLeastRecentlyUsedAppList"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 2471
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .line 2472
    .local v47, "obj":Ljava/lang/Object;
    if-eqz v47, :cond_96

    .line 2473
    check-cast v47, [Ljava/lang/String;

    .end local v47    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v47

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v56, v0

    .line 2474
    .local v56, "theLRUList":[Ljava/lang/String;
    move-object/from16 v17, v56

    .local v17, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v39, v0

    .local v39, "len$":I
    const/16 v30, 0x0

    .end local v31    # "i$":I
    .restart local v30    # "i$":I
    :goto_82
    move/from16 v0, v30

    move/from16 v1, v39

    if-ge v0, v1, :cond_96

    aget-object v57, v17, v30

    .line 2475
    .local v57, "thePackage":Ljava/lang/String;
    if-eqz v57, :cond_93

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_93} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_93} :catch_ca
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_93} :catch_cf

    .line 2474
    :cond_93
    add-int/lit8 v30, v30, 0x1

    goto :goto_82

    .line 2468
    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v30    # "i$":I
    .end local v39    # "len$":I
    .end local v56    # "theLRUList":[Ljava/lang/String;
    .end local v57    # "thePackage":Ljava/lang/String;
    :cond_96
    add-int/lit8 v30, v31, 0x1

    .restart local v30    # "i$":I
    move/from16 v31, v30

    .end local v30    # "i$":I
    .restart local v31    # "i$":I
    goto :goto_3f

    .line 2490
    .end local v14    # "allmethods":[Ljava/lang/reflect/Method;
    .end local v31    # "i$":I
    .end local v45    # "method":Ljava/lang/reflect/Method;
    .end local v52    # "smartManagerClass":Ljava/lang/Class;
    :catch_9b
    move-exception v28

    .line 2491
    .local v28, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 2706
    .end local v28    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_9f
    :goto_9f
    if-eqz p1, :cond_c1

    .line 2707
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    if-eqz v5, :cond_78c

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    const-wide/16 v8, 0x7d0

    cmp-long v5, v6, v8

    if-lez v5, :cond_78c

    .line 2708
    const-string v7, "NETWORK_STAT_LRU"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    const-wide/16 v10, 0x7d0

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    .line 2713
    :cond_c1
    :goto_c1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J

    .line 2714
    return-void

    .line 2492
    :catch_ca
    move-exception v28

    .line 2493
    .local v28, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_9f

    .line 2494
    .end local v28    # "e":Ljava/lang/IllegalAccessException;
    :catch_cf
    move-exception v28

    .line 2495
    .local v28, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_9f

    .line 2499
    .end local v28    # "e":Ljava/lang/ClassNotFoundException;
    :cond_d4
    const-string v48, "android"

    .line 2500
    .local v48, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "usagestats"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManager;

    .line 2501
    .local v4, "mUsageStatsService":Landroid/app/usage/UsageStatsManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/AppOpsManager;

    .line 2502
    .local v40, "mAppOpsManager":Landroid/app/AppOpsManager;
    if-eqz v40, :cond_783

    if-eqz v4, :cond_783

    .line 2503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 2504
    .local v24, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v29

    .line 2505
    .local v29, "endTime":Ljava/util/Calendar;
    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2506
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 2508
    .local v18, "beginTime":Ljava/util/Calendar;
    const/4 v5, 0x5

    const/4 v6, 0x5

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 2509
    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 2510
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 2513
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_169

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode calling with params packagename uid mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_169
    const/16 v5, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 2515
    const/4 v5, 0x4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v53

    .line 2517
    .local v53, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const/16 v5, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x3

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 2518
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_1cc

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode calling with params packagename uid mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :cond_1cc
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_22f

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stats length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Begin Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " End Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",Curr Time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v24

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_22f
    new-instance v59, Ljava/util/HashMap;

    invoke-direct/range {v59 .. v59}, Ljava/util/HashMap;-><init>()V

    .line 2523
    .local v59, "usageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :goto_238
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_257

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/app/usage/UsageStats;

    .line 2524
    .local v58, "u":Landroid/app/usage/UsageStats;
    invoke-virtual/range {v58 .. v58}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Long;

    invoke-virtual/range {v58 .. v58}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v59

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_238

    .line 2530
    .end local v58    # "u":Landroid/app/usage/UsageStats;
    :cond_257
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 2531
    .local v12, "LRUBasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v27, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 2532
    .local v27, "defaultLastUsedTime":Ljava/lang/Long;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 2534
    .local v46, "notAllowedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_26a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v51

    .line 2535
    .local v51, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v51, :cond_9f

    .line 2536
    invoke-interface/range {v51 .. v51}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .end local v30    # "i$":Ljava/util/Iterator;
    :cond_278
    :goto_278
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_509

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2537
    .local v55, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/16 v19, 0x0

    .line 2538
    .local v19, "chnFreezerPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    if-eqz v5, :cond_456

    .line 2539
    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v38, v0

    .restart local v38    # "len$":I
    const/16 v31, 0x0

    .restart local v31    # "i$":I
    :goto_299
    move/from16 v0, v31

    move/from16 v1, v38

    if-ge v0, v1, :cond_2ad

    aget-object v49, v16, v31

    .line 2540
    .local v49, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/server/LpnetManagerService;->isAutoRunBlockedPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_452

    .line 2541
    move-object/from16 v19, v49

    .line 2545
    .end local v49    # "pkg":Ljava/lang/String;
    :cond_2ad
    if-eqz v19, :cond_278

    .line 2556
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v31    # "i$":I
    .end local v38    # "len$":I
    :cond_2af
    const/16 v54, 0x0

    .line 2557
    .local v54, "targetPkg":Ljava/lang/String;
    if-eqz v19, :cond_46f

    .line 2558
    move-object/from16 v54, v19

    .line 2562
    :goto_2b5
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProcessName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ImpValue :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ImpValueReason :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", LRU is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    const/16 v42, 0x0

    .line 2565
    .local v42, "mFreezeCondition":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    if-eqz v5, :cond_477

    .line 2566
    move-object/from16 v0, v55

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_30d

    .line 2567
    const/16 v42, 0x1

    .line 2576
    :cond_30d
    :goto_30d
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFreezeCondition:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    if-eqz v42, :cond_4cd

    .line 2578
    move-object/from16 v0, v59

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Long;

    .line 2579
    .local v35, "lastUseTimeLong":Ljava/lang/Long;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v5}, Lcom/android/server/LpnetManagerService;->isActiveTrafficExisting(Ljava/lang/String;Z)Z

    move-result v13

    .line 2580
    .local v13, "activeTraffic":Z
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_367

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "targetPkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lastUseTimeLong: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_367
    if-eqz v35, :cond_4a0

    .line 2582
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .line 2583
    .local v36, "lastUseTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    sub-long v6, v24, v6

    cmp-long v5, v6, v36

    if-lez v5, :cond_499

    const/16 v33, 0x1

    .line 2584
    .local v33, "isUnusedAppTimeExpired":Z
    :goto_379
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_3c1

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProcessName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ImpValue :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", LRU is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",lastUseTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_3c1
    if-nez p1, :cond_3c5

    .line 2587
    const/16 v33, 0x1

    .line 2589
    :cond_3c5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    if-eqz v5, :cond_3cc

    .line 2590
    const/4 v13, 0x0

    .line 2592
    :cond_3cc
    const-string v6, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canFreeze:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v13, :cond_49d

    const/4 v5, 0x1

    :goto_3e8
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    if-eqz v33, :cond_278

    .line 2594
    if-nez v13, :cond_278

    move-object/from16 v0, v54

    invoke-interface {v12, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_278

    .line 2595
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LRUBasedMap put targetPkg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    move-object/from16 v0, v35

    move-object/from16 v1, v54

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_420
    .catch Landroid/os/RemoteException; {:try_start_26a .. :try_end_420} :catch_422

    goto/16 :goto_278

    .line 2698
    .end local v13    # "activeTraffic":Z
    .end local v19    # "chnFreezerPackage":Ljava/lang/String;
    .end local v33    # "isUnusedAppTimeExpired":Z
    .end local v35    # "lastUseTimeLong":Ljava/lang/Long;
    .end local v36    # "lastUseTime":J
    .end local v42    # "mFreezeCondition":Z
    .end local v51    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v54    # "targetPkg":Ljava/lang/String;
    .end local v55    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_422
    move-exception v28

    .line 2699
    .local v28, "e":Landroid/os/RemoteException;
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in freezeBasedOnLRU Local Msg is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_9f

    .line 2539
    .end local v28    # "e":Landroid/os/RemoteException;
    .restart local v16    # "arr$":[Ljava/lang/String;
    .restart local v19    # "chnFreezerPackage":Ljava/lang/String;
    .restart local v31    # "i$":I
    .restart local v38    # "len$":I
    .restart local v49    # "pkg":Ljava/lang/String;
    .restart local v51    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v55    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_452
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_299

    .line 2548
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v31    # "i$":I
    .end local v38    # "len$":I
    .end local v49    # "pkg":Ljava/lang/String;
    :cond_456
    :try_start_456
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v55

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 2550
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v15, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_465
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_456 .. :try_end_465} :catch_46c
    .catch Landroid/os/RemoteException; {:try_start_456 .. :try_end_465} :catch_422

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2af

    goto/16 :goto_278

    .line 2551
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_46c
    move-exception v28

    .line 2552
    .local v28, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_278

    .line 2560
    .end local v28    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v54    # "targetPkg":Ljava/lang/String;
    :cond_46f
    :try_start_46f
    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v54, v0

    goto/16 :goto_2b5

    .line 2570
    .restart local v42    # "mFreezeCondition":Z
    :cond_477
    move-object/from16 v0, v55

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0xc8

    if-le v5, v6, :cond_30d

    move-object/from16 v0, v55

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-ne v5, v6, :cond_495

    move-object/from16 v0, v55

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v6, 0x4

    if-le v5, v6, :cond_30d

    move-object/from16 v0, v55

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_30d

    .line 2573
    :cond_495
    const/16 v42, 0x1

    goto/16 :goto_30d

    .line 2583
    .restart local v13    # "activeTraffic":Z
    .restart local v35    # "lastUseTimeLong":Ljava/lang/Long;
    .restart local v36    # "lastUseTime":J
    :cond_499
    const/16 v33, 0x0

    goto/16 :goto_379

    .line 2592
    .restart local v33    # "isUnusedAppTimeExpired":Z
    :cond_49d
    const/4 v5, 0x0

    goto/16 :goto_3e8

    .line 2600
    .end local v33    # "isUnusedAppTimeExpired":Z
    .end local v36    # "lastUseTime":J
    :cond_4a0
    if-nez v13, :cond_278

    move-object/from16 v0, v54

    invoke-interface {v12, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_278

    .line 2601
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LRUBasedMap put targetPkg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    move-object/from16 v0, v27

    move-object/from16 v1, v54

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_278

    .line 2606
    .end local v13    # "activeTraffic":Z
    .end local v35    # "lastUseTimeLong":Ljava/lang/Long;
    :cond_4cd
    move-object/from16 v0, v46

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_278

    .line 2607
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notAllowedPackages add :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    move-object/from16 v0, v46

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_278

    .line 2613
    .end local v19    # "chnFreezerPackage":Ljava/lang/String;
    .end local v42    # "mFreezeCondition":Z
    .end local v54    # "targetPkg":Ljava/lang/String;
    .end local v55    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_509
    const/16 v20, 0x0

    .line 2614
    .local v20, "count":I
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v44

    .line 2615
    .local v44, "mapSize":I
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LRUBasedMap size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    new-instance v43, Landroid/media/SamsungAudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v43

    invoke-direct {v0, v5}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    .line 2619
    .local v43, "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/media/AudioManager;

    .line 2622
    .local v41, "mAudioManager":Landroid/media/AudioManager;
    new-instance v32, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2623
    .local v32, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2624
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v50

    .line 2625
    .local v50, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v50

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2626
    .local v21, "currentHomePackage":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_586

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : currentHomePackage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_586
    const/16 v23, 0x0

    .line 2630
    .local v23, "currentIMEpkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2631
    .local v22, "currentIME":Ljava/lang/String;
    if-eqz v22, :cond_5b1

    const-string v5, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b1

    .line 2632
    const/4 v5, 0x0

    const-string v6, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 2634
    :cond_5b1
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_5db

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : currentIME, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : currentIMEpkg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5db
    .catch Landroid/os/RemoteException; {:try_start_46f .. :try_end_5db} :catch_422

    .line 2637
    :cond_5db
    const/16 v26, 0x0

    .line 2639
    .local v26, "currentWallpaperPkg":Ljava/lang/String;
    :try_start_5dd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v61

    .line 2640
    .local v61, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v61, :cond_5f1

    .line 2641
    invoke-virtual/range {v61 .. v61}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v60

    .line 2642
    .local v60, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-eqz v60, :cond_5f1

    .line 2643
    invoke-virtual/range {v60 .. v60}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;
    :try_end_5f0
    .catch Ljava/lang/Exception; {:try_start_5dd .. :try_end_5f0} :catch_648
    .catch Landroid/os/RemoteException; {:try_start_5dd .. :try_end_5f0} :catch_422

    move-result-object v26

    .line 2650
    .end local v60    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .end local v61    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_5f1
    :goto_5f1
    :try_start_5f1
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_60f

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : currentWallpaperPkg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_60f
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_617
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/String;

    .line 2655
    .restart local v57    # "thePackage":Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_655

    .line 2656
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_617

    .line 2646
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v57    # "thePackage":Ljava/lang/String;
    :catch_648
    move-exception v28

    .line 2647
    .local v28, "e":Ljava/lang/Exception;
    const-string v5, "LpnetManagerService"

    const-string/jumbo v6, "wallpaperinfo exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f1

    .line 2659
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v30    # "i$":Ljava/util/Iterator;
    .restart local v57    # "thePackage":Ljava/lang/String;
    :cond_655
    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_680

    invoke-virtual/range {v41 .. v41}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_680

    .line 2660
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_617

    .line 2663
    :cond_680
    if-eqz v21, :cond_6a8

    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a8

    .line 2664
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_617

    .line 2667
    :cond_6a8
    if-eqz v23, :cond_6d0

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d0

    .line 2668
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_617

    .line 2671
    :cond_6d0
    if-eqz v26, :cond_6f8

    move-object/from16 v0, v26

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f8

    .line 2672
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_617

    .line 2675
    :cond_6f8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    if-nez v5, :cond_768

    .line 2676
    add-int/lit8 v20, v20, 0x1

    .line 2679
    const/4 v5, 0x1

    move/from16 v0, v44

    if-ne v0, v5, :cond_774

    .line 2680
    move-object/from16 v0, v59

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Long;

    .line 2681
    .restart local v35    # "lastUseTimeLong":Ljava/lang/Long;
    if-eqz v35, :cond_768

    .line 2682
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .line 2683
    .restart local v36    # "lastUseTime":J
    const-wide/16 v6, 0x2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    mul-long/2addr v6, v8

    sub-long v6, v24, v6

    cmp-long v5, v6, v36

    if-lez v5, :cond_771

    const/16 v34, 0x1

    .line 2684
    .local v34, "isUnusedAppTimeExpired2":Z
    :goto_724
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_766

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LastApp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",lastUseTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",currentTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isUnusedAppTimeExpired2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_766
    if-eqz v34, :cond_9f

    .line 2695
    .end local v34    # "isUnusedAppTimeExpired2":Z
    .end local v35    # "lastUseTimeLong":Ljava/lang/Long;
    .end local v36    # "lastUseTime":J
    :cond_768
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_76f
    .catch Landroid/os/RemoteException; {:try_start_5f1 .. :try_end_76f} :catch_422

    goto/16 :goto_617

    .line 2683
    .restart local v35    # "lastUseTimeLong":Ljava/lang/Long;
    .restart local v36    # "lastUseTime":J
    :cond_771
    const/16 v34, 0x0

    goto :goto_724

    .line 2692
    .end local v35    # "lastUseTimeLong":Ljava/lang/Long;
    .end local v36    # "lastUseTime":J
    :cond_774
    move/from16 v0, v20

    int-to-double v6, v0

    move/from16 v0, v44

    int-to-double v8, v0

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_768

    goto/16 :goto_9f

    .line 2703
    .end local v12    # "LRUBasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v18    # "beginTime":Ljava/util/Calendar;
    .end local v20    # "count":I
    .end local v21    # "currentHomePackage":Ljava/lang/String;
    .end local v22    # "currentIME":Ljava/lang/String;
    .end local v23    # "currentIMEpkg":Ljava/lang/String;
    .end local v24    # "currentTime":J
    .end local v26    # "currentWallpaperPkg":Ljava/lang/String;
    .end local v27    # "defaultLastUsedTime":Ljava/lang/Long;
    .end local v29    # "endTime":Ljava/util/Calendar;
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v32    # "intent":Landroid/content/Intent;
    .end local v41    # "mAudioManager":Landroid/media/AudioManager;
    .end local v43    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .end local v44    # "mapSize":I
    .end local v46    # "notAllowedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v50    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v51    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v53    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v57    # "thePackage":Ljava/lang/String;
    .end local v59    # "usageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_783
    const-string v5, "LpnetManagerService"

    const-string v6, "mAppOpsManager is null or mUsageStatsService is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 2710
    .end local v4    # "mUsageStatsService":Landroid/app/usage/UsageStatsManager;
    .end local v40    # "mAppOpsManager":Landroid/app/AppOpsManager;
    .end local v48    # "packageName":Ljava/lang/String;
    :cond_78c
    const-string v7, "ACTION_TRIGGER_UNUSED_APP_LRU "

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    const-wide/16 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    goto/16 :goto_c1
.end method

.method private freezerActionNotificationBroadcast(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 2065
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2066
    .local v0, "intentFrAction":Landroid/content/Intent;
    const-string v1, "ACTION_APPFREEZER_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2067
    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2068
    const-string v1, "FreezeType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2069
    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_3f

    const-string v2, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPFREEZER_NOTIFICATION, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_47

    const-string v1, "freezed"

    :goto_34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_3f
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2071
    return-void

    .line 2069
    :cond_47
    const-string/jumbo v1, "unfreezed"

    goto :goto_34
.end method

.method private getDBValues(Z)V
    .registers 13
    .param p1, "freezeImmediate"    # Z

    .prologue
    .line 1505
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_1c

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBValues called freezeImmediate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_1c
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.READ_SM_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const/4 v6, 0x0

    .line 1510
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_25
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isDefaultFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isSMFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isUserForceStopped"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "lastUsedTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "versionMgmt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "extras"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5b} :catch_126

    move-result-object v6

    .line 1517
    :goto_5c
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1518
    if-eqz v6, :cond_1c8

    .line 1519
    :cond_63
    :goto_63
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 1520
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 1530
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 1531
    const/4 v8, 0x0

    .line 1532
    .local v8, "isFSNeeded":Z
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1533
    :try_start_7b
    const-string v0, "1"

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 1534
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1535
    if-eqz p1, :cond_a3

    .line 1536
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1537
    const/4 v8, 0x1

    .line 1544
    :cond_a3
    :goto_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_7b .. :try_end_a4} :catchall_161

    .line 1545
    if-eqz v8, :cond_ae

    .line 1546
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V

    .line 1550
    .end local v8    # "isFSNeeded":Z
    :cond_ae
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 1551
    const-string v0, "1"

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1552
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1556
    :cond_cc
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 1557
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    :cond_e2
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 1561
    const/4 v8, 0x0

    .line 1562
    .restart local v8    # "isFSNeeded":Z
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1563
    :try_start_ed
    const-string v0, "1"

    const/4 v2, 0x6

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 1564
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 1565
    if-eqz p1, :cond_115

    .line 1566
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 1567
    const/4 v8, 0x1

    .line 1574
    :cond_115
    :goto_115
    monitor-exit v1
    :try_end_116
    .catchall {:try_start_ed .. :try_end_116} :catchall_16f

    .line 1575
    if-eqz v8, :cond_63

    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAppLockEnabled:Z

    if-eqz v0, :cond_63

    .line 1576
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_63

    .line 1513
    .end local v8    # "isFSNeeded":Z
    :catch_126
    move-exception v7

    .line 1514
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5c

    .line 1541
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "isFSNeeded":Z
    :cond_148
    :try_start_148
    const-string v0, "0"

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1542
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_a3

    .line 1544
    :catchall_161
    move-exception v0

    monitor-exit v1
    :try_end_163
    .catchall {:try_start_148 .. :try_end_163} :catchall_161

    throw v0

    .line 1572
    :cond_164
    :try_start_164
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_115

    .line 1574
    :catchall_16f
    move-exception v0

    monitor-exit v1
    :try_end_171
    .catchall {:try_start_164 .. :try_end_171} :catchall_16f

    throw v0

    .line 1590
    .end local v8    # "isFSNeeded":Z
    :cond_172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1591
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1592
    .local v9, "managedPkg":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1593
    :try_start_17d
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1594
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAppLockEnabled:Z

    if-eqz v0, :cond_18b

    .line 1595
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1597
    :cond_18b
    monitor-exit v1
    :try_end_18c
    .catchall {:try_start_17d .. :try_end_18c} :catchall_1c9

    .line 1598
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 1599
    .local v10, "managedPkgs":[Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_1b8

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM Freezed Apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_1b8
    :try_start_1b8
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, v10}, Landroid/app/IActivityManager;->getSMpkgsList([Ljava/lang/String;)V

    .line 1602
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_1c8

    const-string v0, "LpnetManagerService"

    const-string v1, "SM Freezed Apps are updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catch Landroid/os/RemoteException; {:try_start_1b8 .. :try_end_1c8} :catch_1cc

    .line 1607
    .end local v9    # "managedPkg":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "managedPkgs":[Ljava/lang/String;
    :cond_1c8
    :goto_1c8
    return-void

    .line 1597
    .restart local v9    # "managedPkg":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1c9
    move-exception v0

    :try_start_1ca
    monitor-exit v1
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_1c9

    throw v0

    .line 1603
    .restart local v10    # "managedPkgs":[Ljava/lang/String;
    :catch_1cc
    move-exception v7

    .line 1604
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to getSMpkgsList, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c8
.end method

.method private getLRU(I)Ljava/util/Map;
    .registers 38
    .param p1, "unusedPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1726
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1727
    .local v21, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v25, "android"

    .line 1729
    .local v25, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "usagestats"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 1730
    .local v2, "mUsageStatsService":Landroid/app/usage/UsageStatsManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/AppOpsManager;

    .line 1731
    .local v23, "mAppOpsManager":Landroid/app/AppOpsManager;
    if-eqz v23, :cond_391

    if-eqz v2, :cond_391

    .line 1732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1733
    .local v12, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1734
    .local v11, "endTime":Ljava/util/Calendar;
    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1735
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1737
    .local v10, "beginTime":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1738
    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1739
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1742
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_8a

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMode calling with params packagename uid mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_8a
    const/16 v3, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1744
    const/4 v3, 0x4

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v28

    .line 1747
    .local v28, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const/16 v3, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1748
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_ed

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMode calling with params packagename uid mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_ed
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_14e

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stats length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,Begin Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,End Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,Curr Time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_14e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    if-eqz v3, :cond_23c

    .line 1753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v26

    .line 1754
    .local v26, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_15e
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_23c

    .line 1755
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageInfo;

    .line 1757
    .local v24, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1758
    .local v27, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 1759
    .local v20, "launchIntent":Landroid/content/Intent;
    if-eqz v20, :cond_1b9

    .line 1761
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    if-eqz v3, :cond_1db

    .line 1762
    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 1763
    .local v17, "installTime":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v6, v12, v6

    mul-int/lit8 v3, p1, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v0, v3

    move-wide/from16 v34, v0

    sub-long v6, v6, v34

    cmp-long v3, v4, v6

    if-gez v3, :cond_1bc

    .line 1764
    new-instance v3, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    .end local v17    # "installTime":Ljava/lang/Long;
    :cond_1b9
    :goto_1b9
    add-int/lit8 v15, v15, 0x1

    goto :goto_15e

    .line 1766
    .restart local v17    # "installTime":Ljava/lang/Long;
    :cond_1bc
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_1b9

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installTime is null for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b9

    .line 1770
    .end local v17    # "installTime":Ljava/lang/Long;
    :cond_1db
    :try_start_1db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1771
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b9

    .line 1772
    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 1773
    .restart local v17    # "installTime":Ljava/lang/Long;
    if-eqz v17, :cond_1b9

    .line 1774
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v6, v12, v6

    mul-int/lit8 v3, p1, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v0, v3

    move-wide/from16 v34, v0

    sub-long v6, v6, v34

    cmp-long v3, v4, v6

    if-gez v3, :cond_1b9

    .line 1775
    new-instance v19, Ljava/util/Date;

    new-instance v3, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1776
    .local v19, "last":Ljava/util/Date;
    new-instance v3, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_238
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1db .. :try_end_238} :catch_239

    goto :goto_1b9

    .line 1780
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "installTime":Ljava/lang/Long;
    .end local v19    # "last":Ljava/util/Date;
    :catch_239
    move-exception v3

    goto/16 :goto_1b9

    .line 1787
    .end local v15    # "i":I
    .end local v20    # "launchIntent":Landroid/content/Intent;
    .end local v24    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v27    # "pkgName":Ljava/lang/String;
    :cond_23c
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_24a

    .line 1788
    const-string v3, "LpnetManagerService"

    const-string/jumbo v4, "stats.size() is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_24a
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_24e
    :goto_24e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/usage/UsageStats;

    .line 1792
    .local v29, "u":Landroid/app/usage/UsageStats;
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_291

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stats: Pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " usedTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_291
    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 1794
    .restart local v27    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    if-eqz v3, :cond_2ac

    .line 1795
    new-instance v3, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24e

    .line 1798
    :cond_2ac
    :try_start_2ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1799
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_24e

    .line 1800
    new-instance v3, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2ac .. :try_end_2ce} :catch_2cf

    goto :goto_24e

    .line 1802
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2cf
    move-exception v3

    goto/16 :goto_24e

    .line 1807
    .end local v27    # "pkgName":Ljava/lang/String;
    .end local v29    # "u":Landroid/app/usage/UsageStats;
    :cond_2d2
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2da
    :goto_2da
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2fa

    .line 1808
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1809
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1810
    .local v22, "lruPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2da

    .line 1811
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto :goto_2da

    .line 1815
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v22    # "lruPackageName":Ljava/lang/String;
    :cond_2fa
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    if-eqz v3, :cond_308

    sget-wide v4, Lcom/android/server/LpnetManagerService;->timeShift:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_309

    .line 1832
    .end local v10    # "beginTime":Ljava/util/Calendar;
    .end local v11    # "endTime":Ljava/util/Calendar;
    .end local v12    # "currentTime":J
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v28    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_308
    :goto_308
    return-object v21

    .line 1819
    .restart local v10    # "beginTime":Ljava/util/Calendar;
    .restart local v11    # "endTime":Ljava/util/Calendar;
    .restart local v12    # "currentTime":J
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v28    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_309
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_311
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1820
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1821
    .local v8, "PackageName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 1822
    .local v30, "valueFromUsageStat":J
    sget-wide v4, Lcom/android/server/LpnetManagerService;->timeShift:J

    sub-long v32, v30, v4

    .line 1823
    .local v32, "valueFromUsageStatAfterTimeShift":J
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_37d

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", valueFromUsageStat :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeShift : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/android/server/LpnetManagerService;->timeShift:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", valueFromUsageStatAfterTimeShift "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_37d
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_311

    .line 1828
    .end local v8    # "PackageName":Ljava/lang/String;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v30    # "valueFromUsageStat":J
    .end local v32    # "valueFromUsageStatAfterTimeShift":J
    :cond_38b
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/LpnetManagerService;->timeShift:J

    goto/16 :goto_308

    .line 1830
    .end local v10    # "beginTime":Ljava/util/Calendar;
    .end local v11    # "endTime":Ljava/util/Calendar;
    .end local v12    # "currentTime":J
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v28    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_391
    const-string v3, "LpnetManagerService"

    const-string v4, "mAppOpsManager is null or mUsageStatsService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_308
.end method

.method private getWhiteListDBValues()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1480
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_d

    const-string v0, "LpnetManagerService"

    const-string v1, "getWhiteListDBValues called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_d
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const/4 v6, 0x0

    .line 1485
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_15
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "extras_0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "extras_1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "extras_2"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "extras_3"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "extras_4"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_45} :catch_63

    move-result-object v6

    .line 1493
    :goto_46
    if-eqz v6, :cond_87

    .line 1494
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1495
    :cond_4d
    :goto_4d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1496
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1497
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 1488
    :catch_63
    move-exception v7

    .line 1489
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    .line 1500
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1502
    :cond_87
    return-void
.end method

.method private idleAction()V
    .registers 15

    .prologue
    .line 1101
    const/4 v6, 0x0

    .line 1102
    .local v6, "scheduleStat":Z
    const/4 v3, 0x0

    .line 1103
    .local v3, "gcmMessageJustReceived":Z
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_2c

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "idleAction: mDataConnectivityAtScreenOff="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/LpnetManagerService;->mDataConnectivityAtScreenOff:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Current="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_2c
    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mDataConnectivityAtScreenOff:Z

    if-eqz v10, :cond_34

    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v10, :cond_1f3

    .line 1109
    :cond_34
    const/4 v5, 0x0

    .line 1111
    .local v5, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_35
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v10}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_1ad

    move-result-object v5

    .line 1116
    :cond_3b
    :goto_3b
    if-eqz v5, :cond_1f3

    .line 1119
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1120
    .local v7, "targetPackageCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1121
    :try_start_45
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1122
    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    if-eqz v10, :cond_60

    .line 1123
    iget-object v12, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_1be

    .line 1124
    :try_start_51
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1125
    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mAppLockEnabled:Z

    if-eqz v10, :cond_5f

    .line 1126
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1128
    :cond_5f
    monitor-exit v12
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_1bb

    .line 1130
    :cond_60
    :try_start_60
    monitor-exit v11
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_1be

    .line 1131
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_65
    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_135

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1134
    .local v8, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_65

    .line 1135
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_d3

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lru="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iRCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iRPid= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_d3
    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0xc8

    if-le v10, v11, :cond_1cb

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0x190

    if-ne v10, v11, :cond_e9

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v11, 0x4

    if-le v10, v11, :cond_1cb

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_1cb

    .line 1164
    :cond_e9
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_107

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is NOT in foreground or visible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_107
    const/4 v0, 0x0

    .line 1166
    .local v0, "activeTraffic":Z
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_11b

    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v10, :cond_11b

    .line 1167
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/LpnetManagerService;->isActiveTrafficExisting(Ljava/lang/String;Z)Z

    move-result v0

    .line 1170
    :cond_11b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mGCMMessageReceivedTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    cmp-long v10, v10, v12

    if-gez v10, :cond_1c1

    .line 1171
    const/4 v3, 0x1

    .line 1172
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_135

    const-string v10, "LpnetManagerService"

    const-string v11, "GCM Message arrived in the last 1 min, skipping action"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    .end local v0    # "activeTraffic":Z
    .end local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_135
    if-nez v3, :cond_1f3

    .line 1187
    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    if-nez v10, :cond_14d

    .line 1188
    iget-object v11, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1189
    :try_start_13e
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1190
    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mAppLockEnabled:Z

    if-eqz v10, :cond_14c

    .line 1191
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1193
    :cond_14c
    monitor-exit v11
    :try_end_14d
    .catchall {:try_start_13e .. :try_end_14d} :catchall_1f0

    .line 1196
    :cond_14d
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_151
    :goto_151
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1198
    .local v9, "thePackage":Ljava/lang/String;
    :try_start_15d
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1199
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_151

    .line 1200
    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    const/high16 v11, 0x200000

    if-eq v10, v11, :cond_151

    .line 1202
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_18b

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Need to Forcestop : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_18b
    invoke-virtual {p0, v9}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_18e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15d .. :try_end_18e} :catch_18f

    goto :goto_151

    .line 1205
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_18f
    move-exception v2

    .line 1206
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_151

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NameNotFoundException occurred for package :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_151

    .line 1112
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "targetPackageCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "thePackage":Ljava/lang/String;
    :catch_1ad
    move-exception v2

    .line 1113
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_3b

    const-string v10, "LpnetManagerService"

    const-string v11, "Exception occurred on getting Running Apps"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1128
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v7    # "targetPackageCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1bb
    move-exception v10

    :try_start_1bc
    monitor-exit v12
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    :try_start_1bd
    throw v10

    .line 1130
    :catchall_1be
    move-exception v10

    monitor-exit v11
    :try_end_1c0
    .catchall {:try_start_1bd .. :try_end_1c0} :catchall_1be

    throw v10

    .line 1175
    .restart local v0    # "activeTraffic":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1c1
    if-eqz v0, :cond_65

    .line 1176
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1177
    const/4 v6, 0x1

    goto/16 :goto_65

    .line 1180
    .end local v0    # "activeTraffic":Z
    :cond_1cb
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_1e9

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is in foreground or visible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_1e9
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_65

    .line 1193
    .end local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_1f0
    move-exception v10

    :try_start_1f1
    monitor-exit v11
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_1f0

    throw v10

    .line 1213
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7    # "targetPackageCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1f3
    if-nez v6, :cond_1f7

    if-eqz v3, :cond_1fd

    .line 1214
    :cond_1f7
    iget-wide v10, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    invoke-direct {p0, v10, v11}, Lcom/android/server/LpnetManagerService;->screenOffAction(J)V

    .line 1218
    :goto_1fc
    return-void

    .line 1216
    :cond_1fd
    iget-wide v10, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    invoke-direct {p0, v10, v11}, Lcom/android/server/LpnetManagerService;->screenOffAction(J)V

    goto :goto_1fc
.end method

.method private initFreezerActionNotification()V
    .registers 2

    .prologue
    .line 2033
    new-instance v0, Lcom/android/server/LpnetManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$6;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 2061
    return-void
.end method

.method private initializeFromConfigFile()V
    .registers 15

    .prologue
    .line 481
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_b

    const-string v7, "LpnetManagerService"

    const-string v10, "initializeFromConfigFile "

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_b
    const/4 v4, 0x0

    .line 484
    .local v4, "stringBlackList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 486
    .local v1, "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    :try_start_d
    new-instance v2, Lcom/android/server/LpnetManagerService$IniFile;

    const-string v7, "/data/misc/lpnet/lpnetConfig"

    invoke-direct {v2, v7}, Lcom/android/server/LpnetManagerService$IniFile;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_1a3

    .line 492
    .end local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .local v2, "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    const-string v7, "ChinaNalSecurity"

    sget-object v10, Lcom/android/server/LpnetManagerService;->isChinaNal:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 493
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    .line 494
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    .line 495
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    .line 496
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    .line 499
    :cond_2a
    if-eqz v2, :cond_487

    .line 500
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeEnabled"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    .line 501
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeWithOwnLRU"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    .line 502
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "whitelistAll"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    .line 503
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "whitelistAllGCM"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    .line 504
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "freezeImmediate"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    .line 505
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "includeSysAppForLru"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    .line 506
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "disableLRU"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    .line 507
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableTimeShift"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    .line 508
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableImportanceCheck"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    .line 509
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableImportanceFGOnly"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    .line 510
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableAppStartRestrictScreenOn"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    .line 511
    iget-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    sput-boolean v7, Lcom/android/server/LpnetManagerService;->AppStartRestrictionInScreenOn:Z

    .line 512
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "includeInstalledTimeForLRU"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    .line 514
    const-wide/16 v8, 0x0

    .line 515
    .local v8, "tempValFromConfigFile":J
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "screenOffActionTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 517
    const-wide/16 v10, 0xa

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1c1

    const-wide/16 v10, 0xe10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1c1

    .line 518
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    .line 523
    :cond_e0
    :goto_e0
    const-wide/16 v8, 0x0

    .line 524
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "inActivityRepeatTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 526
    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1e1

    const-wide/32 v10, 0x15180

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1e1

    .line 527
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    .line 532
    :cond_fe
    :goto_fe
    const-wide/16 v8, 0x0

    .line 533
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "lruCheckInterval"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 535
    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_201

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_201

    .line 536
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    .line 541
    :cond_11c
    :goto_11c
    const-wide/16 v8, 0x0

    .line 542
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeUnusedAppTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 544
    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_221

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_221

    .line 545
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    .line 550
    :cond_13a
    :goto_13a
    const/4 v6, 0x0

    .line 551
    .local v6, "tempIntVal":I
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "unusedPeriod"

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 553
    if-ltz v6, :cond_241

    const/16 v7, 0x2da

    if-gt v6, v7, :cond_241

    .line 554
    iput v6, p0, Lcom/android/server/LpnetManagerService;->mUnusedPeriod:I

    .line 559
    :cond_14d
    :goto_14d
    const-wide/16 v8, 0x0

    .line 560
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "usageCollectionInterval"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 562
    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_261

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_261

    .line 563
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    .line 568
    :cond_16c
    :goto_16c
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "BlackList"

    invoke-virtual {v2, v7, v10, v4}, Lcom/android/server/LpnetManagerService$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 569
    if-eqz v4, :cond_281

    .line 570
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .local v5, "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_17d
    :goto_17d
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_281

    .line 573
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_17d

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_17d

    .line 576
    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17d

    iget-object v7, p0, Lcom/android/server/LpnetManagerService;->mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17d

    .line 487
    .end local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "stringTokenizer":Ljava/util/StringTokenizer;
    .end local v6    # "tempIntVal":I
    .end local v8    # "tempValFromConfigFile":J
    .restart local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    :catch_1a3
    move-exception v0

    .line 488
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_1c0

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException on Parsing Config FILE :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1c0
    :goto_1c0
    return-void

    .line 520
    .end local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v8    # "tempValFromConfigFile":J
    :cond_1c1
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_e0

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 10s - 3600s, Setting Default mScreenOffActionTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e0

    .line 529
    :cond_1e1
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_fe

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 86400s, Setting Default mInactivityRepeatTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fe

    .line 538
    :cond_201
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_11c

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mIntLruCheckInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11c

    .line 547
    :cond_221
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_13a

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mUnusedAutoFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13a

    .line 556
    .restart local v6    # "tempIntVal":I
    :cond_241
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_14d

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 0 - 730 days, Setting Default mUnusedPeriod : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/LpnetManagerService;->mUnusedPeriod:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14d

    .line 565
    :cond_261
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_16c

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mLastUsedTimeCollectionInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16c

    .line 581
    :cond_281
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_487

    .line 582
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSolnEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWhiteListAll : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWhiteListGCM : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mFreezeWithOwnLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mFreezeImmediate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mScreenOffActionTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mInactivityRepeatTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIntLruCheckInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUnusedAutoFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUnusedPeriod : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/LpnetManagerService;->mUnusedPeriod:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDisableLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableTimeShift : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableImportanceCheck : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableImportanceFGOnly : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableAppStartRestrictionInScreenOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAutoRunBasedFreeze : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLastUsedTimeCollectionInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIncludeInstalledTimeForLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLruMissedImmediateFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "tempIntVal":I
    .end local v8    # "tempValFromConfigFile":J
    :cond_487
    move-object v1, v2

    .line 603
    .end local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    goto/16 :goto_1c0
.end method

.method private intentReceiverInitialization()V
    .registers 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->networkFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    return-void
.end method

.method private isAPICallAllowedForPackages(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 1017
    const/4 v4, 0x0

    .line 1018
    .local v4, "isAllowed":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1019
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1021
    .local v1, "appUid":I
    :try_start_13
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1023
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-ne v8, v7, :cond_6

    .line 1027
    if-eqz v0, :cond_24

    .line 1028
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_24} :catch_2c

    .line 1034
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1035
    .local v6, "uid":I
    if-ne v6, v1, :cond_6

    move v4, v7

    .line 1041
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appUid":I
    .end local v4    # "isAllowed":Z
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_2b
    return v4

    .line 1030
    .restart local v1    # "appUid":I
    .restart local v4    # "isAllowed":Z
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catch_2c
    move-exception v2

    .line 1031
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_6
.end method

.method private isActiveTrafficExisting(Ljava/lang/String;Z)Z
    .registers 17
    .param p1, "aPackageName"    # Ljava/lang/String;
    .param p2, "isForLRU"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1049
    const/4 v8, 0x1

    .line 1066
    .local v8, "retCode":Z
    const/4 v7, 0x0

    .line 1068
    .local v7, "prevTraffic":Ljava/lang/Long;
    :try_start_3
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v9, p1, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1069
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_13} :catch_6c

    move-result-object v3

    .line 1075
    .local v3, "currTraffic":Ljava/lang/Long;
    if-eqz p2, :cond_8e

    .line 1076
    iget-object v11, p0, Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1077
    :try_start_19
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v7, v0

    .line 1078
    monitor-exit v11
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_8b

    .line 1085
    :goto_24
    if-eqz v7, :cond_28

    if-nez v3, :cond_a0

    .line 1086
    :cond_28
    sget-boolean v9, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v9, :cond_6a

    const-string v9, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TrafficForPkg["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    move v9, v10

    .line 1097
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "currTraffic":Ljava/lang/Long;
    :goto_6b
    return v9

    .line 1070
    :catch_6c
    move-exception v6

    .line 1071
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v9, :cond_89

    const-string v9, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NameNotFoundException occurred for package :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    move v9, v10

    .line 1072
    goto :goto_6b

    .line 1078
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "currTraffic":Ljava/lang/Long;
    :catchall_8b
    move-exception v9

    :try_start_8c
    monitor-exit v11
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v9

    .line 1080
    :cond_8e
    iget-object v11, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1081
    :try_start_91
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v7, v0

    .line 1082
    monitor-exit v11

    goto :goto_24

    :catchall_9d
    move-exception v9

    monitor-exit v11
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_9d

    throw v9

    .line 1091
    :cond_a0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 1092
    .local v4, "diff":J
    sget-boolean v9, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v9, :cond_e2

    const-string v9, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ActiveTraffic[LRU:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_e2
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_e9

    .line 1095
    const/4 v8, 0x0

    :cond_e9
    move v9, v8

    .line 1097
    goto :goto_6b
.end method

.method private isAutoRunBlockedPackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 2437
    const/4 v1, 0x0

    .line 2439
    .local v1, "isAutoRunBlocked":Z
    :try_start_1
    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->isAutoRunBlockedApp(Ljava/lang/String;)Z

    move-result v1

    .line 2440
    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoRunBlockedPackage isAutoRunBlocked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",processName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_2a

    .line 2444
    :cond_29
    :goto_29
    return v1

    .line 2441
    :catch_2a
    move-exception v0

    .line 2442
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v2, :cond_29

    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoRunBlockedPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private isC2DMPermAvl(Ljava/lang/String;)Z
    .registers 9
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "c2dmPermissionFound":Z
    const/4 v2, 0x0

    .line 457
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_29

    .line 459
    :try_start_6
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 460
    if-eqz v2, :cond_29

    .line 462
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 463
    .local v3, "perms":[Landroid/content/pm/PermissionInfo;
    if-eqz v3, :cond_29

    .line 464
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_15
    array-length v4, v3

    if-ge v1, v4, :cond_29

    .line 465
    aget-object v4, v3, v1

    if-eqz v4, :cond_4a

    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v5, ".permission.C2D_MESSAGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_25} :catch_4d

    move-result v4

    if-eqz v4, :cond_4a

    .line 466
    const/4 v0, 0x1

    .line 475
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_29
    :goto_29
    sget-boolean v4, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v4, :cond_49

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C2DM Permission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_49
    return v0

    .line 464
    .restart local v1    # "j":I
    .restart local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 472
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :catch_4d
    move-exception v4

    goto :goto_29
.end method

.method private isPackageInstalledAndEnabled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1709
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_19

    if-eqz p1, :cond_19

    .line 1711
    :try_start_7
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1712
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1713
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_16} :catch_17

    .line 1721
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_16
    return v1

    .line 1715
    :catch_17
    move-exception v2

    .line 1716
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_16

    .line 1719
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    const-string v3, "LpnetManagerService"

    const-string v4, "isPackageInstalledAndEnabled called with null param"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private isPackageVersionMatching(Ljava/lang/String;)Z
    .registers 9
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, "retCode":Z
    const/4 v2, 0x0

    .line 429
    .local v2, "version":I
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_4c

    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_7
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_4c

    .line 434
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 435
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 436
    .local v3, "versionMatchString":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v4, :cond_38

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "versionMatchString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_38
    if-eqz v3, :cond_77

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_77

    .line 439
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/server/LpnetManagerService;->versionCheckAgainstDB(Ljava/lang/String;I)Z
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_4b} :catch_79

    move-result v1

    .line 447
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "versionMatchString":Ljava/lang/String;
    :cond_4c
    :goto_4c
    sget-boolean v4, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v4, :cond_76

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VersionMatch?:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_76
    return v1

    .line 441
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "versionMatchString":Ljava/lang/String;
    :cond_77
    const/4 v1, 0x1

    goto :goto_4c

    .line 444
    .end local v3    # "versionMatchString":Ljava/lang/String;
    :catch_79
    move-exception v4

    goto :goto_4c
.end method

.method static isSmartManagerDbUpdated()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 1226
    sget-object v3, Lcom/android/server/LpnetManagerService;->sSmartManagerDbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1227
    sget-object v3, Lcom/android/server/LpnetManagerService;->sSmartManagerDbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1228
    .local v0, "modifiedTime":J
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_37

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/android/server/LpnetManagerService;->sLastModifiedTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_37
    sget-wide v4, Lcom/android/server/LpnetManagerService;->sLastModifiedTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4d

    .line 1230
    sput-wide v0, Lcom/android/server/LpnetManagerService;->sLastModifiedTime:J

    .line 1231
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_4c

    const-string v3, "LpnetManagerService"

    const-string v4, "SMDB has been changed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_4c
    :goto_4c
    return v2

    .line 1233
    :cond_4d
    sget-wide v4, Lcom/android/server/LpnetManagerService;->sLastModifiedTime:J

    cmp-long v3, v4, v0

    if-eqz v3, :cond_61

    .line 1234
    sput-wide v0, Lcom/android/server/LpnetManagerService;->sLastModifiedTime:J

    .line 1235
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_4c

    const-string v3, "LpnetManagerService"

    const-string v4, "SMDB has been changed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 1239
    :cond_61
    sget-boolean v2, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v2, :cond_6c

    const-string v2, "LpnetManagerService"

    const-string v3, "SMDB has not been changed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_6c
    const/4 v2, 0x0

    goto :goto_4c
.end method

.method private parseEntry(Ljava/lang/String;)[I
    .registers 14
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 370
    const/4 v8, 0x3

    new-array v1, v8, [I

    .line 371
    .local v1, "limits":[I
    aput v10, v1, v9

    .line 372
    if-eqz p1, :cond_5a

    .line 374
    const/4 v8, 0x0

    :try_start_b
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x6d

    if-ne v8, v9, :cond_5b

    .line 375
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v1, v8

    .line 379
    :goto_17
    new-instance v6, Ljava/util/StringTokenizer;

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    const/4 v10, 0x0

    invoke-direct {v6, v8, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 380
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    if-ne v8, v11, :cond_5a

    .line 381
    const-string v8, "[0-9]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 382
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "lower":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "upper":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 385
    .local v3, "mlower":Ljava/util/regex/Matcher;
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 386
    .local v4, "mupper":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 387
    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v8

    .line 388
    const/4 v8, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v8

    .line 395
    .end local v2    # "lower":Ljava/lang/String;
    .end local v3    # "mlower":Ljava/util/regex/Matcher;
    .end local v4    # "mupper":Ljava/util/regex/Matcher;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "upper":Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-object v1

    .line 376
    :cond_5b
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x75

    if-ne v8, v9, :cond_87

    .line 377
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v1, v8
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_68} :catch_69

    goto :goto_17

    .line 391
    :catch_69
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v8, :cond_5a

    const-string v8, "LpnetManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " parseEntry Error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_87
    const/4 v8, 0x0

    const/4 v9, -0x1

    :try_start_89
    aput v9, v1, v8
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8b} :catch_69

    goto :goto_17
.end method

.method private screenOffAction(J)V
    .registers 16
    .param p1, "timeToAct"    # J

    .prologue
    .line 1244
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_23

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenOffAction-timeToAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_23
    invoke-static {}, Lcom/android/server/LpnetManagerService;->isSmartManagerDbUpdated()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LpnetManagerService;->getDBValues(Z)V

    .line 1248
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V

    .line 1249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    .line 1253
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v0, :cond_3b

    .line 1254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mDataConnectivityAtScreenOff:Z

    .line 1256
    :cond_3b
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1257
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1258
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_99

    .line 1262
    const/4 v9, 0x0

    .line 1263
    .local v9, "nNotForceStoppedAppsSize":I
    const/4 v10, 0x0

    .line 1265
    .local v10, "nTargetAppsSize":I
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1266
    :try_start_49
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1267
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_54
    :goto_54
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_96

    .line 1269
    .local v11, "theApp":Ljava/lang/String;
    :try_start_60
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 1270
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_54

    .line 1271
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    const/high16 v2, 0x200000

    if-eq v0, v2, :cond_54

    .line 1273
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_77} :catch_78
    .catchall {:try_start_60 .. :try_end_77} :catchall_96

    goto :goto_54

    .line 1275
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_78
    move-exception v7

    .line 1276
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_79
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_54

    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException occurred for package :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 1286
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "theApp":Ljava/lang/String;
    :catchall_96
    move-exception v0

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_79 .. :try_end_98} :catchall_96

    throw v0

    .line 1258
    .end local v9    # "nNotForceStoppedAppsSize":I
    .end local v10    # "nTargetAppsSize":I
    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v0

    .line 1279
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "nNotForceStoppedAppsSize":I
    .restart local v10    # "nTargetAppsSize":I
    :cond_9c
    :try_start_9c
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_dc

    .line 1280
    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target Packages for ForceStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Candidates for ForceStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_dc
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v9

    .line 1285
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v10

    .line 1286
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_9c .. :try_end_e9} :catchall_96

    .line 1289
    if-gtz v10, :cond_fb

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_fb

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_10f

    .line 1292
    :cond_fb
    const-wide/16 v0, 0x7d0

    cmp-long v0, p1, v0

    if-lez v0, :cond_110

    if-lez v9, :cond_110

    .line 1293
    const-string v1, "NETWORK_STAT"

    const-wide/16 v2, 0x7d0

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    .line 1298
    :cond_10f
    :goto_10f
    return-void

    .line 1295
    :cond_110
    const-string v1, "ACTION_TRIGGER_IDLE"

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    goto :goto_10f
.end method

.method private setAlarm(Ljava/lang/String;JJ)V
    .registers 16
    .param p1, "theIntentString"    # Ljava/lang/String;
    .param p2, "alarmTime"    # J
    .param p4, "delayTolerance"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1301
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1304
    .local v0, "intentB":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_46

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now+:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_46
    const-string v1, "NETWORK_STAT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1307
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_5a

    .line 1308
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    .line 1310
    :cond_5a
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1312
    :cond_66
    const-string v1, "LAST_USED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1313
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_7a

    .line 1314
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    .line 1316
    :cond_7a
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1319
    :cond_86
    const-string v1, "NETWORK_STAT_LRU"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1320
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    if-nez v1, :cond_9a

    .line 1321
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    .line 1323
    :cond_9a
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1330
    :cond_a6
    const-string v1, "ACTION_TRIGGER_IDLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1331
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_ba

    .line 1332
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    .line 1334
    :cond_ba
    cmp-long v1, p4, v8

    if-nez v1, :cond_ef

    .line 1335
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1341
    :cond_ca
    :goto_ca
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1342
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_de

    .line 1343
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    .line 1345
    :cond_de
    cmp-long v1, p4, v8

    if-nez v1, :cond_fc

    .line 1346
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1351
    :cond_ee
    :goto_ee
    return-void

    .line 1337
    :cond_ef
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_ca

    .line 1348
    :cond_fc
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_ee
.end method

.method private targetPkgInitialization(Z)V
    .registers 14
    .param p1, "loadDefaults"    # Z

    .prologue
    .line 607
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 608
    :try_start_3
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 609
    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    if-nez v8, :cond_10

    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    if-eqz v8, :cond_4a

    .line 610
    :cond_10
    sget-boolean v8, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v8, :cond_1b

    const-string v8, "LpnetManagerService"

    const-string v10, "mWhiteListAll enabled"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1b
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    if-eqz v8, :cond_4a

    .line 612
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 613
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_4a

    .line 614
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 616
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_3f

    .line 613
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 617
    :cond_3f
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 621
    .end local v1    # "i":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_47
    move-exception v8

    monitor-exit v9
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v8

    :cond_4a
    :try_start_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_47

    .line 623
    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    if-nez v8, :cond_7e

    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    if-nez v8, :cond_7e

    .line 624
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 625
    :try_start_56
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5c
    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 626
    .local v6, "theApp":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 627
    invoke-direct {p0, v6}, Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 628
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 631
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "theApp":Ljava/lang/String;
    :catchall_7a
    move-exception v8

    monitor-exit v9
    :try_end_7c
    .catchall {:try_start_56 .. :try_end_7c} :catchall_7a

    throw v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7d
    :try_start_7d
    monitor-exit v9
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7a

    .line 634
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7e
    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    if-nez v8, :cond_c1

    .line 635
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 636
    :try_start_85
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 637
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8b
    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 638
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 640
    .local v7, "theWhiteListPackage":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z

    move-result v0

    .line 641
    .local v0, "c2dmPermExists":Z
    if-nez v0, :cond_8b

    .line 642
    sget-boolean v8, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v8, :cond_b9

    const-string v8, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " App doesnt have C2DM Permission"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_b9
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_8b

    .line 646
    .end local v0    # "c2dmPermExists":Z
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "theWhiteListPackage":Ljava/lang/String;
    :catchall_bd
    move-exception v8

    monitor-exit v9
    :try_end_bf
    .catchall {:try_start_85 .. :try_end_bf} :catchall_bd

    throw v8

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c0
    :try_start_c0
    monitor-exit v9
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bd

    .line 649
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c1
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_d4

    .line 650
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 651
    :try_start_cc
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 652
    monitor-exit v9

    .line 654
    :cond_d4
    return-void

    .line 652
    :catchall_d5
    move-exception v8

    monitor-exit v9
    :try_end_d7
    .catchall {:try_start_cc .. :try_end_d7} :catchall_d5

    throw v8
.end method

.method private unFreeze(Ljava/lang/String;)V
    .registers 6
    .param p1, "thePackageName"    # Ljava/lang/String;

    .prologue
    .line 1378
    if-eqz p1, :cond_48

    .line 1381
    :try_start_2
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->unFreezeApp(Ljava/lang/String;I)V

    .line 1383
    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_28

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unFreezed App :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_28} :catch_29

    .line 1390
    :cond_28
    :goto_28
    return-void

    .line 1384
    :catch_29
    move-exception v0

    .line 1385
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_28

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unFreeze failed for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1388
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48
    const-string v1, "LpnetManagerService"

    const-string/jumbo v2, "unFreeze called with null param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private updateDB(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceStopped"    # Ljava/lang/String;

    .prologue
    .line 1441
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_27

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDB called for packageName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",forceStopped : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-nez v0, :cond_34

    .line 1445
    new-instance v0, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    .line 1448
    :cond_34
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-eqz v0, :cond_85

    .line 1449
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    .line 1450
    const/4 v9, 0x0

    .line 1451
    .local v9, "retRows":I
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1452
    if-nez v9, :cond_80

    .line 1453
    const-string v2, "0"

    .line 1454
    .local v2, "dFreeze":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1455
    const-string v2, "1"

    .line 1459
    :goto_59
    const-string v3, "0"

    .line 1460
    .local v3, "sFreeze":Ljava/lang/String;
    const-string v7, ""

    .line 1461
    .local v7, "spcmFreeze":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_60} :catch_8c

    .line 1462
    :try_start_60
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1463
    const-string v3, "1"

    .line 1465
    :cond_6a
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1466
    const-string v7, "1"

    .line 1468
    :cond_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_89

    .line 1469
    :try_start_75
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const-string v5, ""

    const-string v6, ""

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1471
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v7    # "spcmFreeze":Ljava/lang/String;
    :cond_80
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V

    .line 1477
    .end local v9    # "retRows":I
    :cond_85
    :goto_85
    return-void

    .line 1457
    .restart local v2    # "dFreeze":Ljava/lang/String;
    .restart local v9    # "retRows":I
    :cond_86
    const-string v2, "0"
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_88} :catch_8c

    goto :goto_59

    .line 1468
    .restart local v3    # "sFreeze":Ljava/lang/String;
    .restart local v7    # "spcmFreeze":Ljava/lang/String;
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8c} :catch_8c

    .line 1473
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v7    # "spcmFreeze":Ljava/lang/String;
    .end local v9    # "retRows":I
    :catch_8c
    move-exception v8

    .line 1474
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on handling DB : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_85
.end method

.method private updateDBForLRU(Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p1, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v0, "LpnetManagerService"

    const-string/jumbo v4, "updateDBForLRU called"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :try_start_8
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-nez v0, :cond_15

    .line 1397
    new-instance v0, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    .line 1400
    :cond_15
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-eqz v0, :cond_bb

    if-eqz p1, :cond_bb

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_bb

    .line 1401
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    .line 1402
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1403
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1404
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 1406
    .local v12, "usedTime":Ljava/lang/Long;
    const/4 v11, 0x0

    .line 1407
    .local v11, "retRows":I
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1409
    if-nez v11, :cond_2e

    .line 1410
    const-string v2, "0"

    .line 1411
    .local v2, "dFreeze":Ljava/lang/String;
    const-string v7, ""

    .line 1412
    .local v7, "spcmFreeze":Ljava/lang/String;
    const-string v3, "0"

    .line 1413
    .local v3, "sFreeze":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1414
    const-string v2, "1"

    .line 1418
    :goto_68
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6b} :catch_8e

    .line 1419
    :try_start_6b
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1420
    const-string v3, "1"

    .line 1422
    :cond_75
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1423
    const-string v7, "1"

    .line 1425
    :cond_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_6b .. :try_end_80} :catchall_b2

    .line 1427
    :try_start_80
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const-string v4, "0"

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8d} :catch_8e

    goto :goto_2e

    .line 1434
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v7    # "spcmFreeze":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "retRows":I
    .end local v12    # "usedTime":Ljava/lang/Long;
    :catch_8e
    move-exception v8

    .line 1435
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1438
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_ae
    return-void

    .line 1416
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "dFreeze":Ljava/lang/String;
    .restart local v3    # "sFreeze":Ljava/lang/String;
    .restart local v7    # "spcmFreeze":Ljava/lang/String;
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "retRows":I
    .restart local v12    # "usedTime":Ljava/lang/Long;
    :cond_af
    :try_start_af
    const-string v2, "0"
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b1} :catch_8e

    goto :goto_68

    .line 1425
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v4
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v0

    .line 1430
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v7    # "spcmFreeze":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "retRows":I
    .end local v12    # "usedTime":Ljava/lang/Long;
    :cond_b5
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V

    goto :goto_ae

    .line 1432
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_bb
    const-string v0, "LpnetManagerService"

    const-string v4, "lruMap null/size 0 (or) mDBMgr : is null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c2} :catch_8e

    goto :goto_ae
.end method

.method private versionCheckAgainstDB(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "vEntry"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 399
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_2a

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "versionCheckAgainstDB:: vEntry-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2a
    const/4 v1, 0x0

    .line 401
    .local v1, "inRange":Z
    if-eqz p1, :cond_80

    .line 402
    const-string v5, "\\s"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v2, p1, v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 404
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_3c
    :goto_3c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 405
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "element":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/LpnetManagerService;->parseEntry(Ljava/lang/String;)[I

    move-result-object v3

    .line 408
    .local v3, "versionInfo":[I
    aget v5, v3, v4

    packed-switch v5, :pswitch_data_82

    goto :goto_3c

    .line 418
    :pswitch_50
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_3c

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ParseError:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 410
    :pswitch_6d
    aget v5, v3, v8

    if-lt p2, v5, :cond_3c

    aget v5, v3, v9

    if-gt p2, v5, :cond_3c

    .line 423
    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "versionInfo":[I
    :goto_75
    return v4

    .line 414
    .restart local v0    # "element":Ljava/lang/String;
    .restart local v2    # "st":Ljava/util/StringTokenizer;
    .restart local v3    # "versionInfo":[I
    :pswitch_76
    aget v5, v3, v8

    if-lt p2, v5, :cond_3c

    aget v5, v3, v9

    if-gt p2, v5, :cond_3c

    .line 415
    const/4 v1, 0x1

    goto :goto_3c

    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "versionInfo":[I
    :cond_80
    move v4, v1

    .line 423
    goto :goto_75

    .line 408
    :pswitch_data_82
    .packed-switch -0x1
        :pswitch_50
        :pswitch_6d
        :pswitch_76
    .end packed-switch
.end method


# virtual methods
.method public enableDisableSolution(Z)V
    .registers 8
    .param p1, "pEnableSolution"    # Z

    .prologue
    .line 2011
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .line 2012
    .local v1, "isAllowed":Z
    if-nez v1, :cond_10

    .line 2013
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Security Exception Occurred. Only SmartManager can use enableDisableSolution() function."

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 2017
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_10
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_2c

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " enableDisableSolution :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_2c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 2020
    .local v2, "msg":Landroid/os/Message;
    if-eqz p1, :cond_4a

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2023
    :goto_35
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-nez v3, :cond_40

    new-instance v3, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    invoke-direct {v3, p0}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    .line 2024
    :cond_40
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    # invokes: Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->handleSendMessage(Landroid/os/Message;)V
    invoke-static {v3, v2}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->access$5500(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Landroid/os/Message;)V

    .line 2026
    :cond_49
    return-void

    .line 2021
    :cond_4a
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_35
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "thePackage"    # Ljava/lang/String;

    .prologue
    .line 1355
    if-eqz p1, :cond_64

    .line 1358
    :try_start_2
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1359
    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_38

    .line 1361
    :try_start_e
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1362
    const-string v1, "0"

    invoke-direct {p0, p1, v1}, Lcom/android/server/LpnetManagerService;->updateDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_35

    .line 1367
    :try_start_1c
    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freezed App : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_38

    .line 1374
    :cond_34
    :goto_34
    return-void

    .line 1364
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_38} :catch_38

    .line 1368
    :catch_38
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_34

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to Forcestop Package :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception msg is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_64
    const-string v1, "LpnetManagerService"

    const-string v2, "forceStopPackage called with null param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public freezeApps(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "aForceStopBundle"    # Landroid/os/Bundle;

    .prologue
    .line 1960
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .line 1961
    .local v1, "isAllowed":Z
    if-nez v1, :cond_10

    .line 1962
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Security Exception Occurred. Only SmartManager can use freezeApps() function."

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1963
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 1966
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_10
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_1b

    const-string v3, "LpnetManagerService"

    const-string v4, " freezeApps called "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_1b
    if-eqz p1, :cond_3b

    .line 1969
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1970
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1971
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1972
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-nez v3, :cond_31

    new-instance v3, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    invoke-direct {v3, p0}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    .line 1973
    :cond_31
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    # invokes: Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->handleSendMessage(Landroid/os/Message;)V
    invoke-static {v3, v2}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->access$5500(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Landroid/os/Message;)V

    .line 1977
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3a
    :goto_3a
    return-void

    .line 1975
    :cond_3b
    const-string v3, "LpnetManagerService"

    const-string v4, "freezeApps called with null param"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public gcmNotificationBroadcast(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1940
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_10

    .line 1941
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Security Exception Occurred. Only SYSTEM can use gcmNotificationBroadcast() function."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1942
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 1945
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_10
    if-eqz p1, :cond_41

    .line 1946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/LpnetManagerService;->mGCMMessageReceivedTime:J

    .line 1947
    sget-boolean v2, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v2, :cond_40

    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GCM Push received for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/LpnetManagerService;->mGCMMessageReceivedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_40
    :goto_40
    return-void

    .line 1949
    :cond_41
    const-string v2, "LpnetManagerService"

    const-string v3, "gcmNotificationBroadcast called with null param"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public getLRUList(I)Ljava/util/Map;
    .registers 8
    .param p1, "unusedPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1873
    iget-object v5, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .line 1874
    .local v1, "isAllowed":Z
    if-nez v1, :cond_10

    .line 1875
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Security Exception Occurred. Only SmartManager can use getLRUList() function."

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1876
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 1879
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1880
    .local v2, "identity":J
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1881
    .local v4, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->getLRU(I)Ljava/util/Map;

    move-result-object v4

    .line 1882
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1884
    return-object v4
.end method

.method public getLockedAppList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1893
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1894
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1895
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1896
    return-object v0
.end method

.method public getManagedAppList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1921
    .local v0, "managedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1922
    :try_start_8
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1923
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1e

    .line 1924
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1925
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1926
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1928
    return-object v0

    .line 1923
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public bridge synthetic getManagedAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/server/LpnetManagerService;->getManagedAppList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public runFreezeBasedOnLRU()V
    .registers 3

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/LpnetManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$7;-><init>(Lcom/android/server/LpnetManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2457
    return-void
.end method

.method public unFreezeApps([Ljava/lang/String;)V
    .registers 7
    .param p1, "aUnFreezeList"    # [Ljava/lang/String;

    .prologue
    .line 1986
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .line 1987
    .local v1, "isAllowed":Z
    if-nez v1, :cond_10

    .line 1988
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Security Exception Occurred. Only SmartManager can use unFreezeApps() function."

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1989
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 1992
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_10
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_1b

    const-string v3, "LpnetManagerService"

    const-string v4, " unFreezeApps for Apps"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_1b
    if-eqz p1, :cond_3b

    .line 1994
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1995
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1996
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1997
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-nez v3, :cond_31

    new-instance v3, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    invoke-direct {v3, p0}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    .line 1998
    :cond_31
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    # invokes: Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->handleSendMessage(Landroid/os/Message;)V
    invoke-static {v3, v2}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->access$5500(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Landroid/os/Message;)V

    .line 2002
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3a
    :goto_3a
    return-void

    .line 2000
    :cond_3b
    const-string v3, "LpnetManagerService"

    const-string/jumbo v4, "unFreezeApps called with null param"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public updateLruInDB(I)V
    .registers 8
    .param p1, "unusedPeriod"    # I

    .prologue
    .line 1840
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->FEATURE_ENABLE_LPC:Z

    if-eqz v5, :cond_5

    .line 1864
    :goto_4
    return-void

    .line 1844
    :cond_5
    iget-object v5, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .line 1845
    .local v1, "isAllowed":Z
    if-nez v1, :cond_15

    .line 1846
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Security Exception Occurred. Only SmartManager can use updateLruInDB() function."

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 1850
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1851
    .local v2, "identity":J
    const/4 v4, 0x0

    .line 1852
    .local v4, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->getLRU(I)Ljava/util/Map;

    move-result-object v4

    .line 1854
    invoke-direct {p0, v4}, Lcom/android/server/LpnetManagerService;->updateDBForLRU(Ljava/util/Map;)V

    .line 1856
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4
.end method
