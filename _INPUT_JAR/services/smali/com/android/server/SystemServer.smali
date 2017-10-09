.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DIR_ENCRYPTION:Z

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MSAP_WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.MsapWifiService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final is3LMAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field private final isElasticEnabled:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mLightsService:Lcom/android/server/lights/LightsService;

.field private mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 307
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->isElasticEnabled:Z

    .line 323
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .prologue
    .line 460
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 461
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 462
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 463
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 319
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 443
    const-string/jumbo v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2d

    .line 446
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1c

    move v1, v3

    .line 449
    .local v1, "reboot":Z
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2e

    .line 450
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "reason":Ljava/lang/String;
    :goto_2a
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 457
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_2d
    return-void

    .line 452
    .restart local v1    # "reboot":Z
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_2a
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 438
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    return-void
.end method

.method private run()V
    .registers 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_19

    .line 332
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 337
    :cond_19
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 341
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 350
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 363
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 364
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 365
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 366
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 375
    :cond_67
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 379
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 383
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 387
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 390
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 397
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 398
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 401
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 406
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 409
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 412
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 413
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 417
    :try_start_a6
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 418
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 419
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_af} :catch_e7

    .line 427
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 428
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_bc
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 434
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_ce
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 358
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 359
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto/16 :goto_4c

    .line 420
    :catch_e7
    move-exception v7

    .line 421
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    throw v7
.end method

.method private startBootstrapServices()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 476
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 479
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 481
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 487
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 491
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 495
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 498
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 501
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 503
    const-string v1, "SystemServer"

    const-string v3, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 518
    :cond_61
    :goto_61
    const-string v1, "SystemServer"

    const-string v3, "!@Boot: Start PackageManagerService"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v1, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v1, :cond_bf

    move v1, v2

    :goto_71
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 521
    const-string v1, "SystemServer"

    const-string v2, "!@Boot: End PackageManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 523
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 525
    const-string v1, "SystemServer"

    const-string v2, "User Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string/jumbo v1, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 532
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 533
    return-void

    .line 505
    :cond_ac
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 506
    const-string v1, "SystemServer"

    const-string v3, "Device encrypted - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_61

    .line 519
    :cond_bf
    const/4 v1, 0x0

    goto :goto_71
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mLightsService:Lcom/android/server/lights/LightsService;

    .line 543
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 546
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 547
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 552
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2292
    const/4 v4, 0x0

    .line 2293
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_1
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2294
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    if-lez v3, :cond_62

    const/16 v6, 0x10

    if-ge v3, v6, :cond_62

    .line 2297
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2300
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2301
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2303
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4d} :catch_6d

    move-result-object v4

    .line 2305
    if-eqz v4, :cond_62

    :try_start_50
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_62

    .line 2306
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2307
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_62} :catch_63
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_62} :catch_6d

    .line 2316
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_62
    :goto_62
    return-void

    .line 2309
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_63
    move-exception v5

    .line 2310
    .local v5, "e":Ljava/lang/Exception;
    :try_start_64
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6c} :catch_6d

    goto :goto_62

    .line 2313
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6d
    move-exception v5

    .line 2314
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
     .registers 6

     :try_start_0
     invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

     move-result-object v1

     invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
     :try_end_7
     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

     :goto_7
     return-void

     :catch_8
     move-exception v0

     const-string v2, "SystemServer"

     new-instance v3, Ljava/lang/StringBuilder;

     invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

     const-string v4, "Starting emergency service failed: "

     invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

     move-result-object v3

     invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

     move-result-object v3

     invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

     move-result-object v3

     invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

     goto :goto_7
 .end method

