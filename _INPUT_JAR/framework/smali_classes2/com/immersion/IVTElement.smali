.class public Lcom/immersion/IVTElement;
.super Ljava/lang/Object;
.source "IVTElement.java"


# instance fields
.field private time:I

.field private type:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "time"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/immersion/IVTElement;->setType(I)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/immersion/IVTElement;->setTime(I)V

    .line 41
    return-void
.end method

.method static newIVTElement([I)Lcom/immersion/IVTElement;
    .registers 13
    .param p0, "pElement"    # [I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 53
    const/4 v10, 0x0

    .line 55
    .local v10, "retVal":Lcom/immersion/IVTElement;
    if-eqz p0, :cond_e

    .line 57
    const/4 v0, 0x0

    aget v0, p0, v0

    packed-switch v0, :pswitch_data_80

    .line 76
    :cond_e
    :goto_e
    return-object v10

    .line 60
    :pswitch_f
    new-instance v10, Lcom/immersion/IVTMagSweepElement;

    .end local v10    # "retVal":Lcom/immersion/IVTElement;
    aget v9, p0, v1

    new-instance v0, Lcom/immersion/MagSweepEffectDefinition;

    aget v1, p0, v3

    aget v2, p0, v2

    aget v3, p0, v4

    aget v4, p0, v5

    const/4 v5, 0x6

    aget v5, p0, v5

    const/4 v6, 0x7

    aget v6, p0, v6

    const/16 v7, 0x8

    aget v7, p0, v7

    const/16 v8, 0x9

    aget v8, p0, v8

    invoke-direct/range {v0 .. v8}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    invoke-direct {v10, v9, v0}, Lcom/immersion/IVTMagSweepElement;-><init>(ILcom/immersion/MagSweepEffectDefinition;)V

    .line 61
    .restart local v10    # "retVal":Lcom/immersion/IVTElement;
    goto :goto_e

    .line 64
    :pswitch_32
    new-instance v10, Lcom/immersion/IVTPeriodicElement;

    .end local v10    # "retVal":Lcom/immersion/IVTElement;
    aget v11, p0, v1

    new-instance v0, Lcom/immersion/PeriodicEffectDefinition;

    aget v1, p0, v3

    aget v2, p0, v2

    aget v3, p0, v4

    aget v4, p0, v5

    const/4 v5, 0x6

    aget v5, p0, v5

    const/4 v6, 0x7

    aget v6, p0, v6

    const/16 v7, 0x8

    aget v7, p0, v7

    const/16 v8, 0x9

    aget v8, p0, v8

    const/16 v9, 0xa

    aget v9, p0, v9

    invoke-direct/range {v0 .. v9}, Lcom/immersion/PeriodicEffectDefinition;-><init>(IIIIIIIII)V

    invoke-direct {v10, v11, v0}, Lcom/immersion/IVTPeriodicElement;-><init>(ILcom/immersion/PeriodicEffectDefinition;)V

    .line 65
    .restart local v10    # "retVal":Lcom/immersion/IVTElement;
    goto :goto_e

    .line 68
    :pswitch_59
    new-instance v10, Lcom/immersion/IVTWaveformElement;

    .end local v10    # "retVal":Lcom/immersion/IVTElement;
    aget v7, p0, v1

    new-instance v0, Lcom/immersion/WaveformEffectDefinition;

    const/4 v1, 0x0

    aget v2, p0, v2

    aget v3, p0, v4

    aget v4, p0, v5

    const/4 v5, 0x6

    aget v5, p0, v5

    const/4 v6, 0x7

    aget v6, p0, v6

    invoke-direct/range {v0 .. v6}, Lcom/immersion/WaveformEffectDefinition;-><init>([BIIIII)V

    invoke-direct {v10, v7, v0}, Lcom/immersion/IVTWaveformElement;-><init>(ILcom/immersion/WaveformEffectDefinition;)V

    .line 69
    .restart local v10    # "retVal":Lcom/immersion/IVTElement;
    goto :goto_e

    .line 72
    :pswitch_73
    new-instance v10, Lcom/immersion/IVTRepeatElement;

    .end local v10    # "retVal":Lcom/immersion/IVTElement;
    aget v0, p0, v1

    aget v1, p0, v3

    aget v2, p0, v2

    invoke-direct {v10, v0, v1, v2}, Lcom/immersion/IVTRepeatElement;-><init>(III)V

    .restart local v10    # "retVal":Lcom/immersion/IVTElement;
    goto :goto_e

    .line 57
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_32
        :pswitch_f
        :pswitch_73
        :pswitch_59
    .end packed-switch
.end method


# virtual methods
.method public getBuffer()[I
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/immersion/IVTElement;->time:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/immersion/IVTElement;->type:I

    return v0
.end method

.method public setTime(I)V
    .registers 2
    .param p1, "time"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/immersion/IVTElement;->time:I

    .line 118
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/immersion/IVTElement;->type:I

    .line 92
    return-void
.end method
