.class final Landroid/hardware/camera2/impl/CameraMetadataNative$4;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/hardware/camera2/impl/GetCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 4
    .param p1, "metadata"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    # invokes: Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaceRectangles()[Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->access$200(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
