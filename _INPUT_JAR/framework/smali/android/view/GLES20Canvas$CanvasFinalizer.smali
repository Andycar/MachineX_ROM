.class final Landroid/view/GLES20Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field private final mRenderer:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "renderer"    # J

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p1, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:J

    .line 102
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-wide v0, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:J

    # invokes: Landroid/view/GLES20Canvas;->nDestroyRenderer(J)V
    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->access$000(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 109
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 111
    return-void

    .line 109
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
