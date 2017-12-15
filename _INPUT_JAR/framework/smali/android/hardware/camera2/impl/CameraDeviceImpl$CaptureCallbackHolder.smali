.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureCallbackHolder"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mRepeating:Z

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;Z)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    if-eqz p1, :cond_7

    if-nez p3, :cond_f

    .line 925
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must have a valid handler and a valid callback"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_f
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    .line 929
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    .line 931
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 932
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 963
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(I)Landroid/hardware/camera2/CaptureRequest;
    .registers 8
    .param p1, "subsequenceId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 943
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2b

    .line 944
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested subsequenceId %d is larger than request list size %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_2b
    if-gez p1, :cond_41

    .line 950
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested subsequenceId %d is negative"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_41
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public isRepeating()Z
    .registers 2

    .prologue
    .line 935
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    return v0
.end method
