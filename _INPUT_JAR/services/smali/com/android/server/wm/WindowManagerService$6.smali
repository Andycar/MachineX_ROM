.class Lcom/android/server/wm/WindowManagerService$6;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$callback:Landroid/view/IOnKeyguardExitResult;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V
    .registers 3

    .prologue
    .line 6880
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$6;->val$callback:Landroid/view/IOnKeyguardExitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 3
    .param p1, "success"    # Z

    .prologue
    .line 6884
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$6;->val$callback:Landroid/view/IOnKeyguardExitResult;

    invoke-interface {v0, p1}, Landroid/view/IOnKeyguardExitResult;->onKeyguardExitResult(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6888
    :goto_5
    return-void

    .line 6885
    :catch_6
    move-exception v0

    goto :goto_5
.end method
