.class public abstract Landroid/view/HardwareCanvas;
.super Landroid/graphics/Canvas;
.source "HardwareCanvas.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p0, p1}, Landroid/view/GLES20Canvas;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method public callDrawGLFunction(J)I
    .registers 4
    .param p1, "drawGLFunction"    # J

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public abstract drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
.end method

.method public abstract drawRenderNode(Landroid/view/RenderNode;Landroid/graphics/Rect;I)I
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .registers 4
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;Landroid/graphics/Rect;I)I

    .line 68
    return-void
.end method

.method public abstract drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPostDraw()V
.end method

.method public abstract onPreDraw(Landroid/graphics/Rect;)I
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
