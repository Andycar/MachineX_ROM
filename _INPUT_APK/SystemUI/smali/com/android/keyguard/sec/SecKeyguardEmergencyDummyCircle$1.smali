.class Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardEmergencyDummyCircle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;
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
    .line 104
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 4
    .param p1, "phoneState"    # I

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$200(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 116
    .local v0, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPhoneStateChanged() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 118
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$000(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 109
    .local v0, "phoneState":I
    const-string v1, "SecKeyguardEmergencyDummyCircle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimStateChanged() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v1, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 111
    return-void
.end method
