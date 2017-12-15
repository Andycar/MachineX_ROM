.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$1;,
        Landroid/app/ActivityManager$AppTask;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$StackInfo;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$TaskThumbnail;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;,
        Landroid/app/ActivityManager$TaskDescription;
    }
.end annotation


# static fields
.field private static final AMS_POLICY_ENFORCING:Ljava/lang/String; = "persist.security.ams.enforcing"

.field public static final BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final BROADCAST_SUCCESS:I = 0x0

.field public static final COMPAT_MODE_ALWAYS:I = -0x1

.field public static final COMPAT_MODE_DISABLED:I = 0x0

.field public static final COMPAT_MODE_ENABLED:I = 0x1

.field public static final COMPAT_MODE_NEVER:I = -0x2

.field public static final COMPAT_MODE_TOGGLE:I = 0x2

.field public static final COMPAT_MODE_UNKNOWN:I = -0x3

.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field public static final META_HOME_ALTERNATE:Ljava/lang/String; = "android.app.home.alternate"

.field public static final MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final MOVE_TASK_WITH_HOME:I = 0x1

.field public static final PROCESS_STATE_BACKUP:I = 0x5

.field public static final PROCESS_STATE_CACHED_ACTIVITY:I = 0xb

.field public static final PROCESS_STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final PROCESS_STATE_CACHED_EMPTY:I = 0xd

.field public static final PROCESS_STATE_HEAVY_WEIGHT:I = 0x6

.field public static final PROCESS_STATE_HOME:I = 0x9

.field public static final PROCESS_STATE_IMPORTANT_BACKGROUND:I = 0x4

.field public static final PROCESS_STATE_IMPORTANT_FOREGROUND:I = 0x3

.field public static final PROCESS_STATE_LAST_ACTIVITY:I = 0xa

.field public static final PROCESS_STATE_PERSISTENT:I = 0x0

.field public static final PROCESS_STATE_PERSISTENT_UI:I = 0x1

.field public static final PROCESS_STATE_RECEIVER:I = 0x8

.field public static final PROCESS_STATE_SERVICE:I = 0x7

.field public static final PROCESS_STATE_TOP:I = 0x2

.field public static final RECENT_IGNORE_HOME_STACK_TASKS:I = 0x8

.field public static final RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final RECENT_INCLUDE_PROFILES:I = 0x4

.field public static final RECENT_WITH_EXCLUDED:I = 0x1

.field public static final REMOVE_ALL_TASKS:I = 0x2

.field public static final REMOVE_TASK_IMMEDIATELY:I = 0x4

.field public static final REMOVE_TASK_KILL_PROCESS:I = 0x1

.field public static final START_CANCELED:I = -0x6

.field public static final START_CANCELED_BY_TEMPERATURE:I = -0x8

.field public static final START_CLASS_NOT_FOUND:I = -0x2

.field public static final START_DELIVERED_TO_TOP:I = 0x3

.field public static final START_FLAG_DEBUG:I = 0x2

.field public static final START_FLAG_ONLY_IF_NEEDED:I = 0x1

.field public static final START_FLAG_OPENGL_TRACES:I = 0x4

.field public static final START_FORWARD_AND_REQUEST_CONFLICT:I = -0x3

.field public static final START_INTENT_NOT_RESOLVED:I = -0x1

.field public static final START_NOT_ACTIVITY:I = -0x5

.field public static final START_NOT_VOICE_COMPATIBLE:I = -0x7

.field public static final START_PERMISSION_DENIED:I = -0x4

.field public static final START_RETURN_INTENT_TO_CALLER:I = 0x1

.field public static final START_RETURN_LOCK_TASK_MODE_VIOLATION:I = 0x5

.field public static final START_SUCCESS:I = 0x0

.field public static final START_SWITCHES_CANCELED:I = 0x4

.field public static final START_TASK_TO_FRONT:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_OP_IS_CURRENT:I = -0x2

.field public static final USER_OP_SUCCESS:I = 0x0

.field public static final USER_OP_UNKNOWN_USER:I = -0x1

.field private static gMaxRecentTasks:I

.field private static localLOGV:Z


