.class Lcom/android/server/display/IpRemoteDisplayController$11;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$event:I

.field final synthetic val$param:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;II)V
    .registers 4

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$param:I

    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$param:I

    iget v4, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$event:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 767
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 768
    return-void
.end method
