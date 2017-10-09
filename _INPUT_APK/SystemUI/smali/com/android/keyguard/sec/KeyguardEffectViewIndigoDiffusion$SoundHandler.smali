.class public Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;
.super Landroid/os/Handler;
.source "KeyguardEffectViewIndigoDiffusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 312
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    const v1, 0x3e4ccccd    # 0.2f

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg2:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 315
    .local v0, "volume":F
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0, v0}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 317
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput-object v2, v1, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    .line 320
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 321
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 322
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    .end local v0    # "volume":F
    :cond_0
    return-void
.end method
