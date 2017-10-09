.class Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$3;
.super Ljava/lang/Object;
.source "KeyguardEffectViewGeometricMosaic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "GeometricMosaic sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$3;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 361
    return-void
.end method
