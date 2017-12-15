.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ROTATION_FREEZE_0:I = 0x0

.field public static final ROTATION_FREEZE_180:I = 0x2

.field public static final ROTATION_FREEZE_270:I = 0x3

.field public static final ROTATION_FREEZE_90:I = 0x1

.field public static final ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private final mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mConnectionId:I

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnecting:Z

.field private mLastEventTimeMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private final mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingForEventDelivery:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "connection"    # Landroid/app/IUiAutomationConnection;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 169
    if-nez p1, :cond_1e

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Looper cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1e
    if-nez p2, :cond_28

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_28
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 176
    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 177
    return-void
.end method

.method static synthetic access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/UiAutomation;I)I
    .registers 2
    .param p0, "x0"    # Landroid/app/UiAutomation;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return p1
.end method

.method static synthetic access$202(Landroid/app/UiAutomation;J)J
    .registers 4
    .param p0, "x0"    # Landroid/app/UiAutomation;
    .param p1, "x1"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$300(Landroid/app/UiAutomation;)Z
    .registers 2
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    return v0
.end method

.method static synthetic access$400(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .registers 2
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object v0
.end method

.method private static getDegreesForRotation(I)F
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 886
    packed-switch p0, :pswitch_data_e

    .line 896
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 888
    :pswitch_5
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_4

    .line 891
    :pswitch_8
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_4

    .line 894
    :pswitch_b
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_4

    .line 886
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private isConnectedLocked()Z
    .registers 3

    .prologue
    .line 902
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private throwIfConnectedLocked()V
    .registers 3

    .prologue
    .line 906
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 907
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_d
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .registers 3

    .prologue
    .line 912
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_e

    .line 913
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_e
    return-void
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .registers 4

    .prologue
    .line 790
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 791
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 792
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_d

    .line 798
    :try_start_7
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_10

    .line 802
    :goto_c
    return-void

    .line 792
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1

    .line 799
    :catch_10
    move-exception v0

    .line 800
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public clearWindowContentFrameStats(I)Z
    .registers 5
    .param p1, "windowId"    # I

    .prologue
    .line 720
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 721
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 722
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 728
    :try_start_7
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_11

    move-result v1

    .line 732
    :goto_d
    return v1

    .line 722
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1

    .line 729
    :catch_11
    move-exception v0

    .line 730
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public connect()V
    .registers 13

    .prologue
    .line 185
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 186
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    .line 187
    iget-boolean v3, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v3, :cond_c

    .line 188
    monitor-exit v8

    .line 222
    :goto_b
    return-void

    .line 190
    :cond_c
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 191
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2c

    .line 195
    :try_start_10
    iget-object v3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v8, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v3, v8}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_2f

    .line 200
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 201
    :try_start_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_29

    move-result-wide v6

    .line 204
    .local v6, "startTimeMillis":J
    :goto_1e
    :try_start_1e
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_50

    move-result v3

    if-eqz v3, :cond_38

    .line 219
    const/4 v3, 0x0

    :try_start_25
    iput-boolean v3, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 221
    monitor-exit v8

    goto :goto_b

    .end local v6    # "startTimeMillis":J
    :catchall_29
    move-exception v3

    monitor-exit v8
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw v3

    .line 191
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v8
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v3

    .line 196
    :catch_2f
    move-exception v2

    .line 197
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v8, "Error while connecting UiAutomation"

    invoke-direct {v3, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 207
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v6    # "startTimeMillis":J
    :cond_38
    :try_start_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v6

    .line 208
    .local v0, "elapsedTimeMillis":J
    const-wide/16 v10, 0x1388

    sub-long v4, v10, v0

    .line 209
    .local v4, "remainingTimeMillis":J
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-gtz v3, :cond_55

    .line 210
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "Error while connecting UiAutomation"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_50

    .line 219
    .end local v0    # "elapsedTimeMillis":J
    .end local v4    # "remainingTimeMillis":J
    :catchall_50
    move-exception v3

    const/4 v9, 0x0

    :try_start_52
    iput-boolean v9, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    throw v3
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_29

    .line 213
    .restart local v0    # "elapsedTimeMillis":J
    .restart local v4    # "remainingTimeMillis":J
    :cond_55
    :try_start_55
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5a} :catch_5b
    .catchall {:try_start_55 .. :try_end_5a} :catchall_50

    goto :goto_1e

    .line 214
    :catch_5b
    move-exception v3

    goto :goto_1e
