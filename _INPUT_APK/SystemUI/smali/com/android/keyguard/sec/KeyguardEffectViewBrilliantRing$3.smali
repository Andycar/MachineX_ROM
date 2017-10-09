.class Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBrilliantRing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "BrilliantRing sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 356
    return-void
.end method