# instance fields
.field mAppTaskThumbnailSize:Landroid/graphics/Point;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-string v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManager;->localLOGV:Z

    .line 80
    const/4 v0, -0x1

    sput v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 321
    iput-object p2, p0, Landroid/app/ActivityManager;->mHandler:Landroid/os/Handler;

    .line 322
    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static allowRuleCheck(Ljava/lang/String;I)Z
    .registers 14
    .param p0, "srcAllowCategory"    # Ljava/lang/String;
    .param p1, "destCategory"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2672
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2673
    .local v6, "srcCategories":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v4, :cond_53

    aget-object v3, v0, v2

    .line 2675
    .local v3, "item":Ljava/lang/String;
    :try_start_f
    const-string v9, "-"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 2676
    const-string v9, "-"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2677
    .local v5, "range":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lt p1, v9, :cond_36

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-gt p1, v9, :cond_36

    .line 2690
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "range":[Ljava/lang/String;
    :cond_2f
    :goto_2f
    return v7

    .line 2682
    .restart local v3    # "item":Ljava/lang/String;
    :cond_30
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_33} :catch_39

    move-result v9

    if-eq p1, v9, :cond_2f

    .line 2673
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2686
    :catch_39
    move-exception v1

    .line 2687
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v9, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allowRuleCheck, numberformatexception found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "item":Ljava/lang/String;
    :cond_53
    move v7, v8

    .line 2690
    goto :goto_2f
.end method

