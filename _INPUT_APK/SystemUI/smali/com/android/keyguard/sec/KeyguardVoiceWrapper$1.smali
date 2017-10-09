.class Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;
.super Ljava/lang/Object;
.source "KeyguardVoiceWrapper.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardVoiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshVoiceUnlockHelpText()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$300(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :cond_0
    return-void
.end method

.method public setVoiceRecognitionFailCue()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$300(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$400(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$500(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V

    .line 85
    :cond_0
    return-void
.end method
