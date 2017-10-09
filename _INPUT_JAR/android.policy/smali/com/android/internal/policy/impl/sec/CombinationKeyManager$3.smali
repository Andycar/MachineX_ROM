.class Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V
    .registers 2

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 637
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSafetyCare()Z

    move-result v3

    if-nez v3, :cond_28

    .line 638
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v2, "safetyMessage":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 640
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v7, v4, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 641
    const-string v3, "CombinationKeyManager"

    const-string v4, "Safety mesage broadcasted"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .end local v2    # "safetyMessage":Landroid/content/Intent;
    :cond_28
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 646
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "intent":Landroid/content/Intent;
    :try_start_3d
    # getter for: Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 650
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const-string v5, "114"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    move-object v0, v1

    .line 654
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_54
    const-string v3, "startFlag"

    const-string v4, "002"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 656
    const-string v3, "CombinationKeyManager"

    const-string v4, "OneTouchReport started"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_6e} :catch_ac

    .line 661
    :goto_6e
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v4, 0xe

    invoke-virtual {v3, v7, v4, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 668
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_77
    :goto_77
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 669
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_91

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 670
    :cond_91
    return-void

    .line 652
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_92
    :try_start_92
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const-string v5, "112"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a2} :catch_ac

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_54

    .line 663
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_a4
    const-string v3, "CombinationKeyManager"

    const-string v4, "OneTouchReport was disable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 658
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_ac
    move-exception v3

    goto :goto_6e
.end method
