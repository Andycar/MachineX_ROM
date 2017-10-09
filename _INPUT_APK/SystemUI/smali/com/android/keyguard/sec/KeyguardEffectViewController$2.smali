.class Lcom/android/keyguard/sec/KeyguardEffectViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff(I)V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$702(J)J

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$800(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$900(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$802(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->screenTurnedOff()V

    .line 319
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$600(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->screenTurnedOn()V

    .line 307
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 297
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** onUserSwitching - userId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$402(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    .line 302
    return-void
.end method
