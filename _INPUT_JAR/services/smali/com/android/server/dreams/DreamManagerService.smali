.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$LocalService;,
        Lcom/android/server/dreams/DreamManagerService$BinderService;,
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/dreams/DreamController;

.field private final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field private mCurrentDreamCanDoze:Z

.field private mCurrentDreamDozeScreenBrightness:I

.field private mCurrentDreamDozeScreenState:I

.field private mCurrentDreamIsDozing:Z

.field private mCurrentDreamIsTest:Z

.field private mCurrentDreamIsWaking:Z

.field private mCurrentDreamName:Landroid/content/ComponentName;

.field private mCurrentDreamToken:Landroid/os/Binder;

.field private mCurrentDreamUserId:I

.field private final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 441
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 643
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    .line 92
    new-instance v0, Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 94
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 95
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 96
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x40

    const-string v2, "DreamManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Landroid/content/ComponentName;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    # .registers 4
    # .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    # .param p1, "x1"    # Landroid/os/IBinder;
    # .param p2, "x2"    # I
    # .param p3, "x3"    # I

    # .prologue
    # .line 65
    # invoke-direct {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 411
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_2f
    return-void
.end method

.method private chooseDreamForUser(ZI)Landroid/content/ComponentName;
    .registers 7
    .param p1, "doze"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 251
    if-eqz p1, :cond_10

    .line 252
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 253
    .local v0, "dozeComponent":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 256
    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :goto_d
    return-object v0

    .restart local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_e
    move-object v0, v2

    .line 253
    goto :goto_d

    .line 255
    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    .line 256
    .local v1, "dreams":[Landroid/content/ComponentName;
    if-eqz v1, :cond_1c

    array-length v3, v1

    if-eqz v3, :cond_1c

    const/4 v2, 0x0

    aget-object v2, v1, v2

    :cond_1c
    move-object v0, v2

    goto :goto_d
.end method

.method private cleanupDreamLocked()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 394
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 395
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 396
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    .line 397
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 398
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 399
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    .line 400
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v0, :cond_19

    .line 401
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 402
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 404
    :cond_19
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 406
    return-void
.end method

.method private static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .registers 5
    .param p0, "names"    # Ljava/lang/String;

    .prologue
    .line 430
    if-nez p0, :cond_4

    .line 431
    const/4 v0, 0x0

    .line 438
    :cond_3
    return-object v0

    .line 433
    :cond_4
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "namesArray":[Ljava/lang/String;
    array-length v3, v2

    new-array v0, v3, [Landroid/content/ComponentName;

    .line 435
    .local v0, "componentNames":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 436
    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v0, v1

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p0, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v4, "names":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_23

    .line 419
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/ComponentName;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v3, :cond_23

    aget-object v1, v0, v2

    .line 420
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_19

    .line 421
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    :cond_19
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 426
    .end local v0    # "arr$":[Landroid/content/ComponentName;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 123
    const-string v0, "DREAM MANAGER (dumpsys dreams)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamIsWaking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamDozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamDozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDozeComponent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 138
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;J)V

    .line 144
    return-void
.end method

.method private finishSelfInternal(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_a

    .line 186
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    .line 188
    :cond_a
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screensaver_default_component"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    :goto_10
    return-object v1

    :cond_11
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_10
.end method

.method private getDozeComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 317
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getDozeComponent(I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 324
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_36

    const-string v3, "debug.doze.component"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "name":Ljava/lang/String;
    :goto_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 328
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    :cond_1f
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_enabled"

    invoke-static {v3, v4, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_38

    .line 333
    .local v0, "enabled":Z
    :goto_2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    if-nez v0, :cond_3a

    :cond_35
    :goto_35
    return-object v2

    .end local v0    # "enabled":Z
    .end local v1    # "name":Ljava/lang/String;
    :cond_36
    move-object v1, v2

    .line 324
    goto :goto_c

    .line 331
    .restart local v1    # "name":Ljava/lang/String;
    :cond_38
    const/4 v0, 0x0

    goto :goto_2d

    .line 333
    .restart local v0    # "enabled":Z
    :cond_3a
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_35
.end method

.method private getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 13
    .param p1, "userId"    # I

    .prologue
    .line 276
    iget-object v8, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screensaver_components"

    invoke-static {v8, v9, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "names":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v2

    .line 282
    .local v2, "components":[Landroid/content/ComponentName;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v7, "validComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_2b

    .line 284
    move-object v0, v2

    .local v0, "arr$":[Landroid/content/ComponentName;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1b
    if-ge v4, v5, :cond_2b

    aget-object v1, v0, v4

    .line 285
    .local v1, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 286
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 292
    .end local v0    # "arr$":[Landroid/content/ComponentName;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2b
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 294
    .local v3, "defaultDream":Landroid/content/ComponentName;
    if-eqz v3, :cond_52

    .line 295
    const-string v8, "DreamManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Falling back to default dream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v3    # "defaultDream":Landroid/content/ComponentName;
    :cond_52
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/content/ComponentName;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    return-object v8
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 338
    if-eqz p1, :cond_e

    :try_start_3
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_d} :catch_f

    move-result-object v1

    .line 340
    :cond_e
    :goto_e
    return-object v1

    .line 339
    :catch_f
    move-exception v0

    .line 340
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_e
.end method

.method private isDreamingInternal()Z
    .registers 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 150
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private requestAwakenInternal()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 168
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 169
    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    .line 170
    return-void
.end method

.method private requestDreamInternal()V
    .registers 5

    .prologue
    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 159
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 160
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->nap(J)V

    .line 161
    return-void
.end method

.method private setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 307
    return-void
.end method

.method private startDozingInternal(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_20

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-eqz v0, :cond_20

    .line 223
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 224
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 225
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 227
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-nez v0, :cond_20

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 232
    :cond_20
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private startDreamInternal(Z)V
    .registers 6
    .param p1, "doze"    # Z

    .prologue
    .line 198
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 199
    .local v1, "userId":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    move-result-object v0

    .line 200
    .local v0, "dream":Landroid/content/ComponentName;
    if-eqz v0, :cond_12

    .line 201
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 202
    const/4 v2, 0x0

    :try_start_e
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V

    .line 203
    monitor-exit v3

    .line 205
    :cond_12
    return-void

    .line 203
    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw v2
.end method

.method private startDreamLocked(Landroid/content/ComponentName;ZZI)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isTest"    # Z
    .param p3, "canDoze"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-ne v0, p2, :cond_15

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-ne v0, p3, :cond_15

    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    if-ne v0, p4, :cond_15

    .line 370
    :goto_14
    return-void

    .line 353
    :cond_15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    .line 355
    const-string v0, "DreamManagerService"

    const-string v1, "Entering dreamland."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 358
    .local v2, "newToken":Landroid/os/Binder;
    iput-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 359
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 360
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    .line 361
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 362
    iput p4, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 364
    iget-object v7, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$3;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZI)V

    invoke-virtual {v7, v0}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14
.end method

.method private stopDozingInternal(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_3
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v0, :cond_1a

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 243
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 244
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 247
    :cond_1a
    monitor-exit v1

    .line 248
    return-void

    .line 247
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private stopDreamInternal(Z)V
    .registers 4
    .param p1, "immediate"    # Z

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    .line 210
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private stopDreamLocked(Z)V
    .registers 4
    .param p1, "immediate"    # Z

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_1a

    .line 374
    if-eqz p1, :cond_1b

    .line 375
    const-string v0, "DreamManagerService"

    const-string v1, "Leaving dreamland."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    .line 384
    :goto_10
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_1a
    return-void

    .line 377
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-nez v0, :cond_1a

    .line 380
    const-string v0, "DreamManagerService"

    const-string v1, "Gently waking up from dream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    goto :goto_10
.end method

.method private testDreamInternal(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "dream"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private validateDream(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 260
    if-nez p1, :cond_4

    .line 272
    :goto_3
    return v1

    .line 261
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 262
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_29

    .line 263
    const-string v2, "DreamManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 265
    :cond_29
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_66

    const-string v2, "android.permission.BIND_DREAM_SERVICE"

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 267
    const-string v2, "DreamManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not available because its manifest is missing the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.BIND_DREAM_SERVICE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " permission on the dream service declaration."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 272
    :cond_66
    const/4 v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .prologue
    .line 107
    const/16 v0, 0x258

    if-ne p1, v0, :cond_21

    .line 108
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 111
    :cond_d
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 120
    :cond_21
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 101
    const-string v0, "dreams"

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 102
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 103
    return-void
.end method
