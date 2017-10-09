.class Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;
.super Ljava/lang/Object;
.source "KeyguardVoiceWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->refreshVoiceUnlockHelpText()V
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
    .line 90
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$600(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_swipe_voice_unlock_guide_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$202(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$200(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