.method public static checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZ)I
    .registers 16
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "srcPackageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "owningUid"    # I
    .param p5, "destPackageName"    # Ljava/lang/String;
    .param p6, "exported"    # Z
    .param p7, "allowLaunchIntent"    # Z

    .prologue
    .line 2793
    if-eqz p3, :cond_16

    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_e

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18

    :cond_e
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2796
    :cond_16
    const/4 v0, 0x0

    .line 2843
    :goto_17
    return v0

    :cond_18
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p7

    .line 2798
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityManager;->checkContainerAppPermission(Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;Z)I

    move-result v6

    .line 2800
    .local v6, "containerAppPermission":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2f

    .line 2801
    sget-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "return DENIED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    const/4 v0, -0x1

    goto :goto_17

    .line 2809
    :cond_2f
    if-eqz p3, :cond_3d

    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_3d

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3f

    .line 2811
    :cond_3d
    const/4 v0, 0x0

    goto :goto_17

    .line 2815
    :cond_3f
    invoke-static {p3}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2816
    const/4 v0, -0x1

    goto :goto_17

    .line 2820
    :cond_47
    if-ltz p4, :cond_51

    invoke-static {p3, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2821
    const/4 v0, 0x0

    goto :goto_17

    .line 2824
    :cond_51
    if-nez p6, :cond_55

    .line 2831
    const/4 v0, -0x1

    goto :goto_17

    .line 2833
    :cond_55
    if-nez p1, :cond_59

    .line 2834
    const/4 v0, 0x0

    goto :goto_17

    .line 2837
    :cond_59
    :try_start_59
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_60} :catch_62

    move-result v0

    goto :goto_17

    .line 2839
    :catch_62
    move-exception v7

    .line 2841
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "PackageManager is dead?!?"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2843
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIZ)I
    .registers 9
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "owningUid"    # I
    .param p3, "exported"    # Z

    .prologue
    const/16 v4, 0x3e8

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2851
    if-eqz p1, :cond_e

    if-eq p1, v4, :cond_e

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, v4, :cond_10

    :cond_e
    move v1, v2

    .line 2883
    :cond_f
    :goto_f
    return v1

    .line 2855
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2860
    if-ltz p2, :cond_20

    invoke-static {p1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_20

    move v1, v2

    .line 2861
    goto :goto_f

    .line 2864
    :cond_20
    if-eqz p3, :cond_f

    .line 2873
    if-nez p0, :cond_26

    move v1, v2

    .line 2874
    goto :goto_f

    .line 2877
    :cond_26
    :try_start_26
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2f

    move-result v1

    goto :goto_f

    .line 2879
    :catch_2f
    move-exception v0

    .line 2881
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v3, "PackageManager is dead?!?"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private static checkContainerAppPermission(Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;Z)I
    .registers 20
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "srcPackageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "owningUid"    # I
    .param p4, "destPackageName"    # Ljava/lang/String;
    .param p5, "allowLaunchIntent"    # Z

    .prologue
    .line 2704
    const/4 v10, 0x0

    .line 2705
    .local v10, "userId":I
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_b

    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_d

    .line 2706
    :cond_b
    const/4 v11, 0x0

    .line 2786
    :goto_c
    return v11

    .line 2709
    :cond_d
    if-eqz p1, :cond_11

    if-nez p4, :cond_13

    .line 2710
    :cond_11
    const/4 v11, 0x0

    goto :goto_c

    .line 2712
    :cond_13
    const/4 v7, 0x0

    .line 2713
    .local v7, "isPermissionGranted":Z
    const-string v11, "1"

    const-string/jumbo v12, "persist.security.ams.enforcing"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2714
    .local v6, "isEnforced":Z
    const/4 v8, 0x0

    .line 2715
    .local v8, "isSourceTrusted":Z
    const/4 v5, 0x0

    .line 2717
    .local v5, "isDestTrusted":Z
    :try_start_25
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const/16 v12, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    invoke-interface {v11, p1, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 2720
    .local v9, "srcAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const/16 v12, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    move-object/from16 v0, p4

    invoke-interface {v11, v0, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2723
    .local v2, "destAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_47

    if-nez v2, :cond_49

    .line 2724
    :cond_47
    const/4 v11, 0x0

    goto :goto_c

    .line 2727
    :cond_49
    if-eqz p0, :cond_80

    .line 2728
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_80

    .line 2729
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SwitchB2BActivity"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_80

    const-string v11, "com.sec.knox.bridge"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_80

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.MAIN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_80

    .line 2732
    sget-object v11, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v12, "Proxy App Authenticated based on intent type."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const/4 v11, 0x0

    goto :goto_c

    .line 2738
    :cond_80
    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v11, v12}, Landroid/app/ActivityManager;->allowRuleCheck(Ljava/lang/String;I)Z

    move-result v4

    .line 2740
    .local v4, "isAllowCategoryPass":Z
    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v11, :cond_9e

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9e

    .line 2741
    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v11, v12}, Landroid/app/ActivityManager;->isContainerAllowedPackage(Ljava/lang/String;I)Z

    move-result v8

    .line 2743
    :cond_9e
    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v11, :cond_b4

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b4

    .line 2744
    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iget v12, v9, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v11, v12}, Landroid/app/ActivityManager;->isContainerAllowedPackage(Ljava/lang/String;I)Z

    move-result v5

    .line 2746
    :cond_b4
    iget v11, v2, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_fa

    .line 2748
    if-nez v4, :cond_d9

    if-nez v8, :cond_d9

    if-nez v5, :cond_d9

    if-nez p5, :cond_d9

    if-eqz p2, :cond_d9

    const/16 v11, 0x3e8

    move/from16 v0, p2

    if-eq v0, v11, :cond_d1

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_f8

    :cond_d1
    const-string v11, "android"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f8

    :cond_d9
    const/4 v7, 0x1

    .line 2770
    :goto_da
    if-nez v7, :cond_e7

    if-nez v8, :cond_e0

    if-eqz v5, :cond_e7

    .line 2771
    :cond_e0
    sget-object v11, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v12, "Denial occuring with trusted src or dest"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_e7} :catch_14d

    .line 2775
    :cond_e7
    if-eqz v6, :cond_15c

    if-nez v7, :cond_15c

    const/4 v7, 0x0

    .line 2781
    .end local v2    # "destAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isAllowCategoryPass":Z
    .end local v9    # "srcAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_ec
    if-nez v7, :cond_15e

    .line 2782
    sget-object v11, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v12, "isPermissionGranted is false"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    const/4 v11, -0x1

    goto/16 :goto_c

    .line 2748
    .restart local v2    # "destAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "isAllowCategoryPass":Z
    .restart local v9    # "srcAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_f8
    const/4 v7, 0x0

    goto :goto_da

    .line 2758
    :cond_fa
    :try_start_fa
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->agentType:I

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_103

    if-nez v4, :cond_10b

    :cond_103
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_157

    :cond_10b
    const/4 v7, 0x1

    .line 2762
    :goto_10c
    if-eqz v7, :cond_159

    const-string v1, "AGENT GRANTED"

    .line 2763
    .local v1, "agentLog":Ljava/lang/String;
    :goto_110
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - src:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dst:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " src agentType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Landroid/content/pm/ApplicationInfo;->agentType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dest allowedAgentType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14c
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_14c} :catch_14d

    goto :goto_da

    .line 2777
    .end local v1    # "agentLog":Ljava/lang/String;
    .end local v2    # "destAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isAllowCategoryPass":Z
    .end local v9    # "srcAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_14d
    move-exception v3

    .line 2778
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v11, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v12, "Could not check permissionManager enabled."

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2779
    const/4 v7, 0x0

    goto :goto_ec

    .line 2758
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "destAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "isAllowCategoryPass":Z
    .restart local v9    # "srcAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_157
    const/4 v7, 0x0

    goto :goto_10c

    .line 2762
    :cond_159
    :try_start_159
    const-string v1, "AGENT DENIED "
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_159 .. :try_end_15b} :catch_14d

    goto :goto_110

    .line 2775
    :cond_15c
    const/4 v7, 0x1

    goto :goto_ec

    .line 2786
    .end local v2    # "destAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isAllowCategoryPass":Z
    .end local v9    # "srcAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_15e
    const/4 v11, 0x0

    goto/16 :goto_c
