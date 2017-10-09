.class Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewSummer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer$1;->this$0:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer$1;->this$0:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    invoke-static {v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;->access$000(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer$1;->this$0:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    invoke-static {v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;->access$000(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer$1;->this$0:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;->access$002(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer$1;->this$0:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;->access$102(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
