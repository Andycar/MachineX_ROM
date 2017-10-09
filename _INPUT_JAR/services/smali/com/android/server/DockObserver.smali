.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final ACCESSORY_CONNECTED:I = 0xff

.field private static final DOCKSTATE_PROPERTY:Ljava/lang/String; = "sys.dockstate"

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private final VIBRATION_DURATION:I

.field private mActualDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 78
    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 80
    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 81
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 84
    iput v1, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 90
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    .line 311
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 323
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 96
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 97
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 101
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DockObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/DockObserver;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    return v0
.end method

.method private handleDockStateChange()V
    .registers 19

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 187
    :try_start_5
    const-string v13, "DockObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dock state changed from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 190
    .local v6, "previousDockState":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 194
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string v13, "device_provisioned"

    const/4 v15, 0x0

    invoke-static {v3, v13, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_65

    .line 197
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v15, 0x9

    if-eq v13, v15, :cond_65

    const/16 v13, 0x9

    if-eq v6, v13, :cond_65

    .line 198
    const-string v13, "DockObserver"

    const-string v15, "Device not provisioned, skipping dock broadcast"

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v14

    .line 309
    :goto_64
    return-void

    .line 207
    :cond_65
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v13, 0x20000000

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    const-string v13, "android.intent.extra.DOCK_STATE"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v4, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v13, "com.sec.intent.extra.SMART_DOCK_STATE"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v4, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v13, "android.intent.extra.SMART_DOCK_STATE"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v4, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const-string v13, "dock_sounds_enabled"

    const/4 v15, 0x1

    invoke-static {v3, v13, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_16d

    .line 235
    const/4 v12, 0x0

    .line 236
    .local v12, "whichSound":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v13, :cond_107

    .line 237
    const/4 v13, 0x1

    if-eq v6, v13, :cond_aa

    const/4 v13, 0x3

    if-eq v6, v13, :cond_aa

    const/4 v13, 0x4

    if-eq v6, v13, :cond_aa

    const/16 v13, 0x9

    if-ne v6, v13, :cond_101

    .line 244
    :cond_aa
    const-string v12, "desk_undock_sound"

    .line 263
    :cond_ac
    :goto_ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v15, "audio"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 264
    .local v5, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 265
    .local v7, "ringerMode":I
    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 267
    .local v2, "callMode":I
    const-string v13, "DockObserver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "whichSound is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz v12, :cond_f2

    .line 272
    const/4 v13, 0x1

    if-ne v7, v13, :cond_132

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v15, 0x9

    if-ne v13, v15, :cond_132

    .line 274
    new-instance v11, Landroid/os/SystemVibrator;

    invoke-direct {v11}, Landroid/os/SystemVibrator;-><init>()V

    .line 275
    .local v11, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 307
    .end local v2    # "callMode":I
    .end local v5    # "mAudioManager":Landroid/media/AudioManager;
    .end local v7    # "ringerMode":I
    .end local v11    # "vibrator":Landroid/os/Vibrator;
    .end local v12    # "whichSound":Ljava/lang/String;
    :cond_f2
    :goto_f2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v4, v15}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 308
    monitor-exit v14

    goto/16 :goto_64

    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "previousDockState":I
    :catchall_fe
    move-exception v13

    monitor-exit v14
    :try_end_100
    .catchall {:try_start_5 .. :try_end_100} :catchall_fe

    throw v13

    .line 245
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "previousDockState":I
    .restart local v12    # "whichSound":Ljava/lang/String;
    :cond_101
    const/4 v13, 0x2

    if-ne v6, v13, :cond_ac

    .line 246
    :try_start_104
    const-string v12, "car_undock_sound"

    goto :goto_ac

    .line 249
    :cond_107
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v15, 0x1

    if-eq v13, v15, :cond_124

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v15, 0x3

    if-eq v13, v15, :cond_124

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v15, 0x4

    if-eq v13, v15, :cond_124

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v15, 0x9

    if-ne v13, v15, :cond_127

    .line 256
    :cond_124
    const-string v12, "desk_dock_sound"

    goto :goto_ac

    .line 257
    :cond_127
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_ac

    .line 258
    const-string v12, "car_dock_sound"

    goto/16 :goto_ac

    .line 276
    .restart local v2    # "callMode":I
    .restart local v5    # "mAudioManager":Landroid/media/AudioManager;
    .restart local v7    # "ringerMode":I
    :cond_132
    if-eqz v2, :cond_13c

    .line 278
    const-string v13, "DockObserver"

    const-string v15, "Not normal mode, don\'t play dock sound"

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 281
    :cond_13c
    invoke-static {v3, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "soundPath":Ljava/lang/String;
    if-eqz v9, :cond_f2

    .line 283
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file://"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 284
    .local v10, "soundUri":Landroid/net/Uri;
    if-eqz v10, :cond_f2

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v10}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .line 287
    .local v8, "sfx":Landroid/media/Ringtone;
    if-eqz v8, :cond_f2

    .line 288
    const/4 v13, 0x7

    invoke-virtual {v8, v13}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 289
    invoke-virtual {v8}, Landroid/media/Ringtone;->play()V

    goto :goto_f2

    .line 300
    .end local v2    # "callMode":I
    .end local v5    # "mAudioManager":Landroid/media/AudioManager;
    .end local v7    # "ringerMode":I
    .end local v8    # "sfx":Landroid/media/Ringtone;
    .end local v9    # "soundPath":Ljava/lang/String;
    .end local v10    # "soundUri":Landroid/net/Uri;
    .end local v12    # "whichSound":Ljava/lang/String;
    :cond_16d
    const-string v13, "DockObserver"

    const-string v15, "DOCK_SOUNDS_ENALBED is not"

    invoke-static {v13, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_174
    .catchall {:try_start_104 .. :try_end_174} :catchall_fe

    goto/16 :goto_f2
.end method

.method private init()V
    .registers 8

    .prologue
    .line 124
    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 126
    const/16 v4, 0x400

    :try_start_5
    new-array v0, v4, [C

    .line 127
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_44
    .catchall {:try_start_5 .. :try_end_e} :catchall_41

    .line 129
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_11
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 130
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 131
    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_33

    .line 133
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_31} :catch_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_44
    .catchall {:try_start_2e .. :try_end_31} :catchall_41

    .line 140
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_31
    :try_start_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_41

    .line 141
    return-void

    .line 133
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_33
    move-exception v4

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_38} :catch_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_44
    .catchall {:try_start_34 .. :try_end_38} :catchall_41

    .line 135
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_38
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_39
    const-string v4, "DockObserver"

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 140
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw v4

    .line 137
    :catch_44
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v4, "DockObserver"

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_41

    goto :goto_31
.end method

.method private setActualDockStateLocked(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 144
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 147
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_28

    .line 148
    iput v2, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 149
    iput v2, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 156
    :goto_f
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-eq v0, v3, :cond_17

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-nez v0, :cond_2c

    .line 157
    :cond_17
    const-string/jumbo v0, "sys.dockstate"

    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-ne v0, v3, :cond_2c

    .line 167
    :cond_27
    :goto_27
    return-void

    .line 151
    :cond_28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    goto :goto_f

    .line 164
    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_27

    .line 165
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    goto :goto_27
.end method

.method private setDockStateLocked(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_16

    .line 171
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 172
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_16

    .line 174
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 175
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 178
    :cond_16
    return-void
.end method

.method private updateLocked()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 182
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 111
    const/16 v0, 0x226

    if-ne p1, v0, :cond_12

    .line 112
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 116
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_11

    .line 117
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 119
    :cond_11
    monitor-exit v1

    .line 121
    :cond_12
    return-void

    .line 119
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 106
    const-string v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    return-void
.end method
