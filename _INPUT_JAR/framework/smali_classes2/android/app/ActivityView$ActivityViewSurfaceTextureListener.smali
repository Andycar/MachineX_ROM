.class Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityViewSurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .registers 2

    .prologue
    .line 277
    iput-object p1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/app/ActivityView;
    .param p2, "x1"    # Landroid/app/ActivityView$1;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;-><init>(Landroid/app/ActivityView;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 281
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    invoke-static {v0}, Landroid/app/ActivityView;->access$100(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    move-result-object v0

    if-nez v0, :cond_9

    .line 289
    :goto_8
    return-void

    .line 286
    :cond_9
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # setter for: Landroid/app/ActivityView;->mWidth:I
    invoke-static {v0, p2}, Landroid/app/ActivityView;->access$202(Landroid/app/ActivityView;I)I

    .line 287
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # setter for: Landroid/app/ActivityView;->mHeight:I
    invoke-static {v0, p3}, Landroid/app/ActivityView;->access$302(Landroid/app/ActivityView;I)I

    .line 288
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # invokes: Landroid/app/ActivityView;->attachToSurfaceWhenReady()V
    invoke-static {v0}, Landroid/app/ActivityView;->access$400(Landroid/app/ActivityView;)V

    goto :goto_8
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 9
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 302
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    invoke-static {v1}, Landroid/app/ActivityView;->access$100(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    move-result-object v1

    if-nez v1, :cond_b

    .line 314
    :goto_a
    return v6

    .line 306
    :cond_b
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;
    invoke-static {v1}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 307
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # setter for: Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;
    invoke-static {v1, v2}, Landroid/app/ActivityView;->access$502(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 309
    :try_start_19
    iget-object v1, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    invoke-static {v1}, Landroid/app/ActivityView;->access$100(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mWidth:I
    invoke-static {v3}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)I

    move-result v3

    iget-object v4, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mHeight:I
    invoke-static {v4}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)I

    move-result v4

    iget-object v5, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    iget-object v5, v5, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_35} :catch_36

    goto :goto_a

    .line 310
    :catch_36
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityView: Unable to set surface of ActivityContainer. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 294
    iget-object v0, p0, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;->this$0:Landroid/app/ActivityView;

    # getter for: Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    invoke-static {v0}, Landroid/app/ActivityView;->access$100(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    .line 298
    :cond_8
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 320
    return-void
.end method
