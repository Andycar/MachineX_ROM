.class public final Landroid/hardware/camera2/legacy/RequestHolder$Builder;
.super Ljava/lang/Object;
.source "RequestHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mJpegSurfaceIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumJpegTargets:I

.field private final mNumPreviewTargets:I

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mRequestId:I

.field private final mSubsequenceId:I


# direct methods
.method public constructor <init>(IILandroid/hardware/camera2/CaptureRequest;ZLjava/util/Collection;)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "subsequenceId"    # I
    .param p3, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p5, "jpegSurfaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "request must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequestId:I

    .line 74
    iput p2, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mSubsequenceId:I

    .line 75
    iput-object p3, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 76
    iput-boolean p4, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRepeating:Z

    .line 77
    iput-object p5, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    .line 78
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->numJpegTargets(Landroid/hardware/camera2/CaptureRequest;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumJpegTargets:I

    .line 79
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->numPreviewTargets(Landroid/hardware/camera2/CaptureRequest;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumPreviewTargets:I

    .line 80
    return-void
.end method

.method private jpegType(Landroid/view/Surface;)Z
    .registers 3
    .param p1, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mJpegSurfaceIds:Ljava/util/Collection;

    invoke-static {p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private numJpegTargets(Landroid/hardware/camera2/CaptureRequest;)I
    .registers 8
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 118
    .local v3, "s":Landroid/view/Surface;
    :try_start_15
    invoke-direct {p0, v3}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->jpegType(Landroid/view/Surface;)Z
    :try_end_18
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_15 .. :try_end_18} :catch_1e

    move-result v4

    if-eqz v4, :cond_9

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 121
    :catch_1e
    move-exception v1

    .line 122
    .local v1, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string v4, "RequestHolder"

    const-string v5, "Surface abandoned, skipping..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 125
    .end local v1    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v3    # "s":Landroid/view/Surface;
    :cond_27
    return v0
.end method

.method private numPreviewTargets(Landroid/hardware/camera2/CaptureRequest;)I
    .registers 8
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 135
    .local v3, "s":Landroid/view/Surface;
    :try_start_15
    invoke-direct {p0, v3}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->previewType(Landroid/view/Surface;)Z
    :try_end_18
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_15 .. :try_end_18} :catch_1e

    move-result v4

    if-eqz v4, :cond_9

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 138
    :catch_1e
    move-exception v1

    .line 139
    .local v1, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const-string v4, "RequestHolder"

    const-string v5, "Surface abandoned, skipping..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 142
    .end local v1    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v3    # "s":Landroid/view/Surface;
    :cond_27
    return v0
.end method

.method private previewType(Landroid/view/Surface;)Z
    .registers 3
    .param p1, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->jpegType(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public build(J)Landroid/hardware/camera2/legacy/RequestHolder;
    .registers 14
    .param p1, "frameNumber"    # J

    .prologue
    .line 153
    new-instance v1, Landroid/hardware/camera2/legacy/RequestHolder;

    iget v2, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequestId:I

    iget v3, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mSubsequenceId:I

    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-boolean v5, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mRepeating:Z

    iget v8, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumJpegTargets:I

    iget v9, p0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->mNumPreviewTargets:I

    const/4 v10, 0x0

    move-wide v6, p1

    invoke-direct/range {v1 .. v10}, Landroid/hardware/camera2/legacy/RequestHolder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZJIILandroid/hardware/camera2/legacy/RequestHolder$1;)V

    return-object v1
.end method
