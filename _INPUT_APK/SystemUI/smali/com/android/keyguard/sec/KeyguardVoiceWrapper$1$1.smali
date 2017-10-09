.class Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;
.super Ljava/lang/Object;
.source "KeyguardVoiceWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->setVoiceRecognitionFailCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$102(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;Z)Z

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->refreshDefaultHelpText()Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$200(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    return-void
.end method
