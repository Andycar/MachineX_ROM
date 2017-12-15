.class abstract Landroid/speech/tts/AbstractSynthesisCallback;
.super Ljava/lang/Object;
.source "AbstractSynthesisCallback.java"

# interfaces
.implements Landroid/speech/tts/SynthesisCallback;


# instance fields
.field protected final mClientIsUsingV2:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2
    .param p1, "clientIsUsingV2"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Landroid/speech/tts/AbstractSynthesisCallback;->mClientIsUsingV2:Z

    .line 39
    return-void
.end method


# virtual methods
.method errorCodeOnStop()I
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/speech/tts/AbstractSynthesisCallback;->mClientIsUsingV2:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method abstract stop()V
.end method
