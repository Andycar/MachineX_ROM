.class Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCardConstants$State;

.field public subscription:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "sub"    # I

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 565
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->subscription:I

    .line 566
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 571
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 572
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 574
    :cond_0
    const-string v7, "subscription"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 575
    .local v4, "subId":J
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId(J)I

    move-result v6

    .line 577
    .local v6, "subscription":I
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_SIM_STATE_CHANGED intent received on sub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v7, "ss"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v7, "ABSENT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 581
    const-string v7, "reason"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "absentReason":Ljava/lang/String;
    const-string v7, "PERM_DISABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 586
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 615
    .end local v0    # "absentReason":Ljava/lang/String;
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    new-instance v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v7, v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-object v7

    .line 588
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 590
    .end local v0    # "absentReason":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string v7, "READY"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 591
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 592
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v7, "LOCKED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 593
    const-string v7, "reason"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v7, "PIN"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 596
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 597
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v7, "PUK"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 598
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 599
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSIMPersoFeatureEnable()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "PERSO"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 601
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 603
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 605
    .end local v1    # "lockedReason":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    const-string v7, "NETWORK"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 606
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 607
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8
    const-string v7, "LOADED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "IMSI"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 611
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 613
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
