.class final Landroid/hardware/camera2/impl/CameraMetadataNative$16;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/hardware/camera2/impl/SetCommand;


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
    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V
    .registers 3
    .param p1, "metadata"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 952
    .local p2, "value":Ljava/lang/Object;, "TT;"
    check-cast p2, [Landroid/graphics/Rect;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    check-cast p2, [Landroid/graphics/Rect;

    # invokes: Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaceRectangles([Landroid/graphics/Rect;)Z
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->access$1000(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/graphics/Rect;)Z

    .line 953
    return-void
.end method
