.class Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;
.super Landroid/telephony/PhoneStateListener;
.source "SecKeyguardEmergencyDummyCircle.java"


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
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 163
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceStateChanged(SLOT1) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$300(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 165
    .local v0, "phoneState":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$400(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 167
    .local v1, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$502(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;I)I

    .line 169
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    invoke-static {v2, v1, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->access$100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 170
    return-void
.end method
