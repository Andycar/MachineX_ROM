.class public final Landroid/hardware/camera2/CaptureRequest$Builder;
.super Ljava/lang/Object;
.source "CaptureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 4
    .param p1, "template"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest$1;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 379
    return-void
.end method


# virtual methods
.method public addTarget(Landroid/view/Surface;)V
    .registers 3
    .param p1, "outputTarget"    # Landroid/view/Surface;

    .prologue
    .line 393
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$300(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method public build()Landroid/hardware/camera2/CaptureRequest;
    .registers 4

    .prologue
    .line 460
    new-instance v0, Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$1;)V

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$400(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$400(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeTarget(Landroid/view/Surface;)V
    .registers 3
    .param p1, "outputTarget"    # Landroid/view/Surface;

    .prologue
    .line 404
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$300(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$400(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 444
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # setter for: Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->access$502(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void
.end method
