.class Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RangeModeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 795
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 796
    const-string v3, "com.sec.android.extra.ARRAGE_MODE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 798
    .local v0, "mode":I
    const/16 v3, 0x8

    if-ne v0, v3, :cond_4d

    .line 800
    # setter for: Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1202(Z)Z

    .line 809
    .end local v0    # "mode":I
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_4c

    .line 810
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v6, 0x3fe

    # getter for: Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$1200()Z

    move-result v7

    if-eqz v7, :cond_51

    :goto_41
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 813
    :cond_4c
    return-void

    .line 803
    .restart local v0    # "mode":I
    :cond_4d
    # setter for: Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1202(Z)Z

    goto :goto_1b

    .end local v0    # "mode":I
    :cond_51
    move v1, v2

    .line 810
    goto :goto_41
.end method
