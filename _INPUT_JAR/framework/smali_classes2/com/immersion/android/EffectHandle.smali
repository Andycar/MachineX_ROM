.class public Lcom/immersion/android/EffectHandle;
.super Lcom/immersion/EffectHandle;
.source "EffectHandle.java"


# direct methods
.method protected constructor <init>(II)V
    .registers 3
    .param p1, "hDeviceHandle"    # I
    .param p2, "hEffectHandle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/immersion/EffectHandle;-><init>(II)V

    .line 31
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 4

    .prologue
    const/high16 v2, 0x30000000

    const/4 v1, -0x1

    .line 62
    iget v0, p0, Lcom/immersion/android/EffectHandle;->hDeviceHandle:I

    if-eq v1, v0, :cond_1b

    iget v0, p0, Lcom/immersion/android/EffectHandle;->hEffectHandle:I

    if-eq v1, v0, :cond_1b

    iget v0, p0, Lcom/immersion/android/EffectHandle;->hEffectHandle:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1b

    .line 66
    invoke-static {}, Lcom/immersion/android/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/android/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/android/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->destroyStreamingEffect(II)V

    .line 68
    :cond_1b
    return-void
.end method
