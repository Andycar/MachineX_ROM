.class Lcom/android/keyguard/sec/KeyguardVoiceWrapper$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardVoiceWrapper.java"


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
    .line 206
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$2;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 209
    const-string v3, "com.samsung.cover.OPEN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    const-string v3, "coverOpen"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 211
    .local v1, "isCoverOpen":Z
    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 216
    .local v0, "isAutoUnlock":Z
    :goto_0
    if-nez v0, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$2;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->resumeVoiceThread()V

    .line 222
    .end local v0    # "isAutoUnlock":Z
    .end local v1    # "isCoverOpen":Z
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "isCoverOpen":Z
    :cond_1
    move v0, v2

    .line 214
    goto :goto_0

    .line 219
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$2;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->pauseVoiceThread()V

    goto :goto_1
.end method
