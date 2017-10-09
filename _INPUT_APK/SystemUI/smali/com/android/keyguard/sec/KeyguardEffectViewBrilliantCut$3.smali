.class Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$3;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBrilliantCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "BrilliantCut_Keyguard"

    const-string v1, "BrilliantCut sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 383
    return-void
.end method
