.class Landroid/filterpacks/videosrc/SurfaceTextureSource$1;
.super Ljava/lang/Object;
.source "SurfaceTextureSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/SurfaceTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 250
    # getter for: Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z
    invoke-static {}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "SurfaceTextureSource"

    const-string v1, "New frame from SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_d
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    # getter for: Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;
    invoke-static {v0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->access$100(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 252
    return-void
.end method