.method private startOtherServices()V
    .registers 181

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 560
    .local v4, "context":Landroid/content/Context;
    const/16 v40, 0x0

    .line 561
    .local v40, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v72, 0x0

    .line 562
    .local v72, "contentService":Lcom/android/server/content/ContentService;
    const/16 v168, 0x0

    .line 563
    .local v168, "vibrator":Lcom/android/server/VibratorService;
    const/16 v42, 0x0

    .line 564
    .local v42, "alarm":Landroid/app/IAlarmManager;
    const/16 v132, 0x0

    .line 565
    .local v132, "mountService":Lcom/android/server/MountService;
    const/16 v147, 0x0

    .line 566
    .local v147, "sdpService":Lcom/android/server/SdpManagerService;
    const/4 v8, 0x0

    .line 567
    .local v8, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v7, 0x0

    .line 568
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v134, 0x0

    .line 569
    .local v134, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v64, 0x0

    .line 570
    .local v64, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v135, 0x0

    .line 571
    .local v135, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v151, 0x0

    .line 572
    .local v151, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v179, 0x0

    .line 573
    .local v179, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v50, 0x0

    .line 574
    .local v50, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v166, 0x0

    .line 575
    .local v166, "usb":Lcom/android/server/usb/UsbService;
    const/16 v149, 0x0

    .line 576
    .local v149, "serial":Lcom/android/server/SerialService;
    const/16 v138, 0x0

    .line 577
    .local v138, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v61, 0x0

    .line 578
    .local v61, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v107, 0x0

    .line 579
    .local v107, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v155, 0x0

    .line 580
    .local v155, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v70, 0x0

    .line 582
    .local v70, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v79, 0x0

    .line 584
    .local v79, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v118, 0x0

    .line 585
    .local v118, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v47, 0x0

    .line 586
    .local v47, "audioService":Landroid/media/AudioService;
    const/16 v81, 0x0

    .line 587
    .local v81, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v101, 0x0

    .line 588
    .local v101, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v129, 0x0

    .line 590
    .local v129, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v143, 0x0

    .line 592
    .local v143, "quickconnect":Lcom/android/server/QuickConnectService;
    const/16 v160, 0x0

    .line 593
    .local v160, "timaService":Lcom/android/server/TimaService;
    const/16 v158, 0x0

    .line 595
    .local v158, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v120, 0x0

    .line 596
    .local v120, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v122, 0x0

    .line 601
    .local v122, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v178, 0x0

    .line 611
    .local v178, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string v5, "config.disable_storage"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 612
    .local v92, "disableStorage":Z
    const-string v5, "config.disable_media"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v89

    .line 613
    .local v89, "disableMedia":Z
    const-string v5, "config.disable_bluetooth"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    .line 614
    .local v87, "disableBluetooth":Z
    const-string v5, "config.disable_telephony"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 615
    .local v94, "disableTelephony":Z
    const-string v5, "config.disable_location"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    .line 616
    .local v88, "disableLocation":Z
    const-string v5, "config.disable_systemui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 617
    .local v93, "disableSystemUI":Z
    const-string v5, "config.disable_noncore"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 618
    .local v91, "disableNonCoreServices":Z
    const-string v5, "config.disable_network"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 619
    .local v90, "disableNetwork":Z
    const-string/jumbo v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v111

    .line 620
    .local v111, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120083

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v82

    .line 622
    .local v82, "digitalPenCapable":Z
    const-string v5, "config.disable_atlas"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v86

    .line 625
    .local v86, "disableAtlas":Z
    :try_start_9b
    const-string v5, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 628
    const-string v5, "SystemServer"

    const-string v6, "Scheduling Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string/jumbo v5, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 631
    const-string v5, "SystemServer"

    const-string v6, "Telephony Registry"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v156, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v156

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_c5
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_c5} :catch_13c6

    .line 633
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v156, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_c5
    const-string/jumbo v5, "telephony.registry"

    move-object/from16 v0, v156

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 635
    const-string v5, "SystemServer"

    const-string v6, "Entropy Mixer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v5, "entropy"

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_de
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_de} :catch_dfd

    .line 641
    :try_start_de
    const-string v5, "SystemServer"

    const-string v6, "SEAMS"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v5, "SEAMService"

    new-instance v6, Lcom/android/server/SEAMService;

    invoke-direct {v6, v4}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_ef} :catch_df1
    .catch Ljava/lang/RuntimeException; {:try_start_de .. :try_end_ef} :catch_dfd

    .line 651
    :goto_ef
    :try_start_ef
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v167

    .line 652
    .local v167, "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_101
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_101} :catch_dfd

    move-result v5

    if-eqz v5, :cond_117

    .line 654
    :try_start_104
    const-string v5, "SystemServer"

    const-string v6, "Persona Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v120

    .line 656
    const-string/jumbo v5, "persona"

    move-object/from16 v0, v120

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_117} :catch_e12
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_117} :catch_dfd

    .line 663
    :cond_117
    :goto_117
    :try_start_117
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_11f
    .catch Ljava/lang/RuntimeException; {:try_start_117 .. :try_end_11f} :catch_dfd

    .line 668
    :try_start_11f
    const-string v5, "SystemServer"

    const-string v6, "Account Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v41, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_12d} :catch_e1e
    .catch Ljava/lang/RuntimeException; {:try_start_11f .. :try_end_12d} :catch_dfd

    .line 670
    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v41, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_12d
    const-string v5, "account"

    move-object/from16 v0, v41

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_134
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_134} :catch_140d
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_134} :catch_13c9

    move-object/from16 v40, v41

    .line 676
    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_136
    :try_start_136
    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 677
    .local v121, "mProductName":Ljava/lang/String;
    const-string v5, "ktt"

    move-object/from16 v0, v121

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15e

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_14a
    .catch Ljava/lang/RuntimeException; {:try_start_136 .. :try_end_14a} :catch_dfd

    move-result v5

    if-nez v5, :cond_15e

    .line 680
    :try_start_14d
    const-string v5, "SystemServer"

    const-string v6, "KT UCA Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v5, "ktuca"

    new-instance v6, Landroid/ktuca/KtUcaService;

    invoke-direct {v6, v4}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_15e} :catch_e2a
    .catch Ljava/lang/RuntimeException; {:try_start_14d .. :try_end_15e} :catch_dfd

    .line 688
    :cond_15e
    :goto_15e
    :try_start_15e
    const-string v5, "SystemServer"

    const-string v6, "Content Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e36

    const/4 v5, 0x1

    :goto_16d
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v72

    .line 694
    new-instance v80, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_178
    .catch Ljava/lang/RuntimeException; {:try_start_15e .. :try_end_178} :catch_dfd

    .line 696
    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v80, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_178
    sget-boolean v5, Lcom/android/server/SystemServer;->DIR_ENCRYPTION:Z

    if-eqz v5, :cond_183

    .line 697
    const-string v5, "DirEncryptService"

    move-object/from16 v0, v80

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_183
    .catch Ljava/lang/Throwable; {:try_start_178 .. :try_end_183} :catch_e39
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_183} :catch_13d0

    :cond_183
    move-object/from16 v79, v80

    .line 706
    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_185
    :try_start_185
    const-string v5, "SystemServer"

    const-string v6, "Reactive Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catch Ljava/lang/RuntimeException; {:try_start_185 .. :try_end_18c} :catch_dfd

    .line 708
    :try_start_18c
    const-string v5, "ReactiveService"

    new-instance v6, Lcom/android/server/ReactiveService;

    invoke-direct {v6, v4}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_196
    .catch Ljava/lang/Throwable; {:try_start_18c .. :try_end_196} :catch_e47
    .catch Ljava/lang/RuntimeException; {:try_start_18c .. :try_end_196} :catch_dfd

    .line 716
    :goto_196
    :try_start_196
    const-string v5, "SystemServer"

    const-string v6, "EngineeringModeService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catch Ljava/lang/RuntimeException; {:try_start_196 .. :try_end_19d} :catch_dfd

    .line 718
    :try_start_19d
    const-string v5, "EngineeringModeService"

    new-instance v6, Lcom/android/server/EngineeringModeService;

    invoke-direct {v6, v4}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a7
    .catch Ljava/lang/Throwable; {:try_start_19d .. :try_end_1a7} :catch_e51
    .catch Ljava/lang/RuntimeException; {:try_start_19d .. :try_end_1a7} :catch_dfd

    .line 726
    :goto_1a7
    :try_start_1a7
    const-string v5, "SystemServer"

    const-string v6, "System Content Providers"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_1b5
    .catch Ljava/lang/RuntimeException; {:try_start_1a7 .. :try_end_1b5} :catch_dfd

    .line 729
    :try_start_1b5
    const-string/jumbo v5, "sedenial"

    new-instance v6, Lcom/android/server/SEDenialService;

    invoke-direct {v6, v4}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 730
    const-string v5, "SystemServer"

    const-string v6, "SEDenial service added"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c7
    .catch Ljava/lang/Throwable; {:try_start_1b5 .. :try_end_1c7} :catch_e5e
    .catch Ljava/lang/RuntimeException; {:try_start_1b5 .. :try_end_1c7} :catch_dfd

    .line 735
    :goto_1c7
    :try_start_1c7
    const-string v5, "SystemServer"

    const-string v6, "Vibrator Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v169, Lcom/android/server/VibratorService;

    move-object/from16 v0, v169

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1d5
    .catch Ljava/lang/RuntimeException; {:try_start_1c7 .. :try_end_1d5} :catch_dfd

    .line 737
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .local v169, "vibrator":Lcom/android/server/VibratorService;
    :try_start_1d5
    const-string/jumbo v5, "vibrator"

    move-object/from16 v0, v169

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 740
    sget-boolean v5, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v5, :cond_1f7

    .line 741
    const-string v5, "SystemServer"

    const-string v6, "Tw ToolBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v163, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v163

    invoke-direct {v0, v4}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 743
    .local v163, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v5, "tw_toolbox"

    move-object/from16 v0, v163

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 748
    .end local v163    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :cond_1f7
    const-string v5, "1"

    const-string/jumbo v6, "ro.config.tima"

    const-string v9, "0"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_205
    .catch Ljava/lang/RuntimeException; {:try_start_1d5 .. :try_end_205} :catch_e75

    move-result v157

    .line 749
    .local v157, "timaEnabled":Z
    if-eqz v157, :cond_260

    .line 751
    :try_start_208
    const-string v5, "SystemServer"

    const-string v6, "TIMA Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 755
    new-instance v161, Lcom/android/server/TimaService;

    move-object/from16 v0, v161

    invoke-direct {v0, v4}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_21a
    .catch Ljava/lang/Throwable; {:try_start_208 .. :try_end_21a} :catch_e68
    .catch Ljava/lang/RuntimeException; {:try_start_208 .. :try_end_21a} :catch_e75

    .line 756
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .local v161, "timaService":Lcom/android/server/TimaService;
    :try_start_21a
    const-string/jumbo v5, "tima"

    move-object/from16 v0, v161

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_222
    .catch Ljava/lang/Throwable; {:try_start_21a .. :try_end_222} :catch_1408
    .catch Ljava/lang/RuntimeException; {:try_start_21a .. :try_end_222} :catch_13d7

    move-object/from16 v160, v161

    .line 761
    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    :goto_224
    const/16 v5, -0x13

    :try_start_226
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_229
    .catch Ljava/lang/RuntimeException; {:try_start_226 .. :try_end_229} :catch_e75

    .line 765
    :try_start_229
    const-string v5, "SystemServer"

    const-string v6, "TIMA Observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v159, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v159

    invoke-direct {v0, v4}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_237
    .catch Ljava/lang/Throwable; {:try_start_229 .. :try_end_237} :catch_e7b
    .catch Ljava/lang/RuntimeException; {:try_start_229 .. :try_end_237} :catch_e75

    .end local v158    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v159, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v158, v159

    .line 774
    .end local v159    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v158    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_239
    :try_start_239
    const-string v5, "3.0"

    const-string/jumbo v6, "ro.config.timaversion"

    const-string v9, "0"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v162

    .line 775
    .local v162, "timaversion":Z
    if-eqz v162, :cond_260

    .line 776
    const-string v5, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v113

    .line 778
    .local v113, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider;

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 779
    const-string v5, "SystemServer"

    const-string v6, "Added TimaKesytore provider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_260} :catch_e88
    .catch Ljava/lang/RuntimeException; {:try_start_239 .. :try_end_260} :catch_e75

    .line 789
    .end local v113    # "keyStoreClass":Ljava/lang/Class;
    .end local v162    # "timaversion":Z
    :cond_260
    :goto_260
    const/16 v98, 0x1

    .line 790
    .local v98, "enabledMDM":Z
    const/4 v5, 0x1

    move/from16 v0, v98

    if-ne v5, v0, :cond_27f

    .line 791
    const/16 v97, 0x1

    .line 792
    .local v97, "enabledCEP":Z
    const/4 v5, 0x1

    move/from16 v0, v97

    if-ne v5, v0, :cond_ea1

    .line 794
    :try_start_26e
    const-string v5, "SystemServer"

    const-string v6, "CEP Proxy KS Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v5, "cepproxyks"

    new-instance v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27f
    .catch Ljava/lang/Throwable; {:try_start_26e .. :try_end_27f} :catch_e95
    .catch Ljava/lang/RuntimeException; {:try_start_26e .. :try_end_27f} :catch_e75

    .line 805
    .end local v97    # "enabledCEP":Z
    :cond_27f
    :goto_27f
    :try_start_27f
    const-string v5, "SystemServer"

    const-string v6, "SSRM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_286
    .catch Ljava/lang/RuntimeException; {:try_start_27f .. :try_end_286} :catch_e75

    .line 807
    :try_start_286
    new-instance v53, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 808
    .local v53, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v52

    .line 809
    .local v52, "cfmsClass":Ljava/lang/Class;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-class v9, Landroid/app/IActivityManager;

    aput-object v9, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    .line 810
    .local v54, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v9, v5, v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/os/IBinder;

    .line 811
    .local v152, "ssrmService":Landroid/os/IBinder;
    const-string v5, "CustomFrequencyManagerService"

    move-object/from16 v0, v152

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_2ca} :catch_eaa
    .catch Ljava/lang/RuntimeException; {:try_start_286 .. :try_end_2ca} :catch_e75

    .line 823
    .end local v52    # "cfmsClass":Ljava/lang/Class;
    .end local v53    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v54    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v152    # "ssrmService":Landroid/os/IBinder;
    :goto_2ca
    :try_start_2ca
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v55

    .line 824
    .local v55, "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.samsung.android.smartface.SmartFaceManager"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v58

    .line 825
    .local v58, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v5, "SMARTFACE_SERVICE"

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v103

    .line 827
    .local v103, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v5, "com.samsung.android.smartface.SmartFaceService"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v59

    .line 828
    .local v59, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v69

    .line 830
    .local v69, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v69

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 831
    const-string v5, "SystemServer"

    const-string v6, "SmartFaceService loaded!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_2ca .. :try_end_317} :catch_eb8
    .catch Ljava/lang/RuntimeException; {:try_start_2ca .. :try_end_317} :catch_e75

    .line 838
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v58    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v59    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v69    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v103    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_317
    :try_start_317
    const-string v5, "SystemServer"

    const-string v6, "Consumer IR Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v71, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v71

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_325
    .catch Ljava/lang/RuntimeException; {:try_start_317 .. :try_end_325} :catch_e75

    .line 840
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v71, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_325
    const-string v5, "consumer_ir"

    move-object/from16 v0, v71

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 843
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v42

    .line 846
    const-string v5, "SystemServer"

    const-string v6, "Init Watchdog"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v174

    .line 848
    .local v174, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v174

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 850
    const-string v5, "SystemServer"

    const-string v6, "Input Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v108, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_368
    .catch Ljava/lang/RuntimeException; {:try_start_325 .. :try_end_368} :catch_13e0

    .line 853
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v108, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_368
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_385

    .line 854
    const-string v5, "SystemServer"

    const-string v6, "Context Aware Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const-string v5, "context_aware"

    new-instance v6, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v6, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 858
    :cond_385
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39d

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.scontext_lite"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3af

    .line 860
    :cond_39d
    const-string v5, "SystemServer"

    const-string v6, "SContext Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string/jumbo v5, "scontext"

    new-instance v6, Landroid/hardware/scontext/SContextService;

    invoke-direct {v6, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 865
    :cond_3af
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "com.sec.feature.barcode_emulator"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_3b8
    .catch Ljava/lang/RuntimeException; {:try_start_368 .. :try_end_3b8} :catch_ed0

    move-result v5

    if-eqz v5, :cond_3d0

    .line 867
    :try_start_3bb
    const-string v5, "SystemServer"

    const-string v6, "BarBeamService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v49, Landroid/app/BarBeamService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 870
    .local v49, "barbeam":Landroid/app/BarBeamService;
    const-string v5, "barbeam"

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d0
    .catch Ljava/lang/Throwable; {:try_start_3bb .. :try_end_3d0} :catch_ec4
    .catch Ljava/lang/RuntimeException; {:try_start_3bb .. :try_end_3d0} :catch_ed0

    .line 880
    .end local v49    # "barbeam":Landroid/app/BarBeamService;
    :cond_3d0
    :goto_3d0
    :try_start_3d0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    .line 886
    const-string v5, "SystemServer"

    const-string v6, "Window Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_edb

    const/4 v5, 0x1

    move v6, v5

    :goto_3f0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v5, :cond_edf

    const/4 v5, 0x1

    :goto_3f7
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v108

    invoke-static {v4, v0, v6, v5, v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v179

    .line 890
    const-string/jumbo v5, "window"

    move-object/from16 v0, v179

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 891
    const-string v5, "input"

    move-object/from16 v0, v108

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v179

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowFacadeService;->setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, v179

    invoke-virtual {v5, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 902
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    move-object/from16 v0, v108

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 903
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/input/InputManagerService;->start()V

    .line 912
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 917
    if-eqz v111, :cond_ee2

    .line 918
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooh Service (emulator)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :goto_449
    const-string v5, "SystemServer"

    const-string v6, "RCP Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_450
    .catch Ljava/lang/RuntimeException; {:try_start_3d0 .. :try_end_450} :catch_ed0

    .line 941
    :try_start_450
    new-instance v123, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v4}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_457
    .catch Ljava/lang/Throwable; {:try_start_450 .. :try_end_457} :catch_f3c
    .catch Ljava/lang/RuntimeException; {:try_start_450 .. :try_end_457} :catch_ed0

    .line 942
    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v123, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_457
    const-string/jumbo v5, "rcp"

    move-object/from16 v0, v123

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45f
    .catch Ljava/lang/Throwable; {:try_start_457 .. :try_end_45f} :catch_1403
    .catch Ljava/lang/RuntimeException; {:try_start_457 .. :try_end_45f} :catch_13f6

    move-object/from16 v122, v123

    .line 949
    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_461
    :try_start_461
    new-instance v5, Landroid/security/AndroidKeyStoreProvider;

    invoke-direct {v5}, Landroid/security/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_469
    .catch Ljava/lang/RuntimeException; {:try_start_461 .. :try_end_469} :catch_ed0

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .line 956
    .end local v98    # "enabledMDM":Z
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v157    # "timaEnabled":Z
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    :goto_471
    const/16 v153, 0x0

    .line 957
    .local v153, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v140, 0x0

    .line 958
    .local v140, "notification":Landroid/app/INotificationManager;
    const/16 v105, 0x0

    .line 959
    .local v105, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v172, 0x0

    .line 960
    .local v172, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v114, 0x0

    .line 961
    .local v114, "location":Lcom/android/server/LocationManagerService;
    const/16 v145, 0x0

    .line 962
    .local v145, "sLocation":Landroid/os/IBinder;
    const/16 v73, 0x0

    .line 963
    .local v73, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v164, 0x0

    .line 964
    .local v164, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v116, 0x0

    .line 966
    .local v116, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v170, 0x0

    .line 968
    .local v170, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v45, 0x0

    .line 969
    .local v45, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v126, 0x0

    .line 972
    .local v126, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v99, 0x0

    .line 976
    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v60, 0x0

    .line 980
    .local v60, "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4be

    .line 984
    :try_start_494
    const-string v5, "SystemServer"

    const-string v6, "Input Method Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v106, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v106

    move-object/from16 v1, v179

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_4a4
    .catch Ljava/lang/Throwable; {:try_start_494 .. :try_end_4a4} :catch_f48

    .line 986
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v106, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_4a4
    const-string v5, "input_method"

    move-object/from16 v0, v106

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4ab
    .catch Ljava/lang/Throwable; {:try_start_4a4 .. :try_end_4ab} :catch_13c1

    move-object/from16 v105, v106

    .line 992
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_4ad
    :try_start_4ad
    const-string v5, "SystemServer"

    const-string v6, "Accessibility Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string v5, "accessibility"

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4be
    .catch Ljava/lang/Throwable; {:try_start_4ad .. :try_end_4be} :catch_f55

    .line 1002
    :cond_4be
    :goto_4be
    :try_start_4be
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_4c1
    .catch Ljava/lang/Throwable; {:try_start_4be .. :try_end_4c1} :catch_f62

    .line 1008
    :goto_4c1
    :try_start_4c1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_4c8
    .catch Ljava/lang/Throwable; {:try_start_4c1 .. :try_end_4c8} :catch_f6e

    .line 1014
    :goto_4c8
    :try_start_4c8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1040498

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v5, v6, v9}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_4db
    .catch Landroid/os/RemoteException; {:try_start_4c8 .. :try_end_4db} :catch_13be

    .line 1023
    :goto_4db
    :try_start_4db
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v141

    .line 1024
    .local v141, "pM":Landroid/content/pm/PackageManager;
    if-eqz v141, :cond_52f

    .line 1025
    const-string v5, "SystemServer"

    const-string v6, "PackageManager is not null!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v5, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v141

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52f

    .line 1027
    new-instance v131, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v131

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1028
    .local v131, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.samsung.android.motion.MotionRecognitionService"

    move-object/from16 v0, v131

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v56

    .line 1029
    .local v56, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v67

    .line 1030
    .local v67, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string v6, "motion_recognition"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v67

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1031
    const-string v5, "SystemServer"

    const-string v6, "MotionRecognitionService Service!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52f
    .catch Ljava/lang/Exception; {:try_start_4db .. :try_end_52f} :catch_f7b

    .line 1040
    .end local v56    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v67    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v131    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_52f
    :goto_52f
    const/16 v75, 0x0

    .line 1042
    .local v75, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_55c

    .line 1043
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 1044
    .local v77, "cryptState":Ljava/lang/String;
    const-string/jumbo v5, "trigger_restart_min_framework"

    move-object/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_555

    const-string/jumbo v5, "trigger_restart_min_framework"

    move-object/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f87

    .line 1045
    :cond_555
    const-string v5, "SystemServer"

    const-string v6, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v77    # "cryptState":Ljava/lang/String;
    :cond_55c
    :goto_55c
    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_57c

    .line 1078
    :try_start_564
    const-string v5, "SystemServer"

    const-string v6, "Add FM_RADIO_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v5, "FMPlayer"

    new-instance v6, Lcom/android/server/FMRadioService;

    invoke-direct {v6, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1080
    const-string v5, "SystemServer"

    const-string v6, "FMRadio service added.."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57c
    .catch Ljava/lang/Throwable; {:try_start_564 .. :try_end_57c} :catch_fca

    .line 1086
    :cond_57c
    :goto_57c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1416

    .line 1087
    if-nez v92, :cond_5ab

    const-string v5, "0"

    const-string/jumbo v6, "system_init.startmountservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ab

    .line 1094
    :try_start_594
    const-string v5, "SystemServer"

    const-string v6, "Mount Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v133, Lcom/android/server/MountService;

    move-object/from16 v0, v133

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_5a2
    .catch Ljava/lang/Throwable; {:try_start_594 .. :try_end_5a2} :catch_fd6

    .line 1096
    .end local v132    # "mountService":Lcom/android/server/MountService;
    .local v133, "mountService":Lcom/android/server/MountService;
    :try_start_5a2
    const-string v5, "mount"

    move-object/from16 v0, v133

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a9
    .catch Ljava/lang/Throwable; {:try_start_5a2 .. :try_end_5a9} :catch_13b4

    move-object/from16 v132, v133

    .line 1104
    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    :cond_5ab
    :goto_5ab
    :try_start_5ab
    const-string v5, "SystemServer"

    const-string v6, "DirEncryptSerrvice"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    if-eqz v79, :cond_5be

    .line 1106
    const-string v5, "SystemServer"

    const-string v6, "DirEncryptService.SystemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_5be
    .catch Ljava/lang/Throwable; {:try_start_5ab .. :try_end_5be} :catch_fe3

    .line 1126
    :cond_5be
    :goto_5be
    if-nez v91, :cond_5f8

    .line 1128
    :try_start_5c0
    const-string v5, "SystemServer"

    const-string v6, "LockSettingsService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    new-instance v117, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_5ce
    .catch Ljava/lang/Throwable; {:try_start_5c0 .. :try_end_5ce} :catch_ff0

    .line 1130
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v117, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_5ce
    const-string v5, "lock_settings"

    move-object/from16 v0, v117

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d5
    .catch Ljava/lang/Throwable; {:try_start_5ce .. :try_end_5d5} :catch_13af

    move-object/from16 v116, v117

    .line 1135
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_5d7
    const-string/jumbo v5, "ro.frp.pst"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ef

    .line 1136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1141
    :cond_5ef
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1146
    :cond_5f8
    :try_start_5f8
    const-string v5, "SystemServer"

    const-string v6, "HarmonyEAS service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v119, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v119

    invoke-direct {v0, v4}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_606
    .catch Ljava/lang/Throwable; {:try_start_5f8 .. :try_end_606} :catch_ffd

    .line 1148
    .end local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v119, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_606
    const-string v5, "harmony_eas_service"

    move-object/from16 v0, v119

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1149
    const-string v5, "SystemServer"

    const-string v6, "Harmony EAS service created..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_614
    .catch Ljava/lang/Throwable; {:try_start_606 .. :try_end_614} :catch_13aa

    move-object/from16 v118, v119

    .line 1157
    .end local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_616
    :try_start_616
    const-string v5, "SystemServer"

    const-string v6, "SdpManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    new-instance v148, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v4}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_624
    .catch Ljava/lang/Throwable; {:try_start_616 .. :try_end_624} :catch_1009

    .line 1159
    .end local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v148, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_624
    const-string/jumbo v5, "sdp"

    move-object/from16 v0, v148

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62c
    .catch Ljava/lang/Throwable; {:try_start_624 .. :try_end_62c} :catch_13a5

    move-object/from16 v147, v148

    .line 1166
    .end local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_62e
    if-nez v91, :cond_653

    .line 1168
    :try_start_630
    const-string v5, "SystemServer"

    const-string v6, "Enterprise Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    new-instance v100, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    move-object/from16 v0, v100

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_643
    .catch Ljava/lang/Throwable; {:try_start_630 .. :try_end_643} :catch_1016

    .line 1170
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v100, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_643
    const-string v5, "enterprise_policy"

    move-object/from16 v0, v100

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1171
    const-string v5, "SystemServer"

    const-string v6, "Enterprise Policymanager service created..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_651
    .catch Ljava/lang/Throwable; {:try_start_643 .. :try_end_651} :catch_13a0

    move-object/from16 v99, v100

    .line 1178
    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_653
    :goto_653
    if-nez v93, :cond_66f

    .line 1180
    :try_start_655
    const-string v5, "SystemServer"

    const-string v6, "Status Bar"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v154, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v154

    move-object/from16 v1, v179

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_665
    .catch Ljava/lang/Throwable; {:try_start_655 .. :try_end_665} :catch_1022

    .line 1182
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v154, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_665
    const-string/jumbo v5, "statusbar"

    move-object/from16 v0, v154

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66d
    .catch Ljava/lang/Throwable; {:try_start_665 .. :try_end_66d} :catch_139b

    move-object/from16 v153, v154

    .line 1188
    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_66f
    :goto_66f
    if-nez v91, :cond_682

    .line 1190
    :try_start_671
    const-string v5, "SystemServer"

    const-string v6, "Clipboard Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const-string v5, "clipboard"

    new-instance v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_682
    .catch Ljava/lang/Throwable; {:try_start_671 .. :try_end_682} :catch_102f

    .line 1199
    :cond_682
    :goto_682
    if-nez v91, :cond_695

    .line 1201
    :try_start_684
    const-string v5, "SystemServer"

    const-string v6, "ClipboardEx Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v5, "clipboardEx"

    new-instance v6, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_695
    .catch Ljava/lang/Throwable; {:try_start_684 .. :try_end_695} :catch_103c

    .line 1210
    :cond_695
    :goto_695
    if-nez v90, :cond_6a7

    .line 1212
    :try_start_697
    const-string v5, "SystemServer"

    const-string v6, "NetworkManagement Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v8

    .line 1214
    const-string v5, "network_management"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a7
    .catch Ljava/lang/Throwable; {:try_start_697 .. :try_end_6a7} :catch_1049

    .line 1222
    :cond_6a7
    :goto_6a7
    const-string v5, "SystemServer"

    const-string v6, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :try_start_6ae
    const-string v5, "SystemServer"

    const-string v6, "Absolute Persistence Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v5, "ABTPersistenceService"

    new-instance v6, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v6, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6bf
    .catch Ljava/lang/Throwable; {:try_start_6ae .. :try_end_6bf} :catch_1056

    .line 1233
    :goto_6bf
    if-nez v91, :cond_6d9

    .line 1235
    :try_start_6c1
    const-string v5, "SystemServer"

    const-string v6, "Text Service Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    new-instance v165, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v165

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6cf
    .catch Ljava/lang/Throwable; {:try_start_6c1 .. :try_end_6cf} :catch_1062

    .line 1237
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v165, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_6cf
    const-string/jumbo v5, "textservices"

    move-object/from16 v0, v165

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d7
    .catch Ljava/lang/Throwable; {:try_start_6cf .. :try_end_6d7} :catch_1396

    move-object/from16 v164, v165

    .line 1243
    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_6d9
    :goto_6d9
    if-nez v90, :cond_1412

    .line 1245
    :try_start_6db
    const-string v5, "SystemServer"

    const-string v6, "Network Score Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v136, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v136

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_6e9
    .catch Ljava/lang/Throwable; {:try_start_6db .. :try_end_6e9} :catch_106f

    .line 1247
    .end local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v136, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_6e9
    const-string v5, "network_score"

    move-object/from16 v0, v136

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f0
    .catch Ljava/lang/Throwable; {:try_start_6e9 .. :try_end_6f0} :catch_1391

    move-object/from16 v135, v136

    .line 1253
    .end local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_6f2
    :try_start_6f2
    const-string v5, "SystemServer"

    const-string v6, "NetworkStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    new-instance v137, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v137

    move-object/from16 v1, v42

    invoke-direct {v0, v4, v8, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_702
    .catch Ljava/lang/Throwable; {:try_start_6f2 .. :try_end_702} :catch_107c

    .line 1255
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v137, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_702
    const-string v5, "netstats"

    move-object/from16 v0, v137

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_709
    .catch Ljava/lang/Throwable; {:try_start_702 .. :try_end_709} :catch_138c

    move-object/from16 v7, v137

    .line 1261
    .end local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_70b
    :try_start_70b
    const-string v5, "SystemServer"

    const-string v6, "NetworkPolicy Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Landroid/os/IPowerManager;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_724
    .catch Ljava/lang/Throwable; {:try_start_70b .. :try_end_724} :catch_1089

    .line 1266
    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_724
    const-string v5, "netpolicy"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_729
    .catch Ljava/lang/Throwable; {:try_start_724 .. :try_end_729} :catch_1389

    .line 1271
    :goto_729
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.samsung.android.server.wifi.MsapWifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1274
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.RttService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.ethernet"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1098

    .line 1287
    :goto_762
    :try_start_762
    const-string v5, "SystemServer"

    const-string v6, "Connectivity Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    new-instance v65, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4, v8, v7, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_770
    .catch Ljava/lang/Throwable; {:try_start_762 .. :try_end_770} :catch_10a3

    .line 1290
    .end local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v65, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_770
    const-string v5, "connectivity"

    move-object/from16 v0, v65

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1291
    move-object/from16 v0, v65

    invoke-virtual {v7, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1292
    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_781
    .catch Ljava/lang/Throwable; {:try_start_770 .. :try_end_781} :catch_1384

    move-object/from16 v64, v65

    .line 1299
    .end local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_783
    :try_start_783
    const-string v5, "SystemServer"

    const-string v6, "SmartBonding Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v55

    .line 1301
    .restart local v55    # "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v57

    .line 1302
    .local v57, "class_SmartBondingService":Ljava/lang/Class;
    const-string v5, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v102

    .line 1304
    .local v102, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1306
    .local v68, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1307
    const-string v5, "SystemServer"

    const-string v6, "SmartBonding loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7ce
    .catch Ljava/lang/Throwable; {:try_start_783 .. :try_end_7ce} :catch_10b0

    .line 1382
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v57    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v68    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v102    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :goto_7ce
    :try_start_7ce
    const-string v5, "SystemServer"

    const-string v6, "Network Service Discovery Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v151

    .line 1384
    const-string/jumbo v5, "servicediscovery"

    move-object/from16 v0, v151

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e1
    .catch Ljava/lang/Throwable; {:try_start_7ce .. :try_end_7e1} :catch_10bd

    .line 1390
    :goto_7e1
    :try_start_7e1
    const-string v5, "SystemServer"

    const-string v6, "DPM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-static {v4}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_7eb
    .catch Ljava/lang/Throwable; {:try_start_7e1 .. :try_end_7eb} :catch_10ca

    .line 1397
    :goto_7eb
    if-nez v91, :cond_7ff

    .line 1399
    :try_start_7ed
    const-string v5, "SystemServer"

    const-string v6, "UpdateLock Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string/jumbo v5, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7ff
    .catch Ljava/lang/Throwable; {:try_start_7ed .. :try_end_7ff} :catch_10d7

    .line 1412
    :cond_7ff
    :goto_7ff
    if-eqz v132, :cond_81d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_81d

    .line 1414
    const-string/jumbo v5, "vold.decrypt"

    const-string/jumbo v6, "null"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "trigger_restart_min_framework"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81d

    .line 1415
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1419
    :cond_81d
    if-eqz v40, :cond_822

    .line 1420
    :try_start_81f
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_822
    .catch Ljava/lang/Throwable; {:try_start_81f .. :try_end_822} :catch_10e4

    .line 1426
    :cond_822
    :goto_822
    if-eqz v72, :cond_827

    .line 1427
    :try_start_824
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_827
    .catch Ljava/lang/Throwable; {:try_start_824 .. :try_end_827} :catch_10f0

    .line 1432
    :cond_827
    :goto_827
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1433
    const-string/jumbo v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v140

    .line 1435
    move-object/from16 v0, v140

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1440
    if-nez v88, :cond_879

    .line 1442
    :try_start_84b
    const-string v5, "SystemServer"

    const-string v6, "Location Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    new-instance v115, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_859
    .catch Ljava/lang/Throwable; {:try_start_84b .. :try_end_859} :catch_10fc

    .line 1444
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .local v115, "location":Lcom/android/server/LocationManagerService;
    :try_start_859
    const-string v5, "location"

    move-object/from16 v0, v115

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_860
    .catch Ljava/lang/Throwable; {:try_start_859 .. :try_end_860} :catch_137f

    move-object/from16 v114, v115

    .line 1450
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    :goto_862
    :try_start_862
    const-string v5, "SystemServer"

    const-string v6, "Country Detector"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    new-instance v74, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_870
    .catch Ljava/lang/Throwable; {:try_start_862 .. :try_end_870} :catch_1109

    .line 1452
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v74, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_870
    const-string v5, "country_detector"

    move-object/from16 v0, v74

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_877
    .catch Ljava/lang/Throwable; {:try_start_870 .. :try_end_877} :catch_137a

    move-object/from16 v73, v74

    .line 1488
    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_879
    :goto_879
    :try_start_879
    const-string v5, "SystemServer"

    const-string v6, "SLocation Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const-string v5, "com.samsung.location.SLocationLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v146

    .line 1490
    .local v146, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSLocationService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v9

    move-object/from16 v0, v146

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v104

    .line 1491
    .local v104, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v104

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v145, v0

    .line 1492
    const-string/jumbo v5, "sec_location"

    move-object/from16 v0, v145

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b0
    .catch Ljava/lang/Throwable; {:try_start_879 .. :try_end_8b0} :catch_1116

    .line 1497
    .end local v104    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v146    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8b0
    if-nez v91, :cond_8c4

    .line 1499
    :try_start_8b2
    const-string v5, "SystemServer"

    const-string v6, "Search Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const-string/jumbo v5, "search"

    new-instance v6, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c4
    .catch Ljava/lang/Throwable; {:try_start_8b2 .. :try_end_8c4} :catch_1135

    .line 1508
    :cond_8c4
    :goto_8c4
    :try_start_8c4
    const-string v5, "SystemServer"

    const-string v6, "DropBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const-string v5, "dropbox"

    new-instance v6, Lcom/android/server/DropBoxManagerService;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/dropbox"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v9}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8dc
    .catch Ljava/lang/Throwable; {:try_start_8c4 .. :try_end_8dc} :catch_1142

    .line 1515
    :goto_8dc
    if-nez v91, :cond_903

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_903

    .line 1518
    :try_start_8eb
    const-string v5, "SystemServer"

    const-string v6, "Wallpaper Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v173, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v173

    invoke-direct {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8f9
    .catch Ljava/lang/Throwable; {:try_start_8eb .. :try_end_8f9} :catch_114f

    .line 1520
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v173, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_8f9
    const-string/jumbo v5, "wallpaper"

    move-object/from16 v0, v173

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_901
    .catch Ljava/lang/Throwable; {:try_start_8f9 .. :try_end_901} :catch_1375

    move-object/from16 v172, v173

    .line 1526
    .end local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_903
    :goto_903
    if-nez v89, :cond_92b

    const-string v5, "0"

    const-string/jumbo v6, "system_init.startaudioservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92b

    .line 1528
    :try_start_914
    const-string v5, "SystemServer"

    const-string v6, "Audio Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    new-instance v48, Landroid/media/AudioService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_922
    .catch Ljava/lang/Throwable; {:try_start_914 .. :try_end_922} :catch_115c

    .line 1530
    .end local v47    # "audioService":Landroid/media/AudioService;
    .local v48, "audioService":Landroid/media/AudioService;
    :try_start_922
    const-string v5, "audio"

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_929
    .catch Ljava/lang/Throwable; {:try_start_922 .. :try_end_929} :catch_1370

    move-object/from16 v47, v48

    .line 1536
    .end local v48    # "audioService":Landroid/media/AudioService;
    .restart local v47    # "audioService":Landroid/media/AudioService;
    :cond_92b
    :goto_92b
    if-nez v91, :cond_936

    .line 1537
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1540
    :cond_936
    if-nez v89, :cond_94b

    .line 1542
    :try_start_938
    const-string v5, "SystemServer"

    const-string v6, "Wired Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    new-instance v5, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v107

    invoke-direct {v5, v4, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v107

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_94b
    .catch Ljava/lang/Throwable; {:try_start_938 .. :try_end_94b} :catch_1169

    .line 1551
    :cond_94b
    :goto_94b
    if-nez v91, :cond_986

    .line 1552
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.host"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_965

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96e

    .line 1556
    :cond_965
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1560
    :cond_96e
    :try_start_96e
    const-string v5, "SystemServer"

    const-string v6, "Serial Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    new-instance v150, Lcom/android/server/SerialService;

    move-object/from16 v0, v150

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_97c
    .catch Ljava/lang/Throwable; {:try_start_96e .. :try_end_97c} :catch_1176

    .line 1563
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .local v150, "serial":Lcom/android/server/SerialService;
    :try_start_97c
    const-string/jumbo v5, "serial"

    move-object/from16 v0, v150

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_984
    .catch Ljava/lang/Throwable; {:try_start_97c .. :try_end_984} :catch_136b

    move-object/from16 v149, v150

    .line 1571
    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    :cond_986
    :goto_986
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableSUA"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a3

    .line 1574
    :try_start_992
    const-string v5, "SystemServer"

    const-string v6, "KiesUsb Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const-string v5, "kiesusb"

    new-instance v6, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v6, v4}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9a3
    .catch Ljava/lang/Throwable; {:try_start_992 .. :try_end_9a3} :catch_1182

    .line 1582
    :cond_9a3
    :goto_9a3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1584
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1588
    if-nez v91, :cond_9ff

    .line 1589
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d5

    .line 1590
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1593
    :cond_9d5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9ea

    .line 1594
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1597
    :cond_9ea
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.voice_recognizers"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9ff

    .line 1598
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1602
    :cond_9ff
    const-string/jumbo v5, "ro.SecEDS.enable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1603
    .local v38, "SecEDSEnable":Ljava/lang/String;
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const-string v5, "false"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a42

    .line 1607
    :try_start_a2a
    const-string v5, "SystemServer"

    const-string v6, "Starting SecEDSEnable Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const/16 v96, 0x0

    .line 1609
    .local v96, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "com.android.server.SecExternalDisplayService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v96

    .line 1610
    if-nez v96, :cond_118e

    .line 1611
    const-string v5, "SystemServer"

    const-string v6, "eds Service not exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a42
    .catch Ljava/lang/Throwable; {:try_start_a2a .. :try_end_a42} :catch_11bc

    .line 1627
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a42
    :goto_a42
    :try_start_a42
    const-string v5, "SystemServer"

    const-string v6, "DiskStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const-string v5, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a53
    .catch Ljava/lang/Throwable; {:try_start_a42 .. :try_end_a53} :catch_11c8

    .line 1645
    :goto_a53
    :try_start_a53
    const-string v5, "SystemServer"

    const-string v6, "mDNIe Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const/16 v124, 0x0

    .line 1647
    .local v124, "mdnieClass":Ljava/lang/Class;
    const-string v5, "com.samsung.android.mdnie.MdnieManagerService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v124

    .line 1648
    if-nez v124, :cond_11d5

    .line 1649
    const-string v5, "SystemServer"

    const-string v6, "Mdnie Service does not exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6b
    .catch Ljava/lang/Throwable; {:try_start_a53 .. :try_end_a6b} :catch_11fa

    .line 1662
    .end local v124    # "mdnieClass":Ljava/lang/Class;
    :goto_a6b
    :try_start_a6b
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v141

    .line 1663
    .restart local v141    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v141, :cond_1206

    .line 1665
    const/16 v110, 0x1

    .line 1679
    .local v110, "isAddService":Z
    if-eqz v110, :cond_a89

    .line 1680
    const-string v5, "SystemServer"

    const-string v6, "Starting SpenGestureManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const-string/jumbo v5, "spengestureservice"

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v179

    invoke-direct {v6, v4, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a89
    .catch Ljava/lang/Throwable; {:try_start_a6b .. :try_end_a89} :catch_120f

    .line 1705
    .end local v110    # "isAddService":Z
    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_a89
    :goto_a89
    :try_start_a89
    const-string v5, "SystemServer"

    const-string v6, "QuickConnect Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    new-instance v144, Lcom/android/server/QuickConnectService;

    move-object/from16 v0, v144

    invoke-direct {v0, v4}, Lcom/android/server/QuickConnectService;-><init>(Landroid/content/Context;)V
    :try_end_a97
    .catch Ljava/lang/Throwable; {:try_start_a89 .. :try_end_a97} :catch_121c

    .line 1707
    .end local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    .local v144, "quickconnect":Lcom/android/server/QuickConnectService;
    :try_start_a97
    const-string/jumbo v5, "quickconnect"

    move-object/from16 v0, v144

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a9f
    .catch Ljava/lang/Throwable; {:try_start_a97 .. :try_end_a9f} :catch_1366

    move-object/from16 v143, v144

    .line 1717
    .end local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    :goto_aa1
    :try_start_aa1
    const-string v5, "SystemServer"

    const-string v6, "SamplingProfiler Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const-string/jumbo v5, "samplingprofiler"

    new-instance v6, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v6, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ab3
    .catch Ljava/lang/Throwable; {:try_start_aa1 .. :try_end_ab3} :catch_1229

    .line 1724
    :goto_ab3
    if-nez v90, :cond_ac5

    .line 1726
    :try_start_ab5
    const-string v5, "SystemServer"

    const-string v6, "NetworkTimeUpdateService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    new-instance v139, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v139

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_ac3
    .catch Ljava/lang/Throwable; {:try_start_ab5 .. :try_end_ac3} :catch_1236

    .end local v138    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v139, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v138, v139

    .line 1741
    .end local v139    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v138    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_ac5
    :goto_ac5
    if-nez v89, :cond_ade

    .line 1743
    :try_start_ac7
    const-string v5, "SystemServer"

    const-string v6, "CommonTimeManagementService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    new-instance v62, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v62

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_ad5
    .catch Ljava/lang/Throwable; {:try_start_ac7 .. :try_end_ad5} :catch_1243

    .line 1745
    .end local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v62, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_ad5
    const-string v5, "commontime_management"

    move-object/from16 v0, v62

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_adc
    .catch Ljava/lang/Throwable; {:try_start_ad5 .. :try_end_adc} :catch_1361

    move-object/from16 v61, v62

    .line 1751
    .end local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_ade
    :goto_ade
    if-nez v90, :cond_aec

    .line 1753
    :try_start_ae0
    const-string v5, "SystemServer"

    const-string v6, "CertBlacklister"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    new-instance v5, Lcom/android/server/CertBlacklister;

    invoke-direct {v5, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_aec
    .catch Ljava/lang/Throwable; {:try_start_ae0 .. :try_end_aec} :catch_1250

    .line 1760
    :cond_aec
    :goto_aec
    if-nez v91, :cond_af7

    .line 1762
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1765
    :cond_af7
    if-nez v91, :cond_b12

    if-nez v86, :cond_b12

    .line 1767
    :try_start_afb
    const-string v5, "SystemServer"

    const-string v6, "Assets Atlas Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    new-instance v46, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_b09
    .catch Ljava/lang/Throwable; {:try_start_afb .. :try_end_b09} :catch_125d

    .line 1769
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v46, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_b09
    const-string v5, "assetatlas"

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b10
    .catch Ljava/lang/Throwable; {:try_start_b09 .. :try_end_b10} :catch_135c

    move-object/from16 v45, v46

    .line 1775
    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_b12
    :goto_b12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.print"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b27

    .line 1776
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.print.PrintManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1779
    :cond_b27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1781
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.hdmi.cec"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4e

    .line 1784
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1787
    :cond_b4e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.live_tv"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b63

    .line 1788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1791
    :cond_b63
    if-nez v91, :cond_b98

    .line 1793
    :try_start_b65
    const-string v5, "SystemServer"

    const-string v6, "Media Router Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    new-instance v127, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_b73
    .catch Ljava/lang/Throwable; {:try_start_b65 .. :try_end_b73} :catch_126a

    .line 1795
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v127, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_b73
    const-string v5, "media_router"

    move-object/from16 v0, v127

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b7a
    .catch Ljava/lang/Throwable; {:try_start_b73 .. :try_end_b7a} :catch_1357

    move-object/from16 v126, v127

    .line 1800
    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_b7c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1802
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1805
    :try_start_b8e
    const-string v5, "SystemServer"

    const-string v6, "BackgroundDexOptService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_b98
    .catch Ljava/lang/Throwable; {:try_start_b8e .. :try_end_b98} :catch_1277

    .line 1815
    :cond_b98
    :goto_b98
    :try_start_b98
    const-string v5, "SystemServer"

    const-string v6, "BackgroundCompactionService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    .line 1817
    invoke-static {v4}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_ba6
    .catch Ljava/lang/Throwable; {:try_start_b98 .. :try_end_ba6} :catch_1284

    .line 1823
    :goto_ba6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1852
    const-string/jumbo v5, "ro.bluetooth.wipower"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .line 1854
    .local v112, "isWipowerEnabled":Z
    if-eqz v112, :cond_129e

    .line 1856
    :try_start_bb9
    const-string/jumbo v39, "wbc_service"

    .line 1857
    .local v39, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v5, "SystemServer"

    const-string v6, "WipowerBatteryControl Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    new-instance v176, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v176

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1862
    .local v176, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v176

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v175

    .line 1863
    .local v175, "wbcClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v175

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v78

    .line 1864
    .local v78, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v78

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v177

    .line 1865
    .local v177, "wbcObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded WbcService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const-string/jumbo v5, "wbc_service"

    check-cast v177, Landroid/os/IBinder;

    .end local v177    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v177

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c03
    .catch Ljava/lang/Throwable; {:try_start_bb9 .. :try_end_c03} :catch_1291

    .line 1874
    .end local v39    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v175    # "wbcClass":Ljava/lang/Class;
    .end local v176    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_c03
    if-eqz v82, :cond_c4b

    .line 1876
    :try_start_c05
    const-string v5, "SystemServer"

    const-string v6, "Digital Pen Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    new-instance v84, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v84

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1880
    .local v84, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v84

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v83

    .line 1882
    .local v83, "digitalPenClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v83

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v78

    .line 1883
    .restart local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v78

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v85

    .line 1884
    .local v85, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded DigitalPenService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string v5, "DigitalPen"

    check-cast v85, Landroid/os/IBinder;

    .end local v85    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v85

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c4b
    .catch Ljava/lang/Throwable; {:try_start_c05 .. :try_end_c4b} :catch_12a7

    .line 1894
    .end local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v83    # "digitalPenClass":Ljava/lang/Class;
    .end local v84    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    :cond_c4b
    :goto_c4b
    :try_start_c4b
    const-string v5, "SystemServer"

    const-string v6, "MiniModeAppManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .line 1897
    .local v109, "instructionSet":Ljava/lang/String;
    new-instance v55, Ldalvik/system/DexClassLoader;

    const-string v5, "/system/framework/minimode.jar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/dalvik-cache/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v109

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object/from16 v0, v55

    invoke-direct {v0, v5, v6, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1899
    .restart local v55    # "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .line 1900
    .local v36, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v37

    .line 1901
    .local v37, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v6, "mini_mode_app_manager"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cad
    .catch Ljava/lang/Throwable; {:try_start_c4b .. :try_end_cad} :catch_12b4

    .line 1910
    .end local v36    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v37    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v109    # "instructionSet":Ljava/lang/String;
    :goto_cad
    :try_start_cad
    const-string v5, "SystemServer"

    const-string v6, "VoIPInterfaceManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const-string/jumbo v5, "voip"

    new-instance v6, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v6, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cbf
    .catch Ljava/lang/Throwable; {:try_start_cad .. :try_end_cbf} :catch_12c0

    .line 1918
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v112    # "isWipowerEnabled":Z
    :goto_cbf
    if-nez v91, :cond_cca

    .line 1919
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1923
    :cond_cca
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v5

    if-eqz v5, :cond_cde

    .line 1925
    :try_start_cd0
    new-instance v43, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 1926
    .local v43, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v5, "SamsungAppDisabler"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cde
    .catch Ljava/lang/Throwable; {:try_start_cd0 .. :try_end_cde} :catch_12ca

    .line 1935
    .end local v43    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_cde
    :goto_cde
    :try_start_cde
    const-string v5, "SystemServer"

    const-string v6, "Lpnet Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const-string v5, "lpnet"

    new-instance v6, Lcom/android/server/LpnetManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/LpnetManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cef
    .catch Ljava/lang/Throwable; {:try_start_cde .. :try_end_cef} :catch_12d6

    .line 1945
    :goto_cef
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v35

    .line 1946
    .local v35, "safeMode":Z
    if-eqz v35, :cond_12e2

    .line 1947
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1949
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1956
    :goto_d03
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v129

    .end local v129    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v129, Lcom/android/server/MmsServiceBroker;

    .line 1976
    .restart local v129    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_d0f
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_d12
    .catch Ljava/lang/Throwable; {:try_start_d0f .. :try_end_d12} :catch_12eb

    .line 1981
    :goto_d12
    if-eqz v116, :cond_d17

    .line 1983
    :try_start_d14
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_d17
    .catch Ljava/lang/Throwable; {:try_start_d14 .. :try_end_d17} :catch_12f7

    .line 1990
    :cond_d17
    :goto_d17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1995
    if-eqz v99, :cond_d35

    .line 1996
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1997
    const-string v5, "SystemServer"

    const-string v6, "enterprisePolicy systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_d35
    :try_start_d35
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_d38
    .catch Ljava/lang/Throwable; {:try_start_d35 .. :try_end_d38} :catch_1303

    .line 2007
    :goto_d38
    if-eqz v35, :cond_d41

    .line 2008
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2014
    :cond_d41
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v63

    .line 2015
    .local v63, "config":Landroid/content/res/Configuration;
    new-instance v128, Landroid/util/DisplayMetrics;

    invoke-direct/range {v128 .. v128}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2016
    .local v128, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v171

    check-cast v171, Landroid/view/WindowManager;

    .line 2017
    .local v171, "w":Landroid/view/WindowManager;
    invoke-interface/range {v171 .. v171}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, v128

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2018
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v63

    move-object/from16 v1, v128

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2022
    :try_start_d67
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_d76
    .catch Ljava/lang/Throwable; {:try_start_d67 .. :try_end_d76} :catch_130f

    .line 2029
    :goto_d76
    :try_start_d76
    const-string v5, "SystemServer"

    const-string v6, "LightsService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mLightsService:Lcom/android/server/lights/LightsService;

    invoke-virtual {v5}, Lcom/android/server/lights/LightsService;->systemReady()V
    :try_end_d84
    .catch Ljava/lang/Throwable; {:try_start_d76 .. :try_end_d84} :catch_131b

    .line 2036
    :goto_d84
    :try_start_d84
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_d8b
    .catch Ljava/lang/Throwable; {:try_start_d84 .. :try_end_d8b} :catch_1327

    .line 2043
    :goto_d8b
    :try_start_d8b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_d98
    .catch Ljava/lang/Throwable; {:try_start_d8b .. :try_end_d98} :catch_1333

    .line 2049
    :goto_d98
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v167

    .line 2050
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db0

    .line 2052
    :try_start_dad
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_db0
    .catch Ljava/lang/Throwable; {:try_start_dad .. :try_end_db0} :catch_133f

    .line 2059
    :cond_db0
    :goto_db0
    :try_start_db0
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_db3
    .catch Ljava/lang/Throwable; {:try_start_db0 .. :try_end_db3} :catch_134b

    .line 2065
    :goto_db3
    move-object/from16 v12, v132

    .line 2066
    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v8

    .line 2067
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v7

    .line 2068
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v3

    .line 2069
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v64

    .line 2070
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v135

    .line 2071
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v172

    .line 2072
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v105

    .line 2073
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v114

    .line 2074
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v145

    .line 2075
    .local v23, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v24, v73

    .line 2076
    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v138

    .line 2077
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v61

    .line 2078
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v164

    .line 2079
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v153

    .line 2081
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v170

    .line 2083
    .local v28, "vrManagerF":Ljava/lang/Object;
    move-object/from16 v29, v45

    .line 2084
    .local v29, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v30, v107

    .line 2085
    .local v30, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v31, v155

    .line 2086
    .local v31, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v126

    .line 2087
    .local v32, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v47

    .line 2088
    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v130, v129

    .line 2090
    .local v130, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v33, v75

    .line 2094
    .local v33, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v34, v60

    .line 2102
    .local v34, "cocktailBarF":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/SystemServer$2;

    move-object/from16 v10, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v35}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2280
    return-void

    .line 643
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "sLocationF":Landroid/os/IBinder;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "vrManagerF":Ljava/lang/Object;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v34    # "cocktailBarF":Ljava/lang/Object;
    .end local v35    # "safeMode":Z
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .end local v63    # "config":Landroid/content/res/Configuration;
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v128    # "metrics":Landroid/util/DisplayMetrics;
    .end local v130    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v140    # "notification":Landroid/app/INotificationManager;
    .end local v145    # "sLocation":Landroid/os/IBinder;
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v171    # "w":Landroid/view/WindowManager;
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_df1
    move-exception v95

    .line 644
    .local v95, "e":Ljava/lang/Throwable;
    :try_start_df2
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dfb
    .catch Ljava/lang/RuntimeException; {:try_start_df2 .. :try_end_dfb} :catch_dfd

    goto/16 :goto_ef

    .line 951
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_dfd
    move-exception v95

    move-object/from16 v155, v156

    .line 952
    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "e":Ljava/lang/RuntimeException;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_e00
    const-string v5, "System"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-string v5, "System"

    const-string v6, "************ Failure starting core service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_471

    .line 657
    .end local v95    # "e":Ljava/lang/RuntimeException;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_e12
    move-exception v95

    .line 658
    .local v95, "e":Ljava/lang/Throwable;
    :try_start_e13
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Persona Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_117

    .line 671
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e1e
    move-exception v95

    .line 672
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_e1f
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Account Manager"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_136

    .line 682
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v121    # "mProductName":Ljava/lang/String;
    :catch_e2a
    move-exception v95

    .line 683
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting KT UCA Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e34
    .catch Ljava/lang/RuntimeException; {:try_start_e13 .. :try_end_e34} :catch_dfd

    goto/16 :goto_15e

    .line 689
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_e36
    const/4 v5, 0x0

    goto/16 :goto_16d

    .line 699
    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_e39
    move-exception v95

    .line 700
    .restart local v95    # "e":Ljava/lang/Throwable;
    :try_start_e3a
    const-string v5, "SystemServer"

    const-string v6, "Failure starting DirEncryptService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e43
    .catch Ljava/lang/RuntimeException; {:try_start_e3a .. :try_end_e43} :catch_13d0

    .line 701
    const/16 v79, 0x0

    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_185

    .line 709
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e47
    move-exception v95

    .line 711
    .restart local v95    # "e":Ljava/lang/Throwable;
    :try_start_e48
    const-string v5, "SystemServer"

    const-string v6, "Failed to add Reactive Service."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    .line 719
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e51
    move-exception v95

    .line 721
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failed to add EngineeringModeService."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1a7

    .line 731
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e5e
    move-exception v95

    .line 732
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Registration of denial service failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e66
    .catch Ljava/lang/RuntimeException; {:try_start_e48 .. :try_end_e66} :catch_dfd

    goto/16 :goto_1c7

    .line 757
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "timaEnabled":Z
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_e68
    move-exception v95

    .line 758
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_e69
    :try_start_e69
    const-string/jumbo v5, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_224

    .line 951
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v157    # "timaEnabled":Z
    :catch_e75
    move-exception v95

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_e00

    .line 768
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "timaEnabled":Z
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_e7b
    move-exception v95

    .line 769
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_239

    .line 781
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e88
    move-exception v95

    .line 782
    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v6, "Unable to add TimaKesytore provider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_260

    .line 796
    .end local v95    # "e":Ljava/lang/Exception;
    .restart local v97    # "enabledCEP":Z
    .restart local v98    # "enabledMDM":Z
    :catch_e95
    move-exception v95

    .line 797
    .local v95, "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27f

    .line 800
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_ea1
    const-string v5, "SystemServer"

    const-string v6, "MDM is enabled, but CEP is not enabled"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27f

    .line 812
    .end local v97    # "enabledCEP":Z
    :catch_eaa
    move-exception v95

    .line 813
    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string/jumbo v6, "ssrm.jar not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2ca

    .line 832
    .end local v95    # "e":Ljava/lang/Exception;
    :catch_eb8
    move-exception v95

    .line 833
    .restart local v95    # "e":Ljava/lang/Exception;
    const-string v5, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ec2
    .catch Ljava/lang/RuntimeException; {:try_start_e69 .. :try_end_ec2} :catch_e75

    goto/16 :goto_317

    .line 871
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Exception;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v174    # "watchdog":Lcom/android/server/Watchdog;
    :catch_ec4
    move-exception v95

    .line 872
    .local v95, "e":Ljava/lang/Throwable;
    :try_start_ec5
    const-string v5, "SystemServer"

    const-string v6, "Failure starting BarBeam Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d0

    .line 951
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_ed0
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_e00

    .line 887
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :cond_edb
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_3f0

    :cond_edf
    const/4 v5, 0x0

    goto/16 :goto_3f7

    .line 919
    :cond_ee2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ef2

    .line 920
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (factory test)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_449

    .line 921
    :cond_ef2
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f07

    .line 923
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_449

    .line 924
    :cond_f07
    if-eqz v87, :cond_f12

    .line 925
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Service disabled by config"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_449

    .line 927
    :cond_f12
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-instance v51, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f20
    .catch Ljava/lang/RuntimeException; {:try_start_ec5 .. :try_end_f20} :catch_ed0

    .line 929
    .end local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v51, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_f20
    const-string v5, "bluetooth_manager"

    move-object/from16 v0, v51

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 932
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Secure Mode Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v5, "bluetooth_secure_mode_manager"

    new-instance v6, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v6, v4}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f38
    .catch Ljava/lang/RuntimeException; {:try_start_f20 .. :try_end_f38} :catch_13e9

    move-object/from16 v50, v51

    .end local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_449

    .line 943
    :catch_f3c
    move-exception v95

    .line 944
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_f3d
    :try_start_f3d
    const-string v5, "SystemServer"

    const-string v6, "Failure starting RCP Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f46
    .catch Ljava/lang/RuntimeException; {:try_start_f3d .. :try_end_f46} :catch_ed0

    goto/16 :goto_461

    .line 987
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v98    # "enabledMDM":Z
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "timaEnabled":Z
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v140    # "notification":Landroid/app/INotificationManager;
    .restart local v145    # "sLocation":Landroid/os/IBinder;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_f48
    move-exception v95

    .line 988
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_f49
    const-string/jumbo v5, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ad

    .line 995
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f55
    move-exception v95

    .line 996
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4be

    .line 1003
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f62
    move-exception v95

    .line 1004
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c1

    .line 1009
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f6e
    move-exception v95

    .line 1010
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c8

    .line 1034
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f7b
    move-exception v95

    .line 1035
    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52f

    .line 1047
    .end local v95    # "e":Ljava/lang/Exception;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "cryptState":Ljava/lang/String;
    :cond_f87
    if-nez v91, :cond_55c

    .line 1048
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v142

    .line 1049
    .local v142, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v5, "com.sec.feature.cover.flip"

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fa1

    const-string v5, "com.sec.feature.cover.sview"

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55c

    .line 1052
    :cond_fa1
    :try_start_fa1
    const-string v5, "SystemServer"

    const-string v6, "CoverManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v76, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v76

    move-object/from16 v1, v179

    move-object/from16 v2, v107

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_fb3
    .catch Ljava/lang/Throwable; {:try_start_fa1 .. :try_end_fb3} :catch_fbe

    .line 1054
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v76, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_fb3
    const-string v5, "cover"

    move-object/from16 v0, v76

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fba
    .catch Ljava/lang/Throwable; {:try_start_fb3 .. :try_end_fba} :catch_13b9

    move-object/from16 v75, v76

    .line 1057
    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_55c

    .line 1055
    :catch_fbe
    move-exception v95

    .line 1056
    .local v95, "e":Ljava/lang/Throwable;
    :goto_fbf
    const-string v5, "SystemServer"

    const-string v6, "Failure starting CoverManager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_55c

    .line 1081
    .end local v77    # "cryptState":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_fca
    move-exception v95

    .line 1082
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57c

    .line 1097
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_fd6
    move-exception v95

    .line 1098
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_fd7
    const-string/jumbo v5, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5ab

    .line 1109
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_fe3
    move-exception v95

    .line 1110
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5be

    .line 1131
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_ff0
    move-exception v95

    .line 1132
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_ff1
    const-string/jumbo v5, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d7

    .line 1150
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_ffd
    move-exception v95

    .line 1151
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_ffe
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Harmony EAS service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_616

    .line 1160
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1009
    move-exception v95

    .line 1161
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_100a
    const-string/jumbo v5, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62e

    .line 1172
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1016
    move-exception v95

    .line 1173
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1017
    const-string v5, "SystemServer"

    const-string v6, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_653

    .line 1183
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1022
    move-exception v95

    .line 1184
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1023
    const-string/jumbo v5, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66f

    .line 1193
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_102f
    move-exception v95

    .line 1194
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_682

    .line 1204
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_103c
    move-exception v95

    .line 1205
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_695

    .line 1215
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1049
    move-exception v95

    .line 1216
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a7

    .line 1228
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1056
    move-exception v95

    .line 1229
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6bf

    .line 1238
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1062
    move-exception v95

    .line 1239
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1063
    const-string/jumbo v5, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d9

    .line 1248
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_106f
    move-exception v95

    .line 1249
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1070
    const-string/jumbo v5, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f2

    .line 1256
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_107c
    move-exception v95

    .line 1257
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_107d
    const-string/jumbo v5, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70b

    .line 1267
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1089
    move-exception v95

    move-object/from16 v3, v134

    .line 1268
    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_108c
    const-string/jumbo v5, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_729

    .line 1282
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_1098
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto/16 :goto_762

    .line 1293
    :catch_10a3
    move-exception v95

    .line 1294
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_10a4
    const-string/jumbo v5, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_783

    .line 1308
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10b0
    move-exception v95

    .line 1309
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ce

    .line 1386
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10bd
    move-exception v95

    .line 1387
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7e1

    .line 1392
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10ca
    move-exception v95

    .line 1393
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7eb

    .line 1402
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10d7
    move-exception v95

    .line 1403
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ff

    .line 1421
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10e4
    move-exception v95

    .line 1422
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_822

    .line 1428
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10f0
    move-exception v95

    .line 1429
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_827

    .line 1445
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10fc
    move-exception v95

    .line 1446
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_10fd
    const-string/jumbo v5, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_862

    .line 1453
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1109
    move-exception v95

    .line 1454
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_110a
    const-string/jumbo v5, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_879

    .line 1493
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1116
    move-exception v95

    .line 1494
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8b0

    .line 1502
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1135
    move-exception v95

    .line 1503
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8c4

    .line 1511
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1142
    move-exception v95

    .line 1512
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8dc

    .line 1521
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_114f
    move-exception v95

    .line 1522
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1150
    const-string/jumbo v5, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_903

    .line 1531
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_115c
    move-exception v95

    .line 1532
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_115d
    const-string/jumbo v5, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_92b

    .line 1546
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1169
    move-exception v95

    .line 1547
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_94b

    .line 1564
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1176
    move-exception v95

    .line 1565
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1177
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SerialService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_986

    .line 1576
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1182
    move-exception v95

    .line 1577
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9a3

    .line 1615
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_118e
    :try_start_118e
    const-string v5, "SystemServer"

    const-string v6, "edsclass Service exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Class;

    move-object/from16 v44, v0

    .line 1617
    .local v44, "arg":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v44, v5

    .line 1618
    move-object/from16 v0, v96

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v66

    .line 1619
    .local v66, "constructor":Ljava/lang/reflect/Constructor;
    const-string v6, "SecExternalDisplayService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11ba
    .catch Ljava/lang/Throwable; {:try_start_118e .. :try_end_11ba} :catch_11bc

    goto/16 :goto_a42

    .line 1621
    .end local v44    # "arg":[Ljava/lang/Class;
    .end local v66    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_11bc
    move-exception v95

    .line 1622
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting eds Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a42

    .line 1629
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_11c8
    move-exception v95

    .line 1630
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a53

    .line 1651
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v124    # "mdnieClass":Ljava/lang/Class;
    :cond_11d5
    const/4 v5, 0x1

    :try_start_11d6
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v124

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v66

    .line 1652
    .restart local v66    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v125

    check-cast v125, Landroid/os/IBinder;

    .line 1653
    .local v125, "mdnieService":Landroid/os/IBinder;
    const-string v5, "mDNIe"

    move-object/from16 v0, v125

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11f8
    .catch Ljava/lang/Throwable; {:try_start_11d6 .. :try_end_11f8} :catch_11fa

    goto/16 :goto_a6b

    .line 1655
    .end local v66    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v124    # "mdnieClass":Ljava/lang/Class;
    .end local v125    # "mdnieService":Landroid/os/IBinder;
    :catch_11fa
    move-exception v95

    .line 1656
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a6b

    .line 1684
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_1206
    :try_start_1206
    const-string v5, "SystemServer"

    const-string v6, "Failed to start SpenGestureManagerService : PackageManager is null!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120d
    .catch Ljava/lang/Throwable; {:try_start_1206 .. :try_end_120d} :catch_120f

    goto/16 :goto_a89

    .line 1686
    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :catch_120f
    move-exception v95

    .line 1687
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a89

    .line 1708
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_121c
    move-exception v95

    .line 1709
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_121d
    const-string/jumbo v5, "starting QuickConnect Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aa1

    .line 1720
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1229
    move-exception v95

    .line 1721
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ab3

    .line 1728
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1236
    move-exception v95

    .line 1729
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ac5

    .line 1746
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1243
    move-exception v95

    .line 1747
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1244
    const-string/jumbo v5, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ade

    .line 1755
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1250
    move-exception v95

    .line 1756
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aec

    .line 1770
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_125d
    move-exception v95

    .line 1771
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_125e
    const-string/jumbo v5, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b12

    .line 1796
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_126a
    move-exception v95

    .line 1797
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_126b
    const-string/jumbo v5, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b7c

    .line 1807
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1277
    move-exception v95

    .line 1808
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b98

    .line 1818
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1284
    move-exception v95

    .line 1819
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ba6

    .line 1867
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v112    # "isWipowerEnabled":Z
    :catch_1291
    move-exception v95

    .line 1868
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c03

    .line 1871
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_129e
    const-string v5, "SystemServer"

    const-string v6, "Wipower not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c03

    .line 1886
    :catch_12a7
    move-exception v95

    .line 1887
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c4b

    .line 1903
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12b4
    move-exception v95

    .line 1904
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cad

    .line 1912
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12c0
    move-exception v95

    .line 1913
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cbf

    .line 1927
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v112    # "isWipowerEnabled":Z
    :catch_12ca
    move-exception v95

    .line 1928
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cde

    .line 1937
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12d6
    move-exception v95

    .line 1938
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Lpnet Manager Service "

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cef

    .line 1952
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v35    # "safeMode":Z
    :cond_12e2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_d03

    .line 1977
    :catch_12eb
    move-exception v95

    .line 1978
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d12

    .line 1984
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12f7
    move-exception v95

    .line 1985
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d17

    .line 2003
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1303
    move-exception v95

    .line 2004
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d38

    .line 2023
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v63    # "config":Landroid/content/res/Configuration;
    .restart local v128    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v171    # "w":Landroid/view/WindowManager;
    :catch_130f
    move-exception v95

    .line 2024
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d76

    .line 2031
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_131b
    move-exception v95

    .line 2032
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d84

    .line 2037
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1327
    move-exception v95

    .line 2038
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d8b

    .line 2044
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1333
    move-exception v95

    .line 2045
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d98

    .line 2053
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_133f
    move-exception v95

    .line 2054
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_db0

    .line 2060
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_134b
    move-exception v95

    .line 2061
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_db3

    .line 1796
    .end local v35    # "safeMode":Z
    .end local v63    # "config":Landroid/content/res/Configuration;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v128    # "metrics":Landroid/util/DisplayMetrics;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v171    # "w":Landroid/view/WindowManager;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_1357
    move-exception v95

    move-object/from16 v126, v127

    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_126b

    .line 1770
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_135c
    move-exception v95

    move-object/from16 v45, v46

    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_125e

    .line 1746
    .end local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_1361
    move-exception v95

    move-object/from16 v61, v62

    .end local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_1244

    .line 1708
    .end local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    :catch_1366
    move-exception v95

    move-object/from16 v143, v144

    .end local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    goto/16 :goto_121d

    .line 1564
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .restart local v150    # "serial":Lcom/android/server/SerialService;
    :catch_136b
    move-exception v95

    move-object/from16 v149, v150

    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_1177

    .line 1531
    .end local v47    # "audioService":Landroid/media/AudioService;
    .restart local v48    # "audioService":Landroid/media/AudioService;
    :catch_1370
    move-exception v95

    move-object/from16 v47, v48

    .end local v48    # "audioService":Landroid/media/AudioService;
    .restart local v47    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_115d

    .line 1521
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_1375
    move-exception v95

    move-object/from16 v172, v173

    .end local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_1150

    .line 1453
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_137a
    move-exception v95

    move-object/from16 v73, v74

    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_110a

    .line 1445
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    :catch_137f
    move-exception v95

    move-object/from16 v114, v115

    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_10fd

    .line 1293
    .end local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_1384
    move-exception v95

    move-object/from16 v64, v65

    .end local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_10a4

    .line 1267
    :catch_1389
    move-exception v95

    goto/16 :goto_108c

    .line 1256
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_138c
    move-exception v95

    move-object/from16 v7, v137

    .end local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_107d

    .line 1248
    .end local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_1391
    move-exception v95

    move-object/from16 v135, v136

    .end local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_1070

    .line 1238
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_1396
    move-exception v95

    move-object/from16 v164, v165

    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_1063

    .line 1183
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_139b
    move-exception v95

    move-object/from16 v153, v154

    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_1023

    .line 1172
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_13a0
    move-exception v95

    move-object/from16 v99, v100

    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_1017

    .line 1160
    .end local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_13a5
    move-exception v95

    move-object/from16 v147, v148

    .end local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_100a

    .line 1150
    .end local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_13aa
    move-exception v95

    move-object/from16 v118, v119

    .end local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_ffe

    .line 1131
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_13af
    move-exception v95

    move-object/from16 v116, v117

    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_ff1

    .line 1097
    .end local v132    # "mountService":Lcom/android/server/MountService;
    .restart local v133    # "mountService":Lcom/android/server/MountService;
    :catch_13b4
    move-exception v95

    move-object/from16 v132, v133

    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_fd7

    .line 1055
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "cryptState":Ljava/lang/String;
    .restart local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_13b9
    move-exception v95

    move-object/from16 v75, v76

    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_fbf

    .line 1018
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v77    # "cryptState":Ljava/lang/String;
    .end local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_13be
    move-exception v5

    goto/16 :goto_4db

    .line 987
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_13c1
    move-exception v95

    move-object/from16 v105, v106

    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_f49

    .line 951
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v140    # "notification":Landroid/app/INotificationManager;
    .end local v145    # "sLocation":Landroid/os/IBinder;
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_13c6
    move-exception v95

    goto/16 :goto_e00

    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_13c9
    move-exception v95

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v40, v41

    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_e00

    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v121    # "mProductName":Ljava/lang/String;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_13d0
    move-exception v95

    move-object/from16 v79, v80

    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_e00

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "timaEnabled":Z
    .restart local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_13d7
    move-exception v95

    move-object/from16 v160, v161

    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_e00

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "enabledMDM":Z
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_13e0
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_e00

    .end local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v174    # "watchdog":Lcom/android/server/Watchdog;
    :catch_13e9
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v50, v51

    .end local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_e00

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_13f6
    move-exception v95

    move-object/from16 v122, v123

    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_e00

    .line 943
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1403
    move-exception v95

    move-object/from16 v122, v123

    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_f3d

    .line 757
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v98    # "enabledMDM":Z
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "timaService":Lcom/android/server/TimaService;
    :catch_1408
    move-exception v95

    move-object/from16 v160, v161

    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_e69

    .line 671
    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v157    # "timaEnabled":Z
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    :catch_140d
    move-exception v95

    move-object/from16 v40, v41

    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_e1f

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v140    # "notification":Landroid/app/INotificationManager;
    .restart local v145    # "sLocation":Landroid/os/IBinder;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_1412
    move-object/from16 v3, v134

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_7eb

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_1416
    move-object/from16 v3, v134

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_cbf
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2284
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2287
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2288
    return-void
.end method
