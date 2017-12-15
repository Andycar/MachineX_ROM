.class public Lcom/sec/android/emergencymode/UltraPowerSavingManager;
.super Ljava/lang/Object;
.source "UltraPowerSavingManager.java"


# static fields
.field public static final EXTRA_ENABLED:Ljava/lang/String; = "enable"

.field private static final TAG:Ljava/lang/String; = "UltraPowerSavingManager"

.field public static final ULTRA_POWERSAVING_MODE_NONE:I = 0x0

.field public static final ULTRA_POWERSAVING_MODE_NORMAL:I = 0x1

.field public static final ULTRA_POWERSAVING_SERVICE:Ljava/lang/String; = "com.sec.android.emergencymode.UltraPowerSavingManager.ORDER_ULTRA_POWERSAVING_SERVICE"

.field private static sInstance:Lcom/sec/android/emergencymode/UltraPowerSavingManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/emergencymode/UltraPowerSavingManager;->sInstance:Lcom/sec/android/emergencymode/UltraPowerSavingManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/sec/android/emergencymode/UltraPowerSavingManager;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/UltraPowerSavingManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-class v1, Lcom/sec/android/emergencymode/UltraPowerSavingManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/emergencymode/UltraPowerSavingManager;->sInstance:Lcom/sec/android/emergencymode/UltraPowerSavingManager;

    if-nez v0, :cond_e

    .line 68
    new-instance v0, Lcom/sec/android/emergencymode/UltraPowerSavingManager;

    invoke-direct {v0, p0}, Lcom/sec/android/emergencymode/UltraPowerSavingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/emergencymode/UltraPowerSavingManager;->sInstance:Lcom/sec/android/emergencymode/UltraPowerSavingManager;

    .line 70
    :cond_e
    sget-object v0, Lcom/sec/android/emergencymode/UltraPowerSavingManager;->sInstance:Lcom/sec/android/emergencymode/UltraPowerSavingManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getMode()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/sec/android/emergencymode/UltraPowerSavingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    .line 94
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public isSupported()Z
    .registers 2

    .prologue
    .line 83
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v0

    return v0
.end method
