.class Lcom/android/keyguard/sec/SecKeyguardClockView$2;
.super Landroid/content/BroadcastReceiver;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x12cb

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    if-ne v1, v2, :cond_2

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SERVICE_STATE"

    if-ne v1, v2, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 87
    .local v0, "isNetworkRoaming":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
