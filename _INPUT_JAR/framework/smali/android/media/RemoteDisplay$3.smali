.class Landroid/media/RemoteDisplay$3;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayDisconnected()V
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
    .line 223
    iput-object p1, p0, Landroid/media/RemoteDisplay$3;->this$0:Landroid/media/RemoteDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Landroid/media/RemoteDisplay$3;->this$0:Landroid/media/RemoteDisplay;

    # getter for: Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;
    invoke-static {v0}, Landroid/media/RemoteDisplay;->access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/RemoteDisplay$Listener;->onDisplayDisconnected()V

    .line 227
    return-void
.end method
