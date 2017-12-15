.class public Landroid/telecom/VideoProfile$VideoState;
.super Ljava/lang/Object;
.source "VideoProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoState"
.end annotation


# static fields
.field public static final AUDIO_ONLY:I = 0x0

.field public static final BIDIRECTIONAL:I = 0x3

.field public static final PAUSED:I = 0x4

.field public static final RX_ENABLED:I = 0x2

.field public static final TX_ENABLED:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasState(II)Z
    .registers 3
    .param p0, "videoState"    # I
    .param p1, "state"    # I

    .prologue
    .line 228
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isAudioOnly(I)Z
    .registers 3
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isBidirectional(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .prologue
    .line 207
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isPaused(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .prologue
    .line 216
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isReceptionEnabled(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .prologue
    .line 198
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isTransmissionEnabled(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v0

    return v0
.end method
