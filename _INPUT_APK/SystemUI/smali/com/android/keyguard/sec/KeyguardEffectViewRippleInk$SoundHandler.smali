.class public Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;
.super Landroid/os/Handler;
.source "KeyguardEffectViewRippleInk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 276
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    const v1, 0x3e4ccccd    # 0.2f

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg2:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 279
    .local v0, "volume":F
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0, v0}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 281
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput-object v2, v1, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    .line 284
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 285
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 286
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    .end local v0    # "volume":F
    :cond_0
    return-void
.end method