.end method

.method public static checkUidPermission(Ljava/lang/String;I)I
    .registers 5
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 2889
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2895
    :goto_8
    return v1

    .line 2891
    :catch_9
    move-exception v0

    .line 2893
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v2, "PackageManager is dead?!?"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2895
    const/4 v1, -0x1

    goto :goto_8
.end method

.method public static dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2999
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3000
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3001
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "package"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3002
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3003
    const-string v2, "activity"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "-a"

    aput-object v4, v3, v5

    const-string/jumbo v4, "package"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3006
    const-string v2, "meminfo"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "--local"

    aput-object v4, v3, v5

    const-string v4, "--package"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3007
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3008
    const-string/jumbo v2, "procstats"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3010
    const-string/jumbo v2, "usagestats"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "--packages"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3011
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3012
    const-string v2, "batterystats"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3013
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 3014
    return-void
.end method

.method private static dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3017
    const-string v4, "DUMP OF SERVICE "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3019
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_19

    .line 3020
    const-string v4, "  (Service not found)"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    :goto_18
    return-void

    .line 3023
    :cond_19
    const/4 v2, 0x0

    .line 3025
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 3026
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_22} :catch_39

    .line 3027
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v3, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_22
    const-string v4, "  "

    invoke-virtual {v3, v4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 3029
    const-wide/16 v4, 0x2710

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_37} :catch_48

    move-object v2, v3

    .line 3036
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_18

    .line 3030
    :catch_39
    move-exception v0

    .line 3031
    .local v0, "e":Ljava/lang/Throwable;
    :goto_3a
    if-eqz v2, :cond_3f

    .line 3032
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 3034
    :cond_3f
    const-string v4, "Failure dumping service:"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_18

    .line 3030
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_48
    move-exception v0

    move-object v2, v3

    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_3a
.end method

.method private ensureAppTaskThumbnailSizeLocked()V
    .registers 4

    .prologue
    .line 1261
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    if-nez v1, :cond_e

    .line 1263
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 1268
    :cond_e
    return-void

    .line 1264
    :catch_f
    move-exception v0

    .line 1265
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "System dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCurrentUser()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2944
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2945
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_d

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    .line 2947
    :cond_d
    :goto_d
    return v2

    .line 2946
    :catch_e
    move-exception v0

    .line 2947
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_d
.end method

