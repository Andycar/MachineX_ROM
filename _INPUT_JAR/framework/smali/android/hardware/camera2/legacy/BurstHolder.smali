.class public Landroid/hardware/camera2/legacy/BurstHolder;
.super Ljava/lang/Object;
.source "BurstHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstHolder"


# instance fields
.field private final mRepeating:Z

.field private final mRequestBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/legacy/RequestHolder$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IZLjava/util/List;Ljava/util/Collection;)V
    .registers 13
    .param p1, "requestId"    # I
    .param p2, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .local p4, "jpegSurfaceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "i":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    .line 50
    .local v3, "r":Landroid/hardware/camera2/CaptureRequest;
    iget-object v7, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;

    move v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;-><init>(IILandroid/hardware/camera2/CaptureRequest;ZLjava/util/Collection;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_f

    .line 54
    .end local v3    # "r":Landroid/hardware/camera2/CaptureRequest;
    :cond_2b
    iput-boolean p2, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRepeating:Z

    .line 55
    iput p1, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestId:I

    .line 56
    return-void
.end method


# virtual methods
.method public getNumberOfRequests()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRequestId()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestId:I

    return v0
.end method

.method public isRepeating()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRepeating:Z

    return v0
.end method

.method public produceRequestHolders(J)Ljava/util/List;
    .registers 10
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    const/4 v2, 0x0

    .line 88
    .local v2, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/BurstHolder;->mRequestBuilders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/RequestHolder$Builder;

    .line 89
    .local v0, "b":Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    int-to-long v4, v2

    add-long/2addr v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/legacy/RequestHolder$Builder;->build(J)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_c

    .line 92
    .end local v0    # "b":Landroid/hardware/camera2/legacy/RequestHolder$Builder;
    :cond_24
    return-object v1
.end method
