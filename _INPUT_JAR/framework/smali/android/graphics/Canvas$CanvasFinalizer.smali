.class final Landroid/graphics/Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field private mNativeCanvasWrapper:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "nativeCanvas"    # J

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvasWrapper:J

    .line 104
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    iget-wide v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvasWrapper:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 117
    iget-wide v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvasWrapper:J

    # invokes: Landroid/graphics/Canvas;->finalizer(J)V
    invoke-static {v0, v1}, Landroid/graphics/Canvas;->access$000(J)V

    .line 118
    iput-wide v2, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvasWrapper:J

    .line 120
    :cond_f
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas$CanvasFinalizer;->dispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void

    .line 111
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
