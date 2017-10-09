.class Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "IndigoDiffusion sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$202(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 246
    return-void
.end method
