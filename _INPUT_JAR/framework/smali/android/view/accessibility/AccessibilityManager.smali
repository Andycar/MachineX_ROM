.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyHandler;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    }
.end annotation


# static fields
.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final DALTONIZER_DISABLED:I = -0x1

.field public static final DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field private final mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mIsEnabled:Z

.field mIsHighTextContrastEnabled:Z

.field mIsTouchExplorationEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 169
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 223
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyHandler;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 224
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    .line 225
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 226
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_38
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked()V

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyAccessibilityStateChanged()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyTouchExplorationStateChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyHighTextContrastStateChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/accessibility/AccessibilityManager;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    sget-object v4, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v4

    .line 191
    :try_start_3
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v3, :cond_30

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_1f

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_34

    .line 200
    :cond_1f
    const/4 v2, -0x2

    .line 204
    .local v2, "userId":I
    :goto_20
    const-string v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 205
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_39

    const/4 v1, 0x0

    .line 207
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    :goto_29
    new-instance v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v3, p0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 209
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :cond_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_3e

    .line 210
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v3

    .line 202
    :cond_34
    :try_start_34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .restart local v2    # "userId":I
    goto :goto_20

    .line 205
    .restart local v0    # "iBinder":Landroid/os/IBinder;
    :cond_39
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    goto :goto_29

    .line 209
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v2    # "userId":I
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method private getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_7

    .line 617
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked()V

    .line 619
    :cond_7
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method private handleNotifyAccessibilityStateChanged()V
    .registers 6

    .prologue
    .line 642
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 643
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 645
    .local v1, "isEnabled":Z
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 646
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_1c

    .line 647
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-interface {v3, v1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 649
    :cond_1c
    monitor-exit v4

    .line 650
    return-void

    .line 649
    .end local v0    # "i":I
    .end local v1    # "isEnabled":Z
    .end local v2    # "listenerCount":I
    :catchall_1e
    move-exception v3

    monitor-exit v4
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v3
.end method

.method private handleNotifyHighTextContrastStateChanged()V
    .registers 6

    .prologue
    .line 672
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 673
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 674
    .local v1, "isHighTextContrastEnabled":Z
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1d

    .line 675
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 676
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v2, :cond_20

    .line 677
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    invoke-interface {v3, v1}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 674
    .end local v0    # "i":I
    .end local v1    # "isHighTextContrastEnabled":Z
    .end local v2    # "listenerCount":I
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3

    .line 680
    .restart local v0    # "i":I
    .restart local v1    # "isHighTextContrastEnabled":Z
    .restart local v2    # "listenerCount":I
    :cond_20
    return-void
.end method

.method private handleNotifyTouchExplorationStateChanged()V
    .registers 6

    .prologue
    .line 657
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 658
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 659
    .local v1, "isTouchExplorationEnabled":Z
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1d

    .line 660
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 661
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v2, :cond_20

    .line 662
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-interface {v3, v1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 659
    .end local v0    # "i":I
    .end local v1    # "isTouchExplorationEnabled":Z
    .end local v2    # "listenerCount":I
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3

    .line 665
    .restart local v0    # "i":I
    .restart local v1    # "isTouchExplorationEnabled":Z
    .restart local v2    # "listenerCount":I
    :cond_20
    return-void
.end method

.method private setStateLocked(I)V
    .registers 10
    .param p1, "stateFlags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 540
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_35

    move v0, v6

    .line 541
    .local v0, "enabled":Z
    :goto_7
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_37

    move v2, v6

    .line 543
    .local v2, "touchExplorationEnabled":Z
    :goto_c
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_11

    move v1, v6

    .line 546
    .local v1, "highTextContrastEnabled":Z
    :cond_11
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 547
    .local v3, "wasEnabled":Z
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 548
    .local v5, "wasTouchExplorationEnabled":Z
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 551
    .local v4, "wasHighTextContrastEnabled":Z
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 552
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 553
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 555
    if-eq v3, v0, :cond_24

    .line 556
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    :cond_24
    if-eq v5, v2, :cond_2c

    .line 560
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 563
    :cond_2c
    if-eq v4, v1, :cond_34

    .line 564
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 566
    :cond_34
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "highTextContrastEnabled":Z
    .end local v2    # "touchExplorationEnabled":Z
    .end local v3    # "wasEnabled":Z
    .end local v4    # "wasHighTextContrastEnabled":Z
    .end local v5    # "wasTouchExplorationEnabled":Z
    :cond_35
    move v0, v1

    .line 540
    goto :goto_7

    .restart local v0    # "enabled":Z
    :cond_37
    move v2, v1

    .line 541
    goto :goto_c
.end method

.method private tryConnectToServiceLocked()V
    .registers 7

    .prologue
    .line 623
    const-string v4, "accessibility"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 624
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_9

    .line 635
    :goto_8
    return-void

    .line 627
    :cond_9
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 629
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_d
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v3

    .line 630
    .local v3, "stateFlags":I
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    .line 631
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_8

    .line 632
    .end local v3    # "stateFlags":I
    :catch_1b
    move-exception v1

    .line 633
    .local v1, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "AccessibilityManagerService is dead"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .registers 9
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .prologue
    const/4 v3, -0x1

    .line 579
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 580
    :try_start_4
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 581
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_c

    .line 582
    monitor-exit v4

    .line 591
    :goto_b
    return v3

    .line 584
    :cond_c
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 585
    .local v2, "userId":I
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    .line 587
    :try_start_f
    invoke-interface {v1, p1, p2, v2}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_17

    move-result v3

    goto :goto_b

    .line 585
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v3

    .line 588
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "userId":I
    :catch_17
    move-exception v0

    .line 589
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while adding an accessibility interaction connection. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 465
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .prologue
    .line 517
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 490
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public assistantMenuRegister(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 783
    :try_start_0
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister invoking from manager start:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->assistantMenuRegister(Landroid/os/IBinder;)V

    .line 785
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister invoking from manager end:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 789
    :goto_13
    return-void

    .line 786
    :catch_14
    move-exception v0

    .line 787
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public assistantMenuUpdate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 802
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 803
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuUpdate invoking from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 807
    :goto_c
    return-void

    .line 804
    :catch_d
    move-exception v0

    .line 805
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuUpdate Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public disableMagnifier()V
    .registers 4

    .prologue
    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->disableMagnifier()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 886
    :goto_5
    return-void

    .line 883
    :catch_6
    move-exception v0

    .line 884
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "enableMagnifier Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public enableMagnifier(IIF)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    .line 869
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->enableMagnifier(IIF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 873
    :goto_5
    return-void

    .line 870
    :catch_6
    move-exception v0

    .line 871
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "enableMagnifier Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 372
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 374
    .local v2, "infoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_22

    .line 375
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 376
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 378
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_22
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .registers 8
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 432
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 433
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_f

    .line 434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    monitor-exit v5

    .line 451
    :goto_e
    return-object v4

    .line 436
    :cond_f
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 437
    .local v3, "userId":I
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    .line 439
    const/4 v2, 0x0

    .line 441
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_13
    invoke-interface {v1, p1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_21

    move-result-object v2

    .line 448
    :goto_17
    if-eqz v2, :cond_2a

    .line 449
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_e

    .line 437
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v3    # "userId":I
    :catchall_1e
    move-exception v4

    :try_start_1f
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v4

    .line 445
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_21
    move-exception v0

    .line 446
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 451
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_e
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 390
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 391
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_f

    .line 392
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    monitor-exit v5

    .line 409
    :goto_e
    return-object v4

    .line 394
    :cond_f
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 395
    .local v3, "userId":I
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    .line 397
    const/4 v2, 0x0

    .line 399
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_13
    invoke-interface {v1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_21

    move-result-object v2

    .line 406
    :goto_17
    if-eqz v2, :cond_2a

    .line 407
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_e

    .line 395
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v3    # "userId":I
    :catchall_1e
    move-exception v4

    :try_start_1f
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v4

    .line 403
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_21
    move-exception v0

    .line 404
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 409
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_e
.end method

.method public hideMagnifier()V
    .registers 4

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 919
    :goto_6
    return-void

    .line 916
    :catch_7
    move-exception v0

    .line 917
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "setMagnificationSpec Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public interrupt()V
    .registers 7

    .prologue
    .line 342
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 343
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 344
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 345
    monitor-exit v4

    .line 360
    :goto_a
    return-void

    .line 347
    :cond_b
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v3, :cond_1a

    .line 348
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 351
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_17
    move-exception v3

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v3

    .line 350
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1a
    :try_start_1a
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 351
    .local v2, "userId":I
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    .line 353
    :try_start_1d
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_a

    .line 357
    :catch_21
    move-exception v0

    .line 358
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while requesting interrupt from all services. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 244
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 245
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 246
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_c

    .line 247
    const/4 v1, 0x0

    monitor-exit v2

    .line 249
    :goto_b
    return v1

    :cond_c
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    monitor-exit v2

    goto :goto_b

    .line 250
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isHighTextContrastEnabled()Z
    .registers 4

    .prologue
    .line 280
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 281
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 282
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_c

    .line 283
    const/4 v1, 0x0

    monitor-exit v2

    .line 285
    :goto_b
    return v1

    :cond_c
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    monitor-exit v2

    goto :goto_b

    .line 286
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isTouchExplorationEnabled()Z
    .registers 4

    .prologue
    .line 259
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 261
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_c

    .line 262
    const/4 v1, 0x0

    monitor-exit v2

    .line 264
    :goto_b
    return v1

    :cond_c
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v2

    goto :goto_b

    .line 265
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public openGlobalActions()V
    .registers 4

    .prologue
    .line 851
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->openGlobalActions()V

    .line 852
    const-string v1, "AccessibilityManager"

    const-string v2, "global actions from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 856
    :goto_c
    return-void

    .line 853
    :catch_d
    move-exception v0

    .line 854
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "global actions Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public reboot(Z)V
    .registers 5
    .param p1, "isConfirm"    # Z

    .prologue
    .line 833
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->reboot(Z)V

    .line 834
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "reboot from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 838
    :goto_d
    return-void

    .line 835
    :catch_e
    move-exception v0

    .line 836
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "reboot Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 6
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .prologue
    .line 602
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 603
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 604
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_b

    .line 605
    monitor-exit v3

    .line 613
    :goto_a
    return-void

    .line 607
    :cond_b
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    .line 609
    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_a

    .line 610
    :catch_10
    move-exception v0

    .line 611
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 607
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 477
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .prologue
    .line 531
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 502
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 305
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 306
    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v4

    .line 307
    .local v4, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v4, :cond_b

    .line 308
    monitor-exit v7

    .line 334
    :cond_a
    :goto_a
    return-void

    .line 310
    :cond_b
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v6, :cond_1a

    .line 311
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "Accessibility off. Did you forget to check that?"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 314
    .end local v4    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_17
    move-exception v6

    monitor-exit v7
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v6

    .line 313
    .restart local v4    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1a
    :try_start_1a
    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 314
    .local v5, "userId":I
    monitor-exit v7
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "doRecycle":Z
    :try_start_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 322
    .local v2, "identityToken":J
    invoke-interface {v4, p1, v5}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v0

    .line 323
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_30} :catch_36
    .catchall {:try_start_1e .. :try_end_30} :catchall_5b

    .line 330
    if-eqz v0, :cond_a

    .line 331
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_a

    .line 327
    .end local v2    # "identityToken":J
    :catch_36
    move-exception v1

    .line 328
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_37
    const-string v6, "AccessibilityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error during sending "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_5b

    .line 330
    if-eqz v0, :cond_a

    .line 331
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_a

    .line 330
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_5b
    move-exception v6

    if-eqz v0, :cond_61

    .line 331
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_61
    throw v6
.end method

.method public setTwoFingerGestureRecognitionEnabled(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 931
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_c

    .line 932
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility off. Did you forget to check that?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 935
    :cond_c
    :try_start_c
    const-string v1, "AccessibilityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccessibilityManager - setTwoFingerGestureRecognitionEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setTwoFingerGestureRecognitionEnabled(Z)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2a

    .line 940
    :goto_29
    return-void

    .line 937
    :catch_2a
    move-exception v0

    .line 938
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "setTwoFingerGestureRecognitionEnabled Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .registers 7
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 763
    const/4 v1, 0x0

    .line 765
    .local v1, "retVal":Z
    :try_start_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 769
    :goto_7
    return v1

    .line 766
    :catch_8
    move-exception v0

    .line 767
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setmDNIeAccessibilityMode Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "result"    # [I

    .prologue
    .line 727
    const/4 v1, 0x0

    .line 729
    .local v1, "retVal":Z
    :try_start_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 733
    :goto_7
    return v1

    .line 730
    :catch_8
    move-exception v0

    .line 731
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setmDNIeColorBlind Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setmDNIeNegative(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 745
    const/4 v1, 0x0

    .line 747
    .local v1, "retVal":Z
    :try_start_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 751
    :goto_7
    return v1

    .line 748
    :catch_8
    move-exception v0

    .line 749
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setmDNIeNegative Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public showMagnifier(FF)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 898
    :try_start_0
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 899
    .local v1, "spec":Landroid/view/MagnificationSpec;
    iput p1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 900
    iput p2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 901
    const-string v2, "AccessibilityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showMagnifier x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, v1}, Landroid/view/accessibility/IAccessibilityManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    .line 906
    .end local v1    # "spec":Landroid/view/MagnificationSpec;
    :goto_30
    return-void

    .line 903
    :catch_31
    move-exception v0

    .line 904
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setMagnificationSpec Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method public shutdown(Z)V
    .registers 5
    .param p1, "isConfirm"    # Z

    .prologue
    .line 818
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->shutdown(Z)V

    .line 819
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "shutdown from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 823
    :goto_d
    return-void

    .line 820
    :catch_e
    move-exception v0

    .line 821
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "shutdown Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
