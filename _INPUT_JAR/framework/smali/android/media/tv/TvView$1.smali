.class Landroid/media/tv/TvView$1;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 112
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceFormat:I
    invoke-static {v0, p2}, Landroid/media/tv/TvView;->access$002(Landroid/media/tv/TvView;I)I

    .line 113
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceWidth:I
    invoke-static {v0, p3}, Landroid/media/tv/TvView;->access$102(Landroid/media/tv/TvView;I)I

    .line 114
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceHeight:I
    invoke-static {v0, p4}, Landroid/media/tv/TvView;->access$202(Landroid/media/tv/TvView;I)I

    .line 115
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x1

    # setter for: Landroid/media/tv/TvView;->mSurfaceChanged:Z
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$302(Landroid/media/tv/TvView;Z)Z

    .line 116
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceFormat:I
    invoke-static {v1}, Landroid/media/tv/TvView;->access$000(Landroid/media/tv/TvView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceWidth:I
    invoke-static {v2}, Landroid/media/tv/TvView;->access$100(Landroid/media/tv/TvView;)I

    move-result v2

    iget-object v3, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceHeight:I
    invoke-static {v3}, Landroid/media/tv/TvView;->access$200(Landroid/media/tv/TvView;)I

    move-result v3

    # invokes: Landroid/media/tv/TvView;->dispatchSurfaceChanged(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/tv/TvView;->access$400(Landroid/media/tv/TvView;III)V

    .line 117
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    # setter for: Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$502(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 122
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;
    invoke-static {v1}, Landroid/media/tv/TvView;->access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v1

    # invokes: Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$600(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 123
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->access$502(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 128
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    # setter for: Landroid/media/tv/TvView;->mSurfaceChanged:Z
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$302(Landroid/media/tv/TvView;Z)Z

    .line 129
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    # invokes: Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->access$600(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 130
    return-void
.end method
