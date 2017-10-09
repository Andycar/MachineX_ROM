.class Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;
.super Ljava/lang/Object;
.source "SecKeyguardEmergencyDummyCircle.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 248
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$500(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$800(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$500(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$500(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v1

    if-ne v1, v5, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$800(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$800(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 267
    :cond_1
    :goto_0
    return v0

    .line 260
    :cond_2
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$500(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$500(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$500(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$1100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
