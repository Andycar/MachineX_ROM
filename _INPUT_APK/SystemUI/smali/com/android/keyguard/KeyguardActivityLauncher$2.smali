.class Lcom/android/keyguard/KeyguardActivityLauncher$2;
.super Ljava/lang/Object;
.source "KeyguardActivityLauncher.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

.field final synthetic val$animation:Landroid/os/Bundle;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$onStarted:Ljava/lang/Runnable;

.field final synthetic val$worker:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->val$animation:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->val$worker:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->val$onStarted:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$100(Lcom/android/keyguard/KeyguardActivityLauncher;)V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->val$animation:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->val$worker:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardActivityLauncher$2;->val$onStarted:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$000(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 228
    const/4 v0, 0x1

    return v0
.end method
