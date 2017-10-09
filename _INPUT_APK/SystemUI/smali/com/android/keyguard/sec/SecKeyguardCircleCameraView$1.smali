.class Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;
.super Ljava/lang/Object;
.source "SecKeyguardCircleCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->launchActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 160
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->access$000(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 172
    :cond_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method
