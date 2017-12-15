.class Lcom/android/server/SecExternalDisplayService$1;
.super Landroid/os/UEventObserver;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$1;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 192
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "EventState":I
    # getter for: Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 194
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Kernel Event with EventState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_28
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 196
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 197
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService$1;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/SecExternalDisplayService;->access$100(Lcom/android/server/SecExternalDisplayService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    return-void
.end method
