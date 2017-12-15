.class Landroid/media/RemoteDisplay$1;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .registers 12
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    .line 70
    iget-object v0, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/RemoteDisplay;->notifyDisplayConnected(Landroid/view/Surface;IIII)V

    .line 71
    return-void
.end method

.method public onDisplayDisconnected()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->notifyDisplayDisconnected()V

    .line 74
    return-void
.end method

.method public onDisplayError(I)V
    .registers 3
    .param p1, "error"    # I

    .prologue
    .line 76
    iget-object v0, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplay;->notifyDisplayError(I)V

    .line 77
    return-void
.end method