.end method

.method public disconnect()V
    .registers 5

    .prologue
    .line 230
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :try_start_3
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v1, :cond_12

    .line 232
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot call disconnect() while connecting!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 235
    :cond_12
    :try_start_12
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 236
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 237
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    .line 240
    :try_start_19
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 244
    return-void

    .line 241
    :catch_1f
    move-exception v0

    .line 242
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error while disconnecting UiAutomation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .registers 22
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 504
    :try_start_5
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 505
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 507
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 508
    monitor-exit v12
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_5f

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 517
    .local v6, "executionStartTimeMillis":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 520
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 523
    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 526
    .local v10, "startTimeMillis":J
    :cond_25
    :goto_25
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7e

    .line 527
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    .line 529
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v14

    cmp-long v5, v14, v6

    if-ltz v5, :cond_25

    .line 532
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_66

    move-result v5

    if-eqz v5, :cond_62

    .line 551
    const/4 v5, 0x0

    :try_start_4b
    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 552
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 553
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v12
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_7b

    return-object v4

    .line 508
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v6    # "executionStartTimeMillis":J
    .end local v10    # "startTimeMillis":J
    :catchall_5f
    move-exception v5

    :try_start_60
    monitor-exit v12
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v5

    .line 535
    .restart local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v6    # "executionStartTimeMillis":J
    .restart local v10    # "startTimeMillis":J
    :cond_62
    :try_start_62
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_25

    .line 551
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v10    # "startTimeMillis":J
    :catchall_66
    move-exception v5

    const/4 v13, 0x0

    :try_start_68
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 552
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 553
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    throw v5

    .line 555
    :catchall_7b
    move-exception v5

    monitor-exit v12
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_7b

    throw v5

    .line 538
    .restart local v10    # "startTimeMillis":J
    :cond_7e
    :try_start_7e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v2, v14, v10

    .line 539
    .local v2, "elapsedTimeMillis":J
    sub-long v8, p3, v2

    .line 540
    .local v8, "remainingTimeMillis":J
    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-gtz v5, :cond_ad

    .line 541
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected event not received within: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_ad
    .catchall {:try_start_7e .. :try_end_ad} :catchall_66

    .line 545
    :cond_ad
    :try_start_ad
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_b4} :catch_b6
    .catchall {:try_start_ad .. :try_end_b4} :catchall_66

    goto/16 :goto_25

    .line 546
    :catch_b6
    move-exception v5

    goto/16 :goto_25
.end method

