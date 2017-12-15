.class Lcom/android/server/SecExternalDisplayService$2;
.super Landroid/os/Handler;
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
    .line 203
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_c

    .line 208
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayAlertMsg(I)V

    .line 211
    :cond_b
    :goto_b
    return-void

    .line 209
    :cond_c
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayService;->access$200(Lcom/android/server/SecExternalDisplayService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 210
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayService;->access$200(Lcom/android/server/SecExternalDisplayService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_b
.end method