.method public static getDefaultAppRecentsLimitStatic()I
    .registers 1

    .prologue
    .line 513
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method static getLauncherLargeIconSizeInner(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2571
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2572
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v4, 0x1050000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2573
    .local v2, "size":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2575
    .local v3, "sw":I
    const/16 v4, 0x258

    if-ge v3, v4, :cond_15

    .line 2598
    .end local v2    # "size":I
    :goto_14
    return v2

    .line 2580
    .restart local v2    # "size":I
    :cond_15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2582
    .local v0, "density":I
    sparse-switch v0, :sswitch_data_48

    .line 2598
    int-to-float v4, v2

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_14

    .line 2584
    :sswitch_27
    mul-int/lit16 v4, v2, 0xa0

    div-int/lit8 v2, v4, 0x78

    goto :goto_14

    .line 2586
    :sswitch_2c
    mul-int/lit16 v4, v2, 0xf0

    div-int/lit16 v2, v4, 0xa0

    goto :goto_14

    .line 2588
    :sswitch_31
    mul-int/lit16 v4, v2, 0x140

    div-int/lit16 v2, v4, 0xf0

    goto :goto_14

    .line 2590
    :sswitch_36
    mul-int/lit16 v4, v2, 0x140

    div-int/lit16 v2, v4, 0xf0

    goto :goto_14

    .line 2592
    :sswitch_3b
    mul-int/lit16 v4, v2, 0x1e0

    div-int/lit16 v2, v4, 0x140

    goto :goto_14

    .line 2594
    :sswitch_40
    mul-int/lit16 v4, v2, 0x140

    mul-int/lit8 v4, v4, 0x2

    div-int/lit16 v2, v4, 0x1e0

    goto :goto_14

    .line 2582
    nop

    :sswitch_data_48
    .sparse-switch
        0x78 -> :sswitch_27
        0xa0 -> :sswitch_2c
        0xd5 -> :sswitch_31
        0xf0 -> :sswitch_36
        0x140 -> :sswitch_3b
        0x1e0 -> :sswitch_40
    .end sparse-switch
.end method

.method public static getMaxAppRecentsLimitStatic()I
    .registers 1

    .prologue
    .line 521
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getMaxRecentTasksStatic()I
    .registers 1

    .prologue
    .line 502
    sget v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    if-gez v0, :cond_12

    .line 503
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x32

    :goto_c
    sput v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    .line 505
    :goto_e
    return v0

    .line 503
    :cond_f
    const/16 v0, 0x64

    goto :goto_c

    .line 505
    :cond_12
    sget v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    goto :goto_e
.end method

.method public static getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 2
    .param p0, "outState"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    .line 2422
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2425
    :goto_7
    return-void

    .line 2423
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public static handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p0, "callingPid"    # I
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "allowAll"    # Z
    .param p4, "requireFull"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 2924
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_7

    .line 2928
    .end local p2    # "userId":I
    :goto_6
    return p2

    .restart local p2    # "userId":I
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    move-result p2

    goto :goto_6

    .line 2930
    :catch_17
    move-exception v8

    .line 2931
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Failed calling activity manager"

    invoke-direct {v0, v1, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isContainerAllowedPackage(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "allowContainerCategory"    # Ljava/lang/String;
    .param p1, "category"    # I

    .prologue
    .line 2661
    invoke-static {p0, p1}, Landroid/app/ActivityManager;->allowRuleCheck(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2662
    const/4 v0, 0x1

    .line 2664
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isHighEndGfx()Z
    .registers 2

    .prologue
    .line 493
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isLowRamDeviceStatic()Z
    .registers 3

    .prologue
    .line 483
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.low_ram"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRunningInTestHarness()Z
    .registers 2

    .prologue
    .line 2618
    const-string/jumbo v0, "ro.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserAMonkey()Z
    .registers 1

    .prologue
    .line 2608
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 2611
    :goto_8
    return v0

    .line 2609
    :catch_9
    move-exception v0

    .line 2611
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static staticGetLargeMemoryClass()I
    .registers 3

    .prologue
    .line 466
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, "16m"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "vmHeapSize":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static staticGetMemoryClass()I
    .registers 3

    .prologue
    .line 438
    const-string v1, "dalvik.vm.heapgrowthlimit"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "vmHeapSize":Ljava/lang/String;
    if-eqz v0, :cond_22

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 442
    :goto_21
    return v1

    :cond_22
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v1

    goto :goto_21
.end method


# virtual methods
.method public addAppTask(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 21
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1295
    monitor-enter p0

    .line 1296
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 1297
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    .line 1298
    .local v10, "size":Landroid/graphics/Point;
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7b

    .line 1299
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1300
    .local v12, "tw":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1301
    .local v11, "th":I
    iget v13, v10, Landroid/graphics/Point;->x:I

    if-ne v12, v13, :cond_19

    iget v13, v10, Landroid/graphics/Point;->y:I

    if-eq v11, v13, :cond_61

    .line 1302
    :cond_19
    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v14, v10, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1306
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, "dx":F
    const/4 v6, 0x0

    .line 1307
    .local v6, "dy":F
    iget v13, v10, Landroid/graphics/Point;->x:I

    mul-int/2addr v13, v12

    iget v14, v10, Landroid/graphics/Point;->y:I

    mul-int/2addr v14, v11

    if-le v13, v14, :cond_7e

    .line 1308
    iget v13, v10, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v9, v13, v14

    .line 1309
    .local v9, "scale":F
    iget v13, v10, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    int-to-float v14, v12

    mul-float/2addr v14, v9

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v5, v13, v14

    .line 1314
    :goto_3f
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1315
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1316
    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v5

    float-to-int v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1318
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1319
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1320
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1322
    move-object/from16 p4, v3

    .line 1324
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scale":F
    :cond_61
    if-nez p3, :cond_68

    .line 1325
    new-instance p3, Landroid/app/ActivityManager$TaskDescription;

    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    invoke-direct/range {p3 .. p3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1328
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    :cond_68
    :try_start_68
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v13, v14, v0, v1, v2}, Landroid/app/IActivityManager;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_79} :catch_8f

    move-result v13

    return v13

    .line 1298
    .end local v10    # "size":Landroid/graphics/Point;
    .end local v11    # "th":I
    .end local v12    # "tw":I
    :catchall_7b
    move-exception v13

    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v13

    .line 1311
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v10    # "size":Landroid/graphics/Point;
    .restart local v11    # "th":I
    .restart local v12    # "tw":I
    :cond_7e
    iget v13, v10, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v9, v13, v14

    .line 1312
    .restart local v9    # "scale":F
    iget v13, v10, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    int-to-float v14, v11

    mul-float/2addr v14, v9

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v6, v13, v14

    goto :goto_3f

    .line 1330
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v9    # "scale":F
    :catch_8f
    move-exception v7

    .line 1331
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "System dead?"

    invoke-direct {v13, v14, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method public clearApplicationUserData()Z
    .registers 3

    .prologue
    .line 1983
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    return v0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 1965
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 1968
    :goto_c
    return v1

    .line 1967
    :catch_d
    move-exception v0

    .line 1968
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public dumpPackageState(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2992
    invoke-static {p1, p2}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2993
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2510
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 2511
    return-void
.end method

.method public forceStopPackageAsUser(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2499
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2502
    :goto_7
    return-void

    .line 2500
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getAppTaskThumbnailSize()Landroid/util/Size;
    .registers 4

    .prologue
    .line 1254
    monitor-enter p0

    .line 1255
    :try_start_1
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 1256
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    monitor-exit p0

    return-object v0

    .line 1257
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getAppTasks()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$AppTask;>;"
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getAppTasks(Ljava/lang/String;)Ljava/util/List;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_2b

    move-result-object v0

    .line 1242
    .local v0, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1243
    .local v3, "numAppTasks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v3, :cond_2d

    .line 1244
    new-instance v6, Landroid/app/ActivityManager$AppTask;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IAppTask;

    invoke-direct {v6, v5}, Landroid/app/ActivityManager$AppTask;-><init>(Landroid/app/IAppTask;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1238
    .end local v0    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    .end local v2    # "i":I
    .end local v3    # "numAppTasks":I
    :catch_2b
    move-exception v1

    .line 1240
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    .line 1246
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$AppTask;>;"
    :cond_2d
    return-object v4
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 2

    .prologue
    .line 2518
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 2521
    :goto_8
    return-object v0

    .line 2519
    :catch_9
    move-exception v0

    .line 2521
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getFrontActivityScreenCompatMode()I
    .registers 3

    .prologue
    .line 368
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFrontActivityScreenCompatMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 371
    :goto_8
    return v1

    .line 369
    :catch_9
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getLargeMemoryClass()I
    .registers 2

    .prologue
    .line 459
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .registers 6

    .prologue
    const/16 v3, 0x140

    .line 2531
    iget-object v4, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2532
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2533
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2535
    .local v2, "sw":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_19

    .line 2556
    .end local v0    # "density":I
    :goto_18
    return v0

    .line 2540
    .restart local v0    # "density":I
    :cond_19
    sparse-switch v0, :sswitch_data_36

    .line 2556
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_18

    .line 2542
    :sswitch_25
    const/16 v0, 0xa0

    goto :goto_18

    .line 2544
    :sswitch_28
    const/16 v0, 0xf0

    goto :goto_18

    :sswitch_2b
    move v0, v3

    .line 2546
    goto :goto_18

    :sswitch_2d
    move v0, v3

    .line 2548
    goto :goto_18

    .line 2550
    :sswitch_2f
    const/16 v0, 0x1e0

    goto :goto_18

    .line 2552
    :sswitch_32
    const/16 v0, 0x280

    goto :goto_18

    .line 2540
    nop

    :sswitch_data_36
    .sparse-switch
        0x78 -> :sswitch_25
        0xa0 -> :sswitch_28
        0xd5 -> :sswitch_2b
        0xf0 -> :sswitch_2d
        0x140 -> :sswitch_2f
        0x1e0 -> :sswitch_32
    .end sparse-switch
.end method

.method public getLauncherLargeIconSize()I
    .registers 2

    .prologue
    .line 2567
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getMemoryClass()I
    .registers 2

    .prologue
    .line 431
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 3
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .prologue
    .line 1859
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1862
    :goto_7
    return-void

    .line 1860
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 409
    :goto_8
    return v1

    .line 407
    :catch_9
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 387
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 390
    :goto_8
    return v1

    .line 388
    :catch_9
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .registers 4
    .param p1, "pids"    # [I

    .prologue
    .line 2440
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 2442
    :goto_8
    return-object v1

    .line 2441
    :catch_9
    move-exception v0

    .line 2442
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2100
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 2102
    :goto_8
    return-object v1

    .line 2101
    :catch_9
    move-exception v0

    .line 2102
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .registers 6
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1038
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 1042
    :goto_c
    return-object v1

    .line 1040
    :catch_d
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getRecentTasksForUser(III)Ljava/util/List;
    .registers 6
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1064
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1068
    :goto_8
    return-object v1

    .line 1066
    :catch_9
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2403
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 2405
    :goto_8
    return-object v1

    .line 2404
    :catch_9
    move-exception v0

    .line 2405
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2385
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 2387
    :goto_8
    return-object v1

    .line 2386
    :catch_9
    move-exception v0

    .line 2387
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1753
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1757
    :goto_8
    return-object v1

    .line 1755
    :catch_9
    move-exception v0

    .line 1757
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningServices(I)Ljava/util/List;
    .registers 5
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1737
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 1741
    :goto_9
    return-object v1

    .line 1739
    :catch_a
    move-exception v0

    .line 1741
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .registers 5
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1371
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 1374
    :goto_9
    return-object v1

    .line 1372
    :catch_a
    move-exception v0

    .line 1374
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1480
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1483
    :goto_8
    return-object v1

    .line 1481
    :catch_9
    move-exception v0

    .line 1483
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getTaskTopIsSecretMode(I)Z
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1491
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskTopIsSecretMode(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 1494
    :goto_8
    return v1

    .line 1492
    :catch_9
    move-exception v0

    .line 1494
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isInHomeStack(I)Z
    .registers 4
    .param p1, "taskId"    # I

    .prologue
    .line 1502
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->isInHomeStack(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 1505
    :goto_8
    return v1

    .line 1503
    :catch_9
    move-exception v0

    .line 1505
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isInLockTaskMode()Z
    .registers 3

    .prologue
    .line 3067
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 3069
    :goto_8
    return v1

    .line 3068
    :catch_9
    move-exception v0

    .line 3069
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isLowRamDevice()Z
    .registers 2

    .prologue
    .line 478
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method public isUserRunning(I)Z
    .registers 6
    .param p1, "userid"    # I

    .prologue
    const/4 v1, 0x0

    .line 2974
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 2976
    :goto_a
    return v1

    .line 2975
    :catch_b
    move-exception v0

    .line 2976
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_a
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2473
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2477
    :goto_b
    return-void

    .line 2475
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public moveTaskToFront(II)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1534
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1552
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1556
    :goto_7
    return-void

    .line 1553
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public removeTask(II)Z
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1413
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->removeTask(II)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 1416
    :goto_8
    return v1

    .line 1414
    :catch_9
    move-exception v0

    .line 1416
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public restartPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2455
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 2456
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 378
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 382
    :goto_7
    return-void

    .line 379
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    .line 416
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 420
    :goto_7
    return-void

    .line 417
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 397
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 401
    :goto_7
    return-void

    .line 398
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public startLockTaskMode(I)V
    .registers 3
    .param p1, "taskId"    # I

    .prologue
    .line 3044
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->startLockTaskMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 3047
    :goto_7
    return-void

    .line 3045
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public stopLockTaskMode()V
    .registers 2

    .prologue
    .line 3054
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 3057
    :goto_7
    return-void

    .line 3055
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public switchUser(I)Z
    .registers 4
    .param p1, "userid"    # I

    .prologue
    .line 2957
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2959
    :goto_8
    return v1

    .line 2958
    :catch_9
    move-exception v0

    .line 2959
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method