.method public executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 860
    iget-object v6, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 861
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 862
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1c

    .line 864
    const/4 v4, 0x0

    .line 865
    .local v4, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 868
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_9
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 869
    .local v1, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    aget-object v4, v1, v5

    .line 870
    const/4 v5, 0x1

    aget-object v3, v1, v5

    .line 873
    iget-object v5, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v5, p1, v3}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_2b
    .catchall {:try_start_9 .. :try_end_18} :catchall_37

    .line 879
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 882
    .end local v1    # "pipe":[Landroid/os/ParcelFileDescriptor;
    :goto_1b
    return-object v4

    .line 862
    .end local v3    # "sink":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "source":Landroid/os/ParcelFileDescriptor;
    :catchall_1c
    move-exception v5

    :try_start_1d
    monitor-exit v6
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v5

    .line 874
    .restart local v3    # "sink":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "source":Landroid/os/ParcelFileDescriptor;
    :catch_1f
    move-exception v0

    .line 875
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_20
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error executing shell command!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_37

    .line 879
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1b

    .line 876
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_2b
    move-exception v2

    .line 877
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2c
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error executing shell command!"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    .line 879
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1b

    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_37
    move-exception v5

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "focus"    # I

    .prologue
    .line 320
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v3, -0x2

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionId()I
    .registers 3

    .prologue
    .line 254
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 256
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    monitor-exit v1

    return v0

    .line 257
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .prologue
    .line 411
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 412
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 413
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 414
    .local v0, "connectionId":I
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 416
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 414
    .end local v0    # "connectionId":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 6

    .prologue
    .line 335
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 336
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 337
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 339
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_18

    .line 341
    if-eqz v0, :cond_23

    .line 343
    :try_start_13
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1b

    move-result-object v2

    .line 348
    :goto_17
    return-object v2

    .line 339
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v2

    .line 344
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_1b
    move-exception v1

    .line 345
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .registers 4

    .prologue
    .line 832
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 833
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 834
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 840
    :try_start_7
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_11

    move-result-object v1

    .line 844
    :goto_d
    return-object v1

    .line 834
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1

    .line 841
    :catch_11
    move-exception v0

    .line 842
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .registers 5
    .param p1, "windowId"    # I

    .prologue
    .line 765
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 766
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 767
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 773
    :try_start_7
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_11

    move-result-object v1

    .line 777
    :goto_d
    return-object v1

    .line 767
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1

    .line 774
    :catch_11
    move-exception v0

    .line 775
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getWindows()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 396
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 397
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 398
    .local v0, "connectionId":I
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 400
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 398
    .end local v0    # "connectionId":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 430
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 431
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 432
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 438
    :try_start_7
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1, p2}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;Z)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_11

    move-result v1

    .line 442
    :goto_d
    return v1

    .line 432
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1

    .line 439
    :catch_11
    move-exception v0

    .line 440
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while injecting input event!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public final performGlobalAction(I)Z
    .registers 7
    .param p1, "action"    # I

    .prologue
    .line 286
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 287
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 288
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 290
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_18

    .line 292
    if-eqz v0, :cond_23

    .line 294
    :try_start_13
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1b

    move-result v2

    .line 299
    :goto_17
    return v2

    .line 290
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v2

    .line 295
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_1b
    move-exception v1

    .line 296
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .prologue
    .line 266
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_3
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 268
    monitor-exit v1

    .line 269
    return-void

    .line 268
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setRotation(I)Z
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    .line 462
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 463
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 464
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_12

    .line 465
    packed-switch p1, :pswitch_data_26

    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid rotation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1

    .line 474
    :pswitch_15
    :try_start_15
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 475
    const/4 v1, 0x1

    .line 479
    :goto_1b
    return v1

    .line 476
    :catch_1c
    move-exception v0

    .line 477
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting rotation!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    const/4 v1, 0x0

    goto :goto_1b

    .line 465
    :pswitch_data_26
    .packed-switch -0x2
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public setRunAsMonkey(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 695
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 696
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 697
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_f

    .line 699
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_12

    .line 703
    :goto_e
    return-void

    .line 697
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1

    .line 700
    :catch_12
    move-exception v0

    .line 701
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting run as monkey!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 361
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 362
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 363
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    .line 364
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 366
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    .line 368
    if-eqz v0, :cond_1d

    .line 370
    :try_start_1a
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_21

    .line 375
    :cond_1d
    :goto_1d
    return-void

    .line 366
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2

    .line 371
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_21
    move-exception v1

    .line 372
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .registers 15

    .prologue
    .line 614
    iget-object v12, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 615
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 616
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_3c

    .line 617
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 619
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 620
    .local v3, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 621
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 622
    .local v4, "displayWidth":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 627
    .local v2, "displayHeight":I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 628
    .local v6, "rotation":I
    packed-switch v6, :pswitch_data_a6

    .line 646
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid rotation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 616
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displayHeight":I
    .end local v3    # "displaySize":Landroid/graphics/Point;
    .end local v4    # "displayWidth":I
    .end local v6    # "rotation":I
    :catchall_3c
    move-exception v11

    :try_start_3d
    monitor-exit v12
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v11

    .line 630
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "displayHeight":I
    .restart local v3    # "displaySize":Landroid/graphics/Point;
    .restart local v4    # "displayWidth":I
    .restart local v6    # "rotation":I
    :pswitch_3f
    int-to-float v9, v4

    .line 631
    .local v9, "screenshotWidth":F
    int-to-float v8, v2

    .line 652
    .local v8, "screenshotHeight":F
    :goto_41
    const/4 v7, 0x0

    .line 655
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    :try_start_42
    iget-object v11, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    float-to-int v12, v9

    float-to-int v13, v8

    invoke-interface {v11, v12, v13}, Landroid/app/IUiAutomationConnection;->takeScreenshot(II)Landroid/graphics/Bitmap;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_57

    move-result-object v7

    .line 657
    if-nez v7, :cond_61

    .line 658
    const/4 v11, 0x0

    .line 683
    :goto_4d
    return-object v11

    .line 634
    .end local v7    # "screenShot":Landroid/graphics/Bitmap;
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_4e
    int-to-float v9, v2

    .line 635
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v4

    .line 636
    .restart local v8    # "screenshotHeight":F
    goto :goto_41

    .line 638
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_51
    int-to-float v9, v4

    .line 639
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v2

    .line 640
    .restart local v8    # "screenshotHeight":F
    goto :goto_41

    .line 642
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_54
    int-to-float v9, v2

    .line 643
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v4

    .line 644
    .restart local v8    # "screenshotHeight":F
    goto :goto_41

    .line 660
    .restart local v7    # "screenShot":Landroid/graphics/Bitmap;
    :catch_57
    move-exception v5

    .line 661
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v11, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Error while taking screnshot!"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    const/4 v11, 0x0

    goto :goto_4d

    .line 666
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_61
    if-eqz v6, :cond_9f

    .line 667
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 669
    .local v10, "unrotatedScreenShot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 670
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 672
    invoke-static {v6}, Landroid/app/UiAutomation;->getDegreesForRotation(I)F

    move-result v11

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 673
    neg-float v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    neg-float v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 674
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 675
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 676
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 677
    move-object v7, v10

    .line 681
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "unrotatedScreenShot":Landroid/graphics/Bitmap;
    :cond_9f
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object v11, v7

    .line 683
    goto :goto_4d

    .line 628
    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_4e
        :pswitch_51
        :pswitch_54
    .end packed-switch
.end method

.method public waitForIdle(JJ)V
    .registers 28
    .param p1, "idleTimeoutMillis"    # J
    .param p3, "globalTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 575
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 578
    .local v14, "startTimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-gtz v16, :cond_1e

    .line 579
    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 583
    :cond_1e
    :goto_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 585
    .local v4, "currentTimeMillis":J
    sub-long v6, v4, v14

    .line 586
    .local v6, "elapsedGlobalTimeMillis":J
    sub-long v10, p3, v6

    .line 588
    .local v10, "remainingGlobalTimeMillis":J
    const-wide/16 v18, 0x0

    cmp-long v16, v10, v18

    if-gtz v16, :cond_5e

    .line 589
    new-instance v16, Ljava/util/concurrent/TimeoutException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No idle state with idle timeout: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " within global timeout: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 605
    .end local v4    # "currentTimeMillis":J
    .end local v6    # "elapsedGlobalTimeMillis":J
    .end local v10    # "remainingGlobalTimeMillis":J
    .end local v14    # "startTimeMillis":J
    :catchall_5b
    move-exception v16

    monitor-exit v17
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_5b

    throw v16

    .line 594
    .restart local v4    # "currentTimeMillis":J
    .restart local v6    # "elapsedGlobalTimeMillis":J
    .restart local v10    # "remainingGlobalTimeMillis":J
    .restart local v14    # "startTimeMillis":J
    :cond_5e
    :try_start_5e
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v18, v0

    sub-long v8, v4, v18

    .line 595
    .local v8, "elapsedIdleTimeMillis":J
    sub-long v12, p1, v8

    .line 596
    .local v12, "remainingIdleTimeMillis":J
    const-wide/16 v18, 0x0

    cmp-long v16, v12, v18

    if-gtz v16, :cond_70

    .line 597
    monitor-exit v17
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_5b

    return-void

    .line 600
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_7b} :catch_7c
    .catchall {:try_start_70 .. :try_end_7b} :catchall_5b

    goto :goto_1e

    .line 601
    :catch_7c
    move-exception v16

    goto :goto_1e
.end method
