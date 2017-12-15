.class public Landroid/hardware/camera2/legacy/CaptureCollector;
.super Ljava/lang/Object;
.source "CaptureCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FLAG_RECEIVED_ALL_JPEG:I = 0x3

.field private static final FLAG_RECEIVED_ALL_PREVIEW:I = 0xc

.field private static final FLAG_RECEIVED_JPEG:I = 0x1

.field private static final FLAG_RECEIVED_JPEG_TS:I = 0x2

.field private static final FLAG_RECEIVED_PREVIEW:I = 0x4

.field private static final FLAG_RECEIVED_PREVIEW_TS:I = 0x8

.field private static final MAX_JPEGS_IN_FLIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CaptureCollector"


# instance fields
.field private final mActiveRequests:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private mInFlight:I

.field private mInFlightPreviews:I

.field private final mIsEmpty:Ljava/util/concurrent/locks/Condition;

.field private final mJpegCaptureQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mJpegProduceQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMaxInFlight:I

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mPreviewCaptureQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewProduceQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    const-string v0, "HAL1ShimLogging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/CaptureCollector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .registers 6
    .param p1, "maxInFlight"    # I
    .param p2, "deviceState"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 270
    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    .line 271
    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    .line 281
    iput p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    .line 282
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    .line 283
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    .line 284
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    .line 285
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    .line 286
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    .line 287
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 288
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 289
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 290
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 291
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .registers 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CaptureCollector;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->onPreviewCompleted()V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CaptureCollector;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CaptureCollector;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->onRequestCompleted(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Landroid/hardware/camera2/legacy/CaptureCollector;->DEBUG:Z

    return v0
.end method

.method private onPreviewCompleted()V
    .registers 3

    .prologue
    .line 636
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    .line 637
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    if-gez v0, :cond_12

    .line 638
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More preview captures completed than requests queued."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_12
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    if-nez v0, :cond_1b

    .line 642
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 644
    :cond_1b
    return-void
.end method

.method private onRequestCompleted(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V
    .registers 6
    .param p1, "capture"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .prologue
    .line 647
    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-static {p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v0

    .line 649
    .local v0, "request":Landroid/hardware/camera2/legacy/RequestHolder;
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    .line 650
    sget-boolean v1, Landroid/hardware/camera2/legacy/CaptureCollector;->DEBUG:Z

    if-eqz v1, :cond_3c

    .line 651
    const-string v1, "CaptureCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requests remain in flight."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_3c
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    if-gez v1, :cond_48

    .line 655
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "More captures completed than requests queued."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_48
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 662
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 663
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    if-nez v1, :cond_60

    .line 664
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 666
    :cond_60
    return-void
.end method

.method private removeRequestIfCompleted(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/util/MutableLong;)Z
    .registers 9
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timestamp"    # Landroid/util/MutableLong;

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "i":I
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 446
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 447
    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$500(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    move-result-wide v4

    iput-wide v4, p2, Landroid/util/MutableLong;->value:J

    .line 448
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 449
    const/4 v3, 0x1

    .line 454
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :goto_29
    return v3

    .line 451
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 452
    goto :goto_7

    .line 454
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_2d
    const/4 v3, 0x0

    goto :goto_29
.end method


# virtual methods
.method public failAll()V
    .registers 4

    .prologue
    .line 618
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 619
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 622
    :goto_5
    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-eqz v0, :cond_1b

    .line 623
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewFailed()V

    .line 624
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegFailed()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    goto :goto_5

    .line 631
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_16
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 626
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 627
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 628
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 629
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_16

    .line 631
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 633
    return-void
.end method

.method public failNextJpeg()V
    .registers 6

    .prologue
    .line 591
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 592
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 594
    :try_start_5
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 595
    .local v1, "h1":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 598
    .local v2, "h2":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v1, :cond_30

    move-object v0, v2

    .line 603
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :goto_18
    if-eqz v0, :cond_2c

    .line 604
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 605
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 606
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegFailed()V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_3e

    .line 610
    :cond_2c
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 612
    return-void

    .line 598
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_30
    if-nez v2, :cond_34

    move-object v0, v1

    goto :goto_18

    :cond_34
    :try_start_34
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3e

    move-result v4

    if-gtz v4, :cond_3c

    move-object v0, v1

    goto :goto_18

    :cond_3c
    move-object v0, v2

    goto :goto_18

    .line 610
    .end local v1    # "h1":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    .end local v2    # "h2":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_3e
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public failNextPreview()V
    .registers 6

    .prologue
    .line 564
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 565
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 567
    :try_start_5
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 568
    .local v1, "h1":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 571
    .local v2, "h2":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v1, :cond_30

    move-object v0, v2

    .line 576
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :goto_18
    if-eqz v0, :cond_2c

    .line 577
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 578
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 579
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewFailed()V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_3e

    .line 583
    :cond_2c
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 585
    return-void

    .line 571
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_30
    if-nez v2, :cond_34

    move-object v0, v1

    goto :goto_18

    :cond_34
    :try_start_34
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3e

    move-result v4

    if-gtz v4, :cond_3c

    move-object v0, v1

    goto :goto_18

    :cond_3c
    move-object v0, v2

    goto :goto_18

    .line 583
    .end local v1    # "h1":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    .end local v2    # "h2":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_3e
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public hasPendingPreviewCaptures()Z
    .registers 3

    .prologue
    .line 506
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 507
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 509
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    .line 511
    :goto_e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 509
    :cond_12
    const/4 v1, 0x0

    goto :goto_e

    .line 511
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public jpegCaptured(J)Landroid/hardware/camera2/legacy/RequestHolder;
    .registers 8
    .param p1, "timestamp"    # J

    .prologue
    .line 464
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 465
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 467
    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 468
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v0, :cond_1b

    .line 469
    const-string v2, "CaptureCollector"

    const-string v3, "jpegCaptured called with no jpeg request on queue!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_26

    .line 470
    const/4 v2, 0x0

    .line 475
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1a
    return-object v2

    .line 472
    :cond_1b
    :try_start_1b
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegTimestamp(J)V

    .line 473
    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_26

    move-result-object v2

    .line 475
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1a

    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public jpegProduced()Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 486
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 488
    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 489
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v0, :cond_1b

    .line 490
    const-string v2, "CaptureCollector"

    const-string v3, "jpegProduced called with no jpeg request on queue!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_33

    .line 491
    const/4 v2, 0x0

    .line 496
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1a
    return-object v2

    .line 493
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegProduced()V

    .line 494
    new-instance v2, Landroid/util/Pair;

    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v3

    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$500(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_33

    .line 496
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1a

    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public previewCaptured(J)Landroid/util/Pair;
    .registers 10
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 523
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 525
    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 526
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v0, :cond_20

    .line 527
    sget-boolean v2, Landroid/hardware/camera2/legacy/CaptureCollector;->DEBUG:Z

    if-eqz v2, :cond_1b

    .line 528
    const-string v2, "CaptureCollector"

    const-string/jumbo v3, "previewCaptured called with no preview request on queue!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_38

    .line 530
    :cond_1b
    const/4 v2, 0x0

    .line 535
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1f
    return-object v2

    .line 532
    :cond_20
    :try_start_20
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewTimestamp(J)V

    .line 533
    new-instance v2, Landroid/util/Pair;

    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v3

    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mTimestamp:J
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$500(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_38

    .line 535
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1f

    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public previewProduced()Landroid/hardware/camera2/legacy/RequestHolder;
    .registers 5

    .prologue
    .line 545
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 546
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 548
    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 549
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v0, :cond_1c

    .line 550
    const-string v2, "CaptureCollector"

    const-string/jumbo v3, "previewProduced called with no preview request on queue!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_27

    .line 551
    const/4 v2, 0x0

    .line 556
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1b
    return-object v2

    .line 553
    :cond_1c
    :try_start_1c
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewProduced()V

    .line 554
    # getter for: Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->mRequest:Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_27

    move-result-object v2

    .line 556
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1b

    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z
    .registers 21
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "legacy"    # Landroid/hardware/camera2/legacy/LegacyRequest;
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    .line 314
    new-instance v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v4, p0, v0, v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;-><init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 315
    .local v4, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 316
    .local v6, "nanos":J
    iget-object v5, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 317
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 319
    :try_start_19
    sget-boolean v9, Landroid/hardware/camera2/legacy/CaptureCollector;->DEBUG:Z

    if-eqz v9, :cond_4c

    .line 320
    const-string v9, "CaptureCollector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "queueRequest  for request "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requests remain in flight."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_4c
    iget-boolean v9, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-nez v9, :cond_61

    iget-boolean v9, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-nez v9, :cond_61

    .line 325
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Request must target at least one output surface!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5c
    .catchall {:try_start_19 .. :try_end_5c} :catchall_5c

    .line 355
    :catchall_5c
    move-exception v8

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .line 328
    :cond_61
    :try_start_61
    iget-boolean v9, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    if-eqz v9, :cond_82

    .line 330
    :goto_65
    iget v9, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_5c

    if-lez v9, :cond_78

    .line 331
    cmp-long v9, v6, v12

    if-gtz v9, :cond_71

    .line 355
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_70
    return v8

    .line 334
    :cond_71
    :try_start_71
    iget-object v9, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v6, v7}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v6

    goto :goto_65

    .line 336
    :cond_78
    iget-object v9, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v9, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v9, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v9, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_82
    iget-boolean v9, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    if-eqz v9, :cond_ab

    .line 340
    :goto_86
    iget v9, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    iget v10, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I
    :try_end_8a
    .catchall {:try_start_71 .. :try_end_8a} :catchall_5c

    if-lt v9, v10, :cond_9b

    .line 341
    cmp-long v9, v6, v12

    if-gtz v9, :cond_94

    .line 355
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_70

    .line 344
    :cond_94
    :try_start_94
    iget-object v9, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9, v6, v7}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v6

    goto :goto_86

    .line 346
    :cond_9b
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v8, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v8, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 348
    iget v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    .line 350
    :cond_ab
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    invoke-virtual {v8, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 352
    iget v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_b6
    .catchall {:try_start_94 .. :try_end_b6} :catchall_5c

    .line 353
    const/4 v8, 0x1

    .line 355
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_70
.end method

.method public waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 369
    .local v2, "nanos":J
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 370
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 372
    :goto_9
    :try_start_9
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_24

    if-lez v1, :cond_1f

    .line 373
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_18

    .line 374
    const/4 v1, 0x0

    .line 380
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_17
    return v1

    .line 376
    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_24

    move-result-wide v2

    goto :goto_9

    .line 378
    :cond_1f
    const/4 v1, 0x1

    .line 380
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_17

    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 394
    .local v2, "nanos":J
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 395
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 397
    :goto_9
    :try_start_9
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_24

    if-lez v1, :cond_1f

    .line 398
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_18

    .line 399
    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_17
    return v1

    .line 401
    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_24

    move-result-wide v2

    goto :goto_9

    .line 403
    :cond_1f
    const/4 v1, 0x1

    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_17

    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z
    .registers 12
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "timestamp"    # Landroid/util/MutableLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 428
    .local v2, "nanos":J
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 429
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 431
    :goto_9
    :try_start_9
    invoke-direct {p0, p1, p5}, Landroid/hardware/camera2/legacy/CaptureCollector;->removeRequestIfCompleted(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/util/MutableLong;)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_26

    move-result v1

    if-nez v1, :cond_21

    .line 432
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1a

    .line 433
    const/4 v1, 0x0

    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_19
    return v1

    .line 435
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_26

    move-result-wide v2

    goto :goto_9

    .line 437
    :cond_21
    const/4 v1, 0x1

    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_19

    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
