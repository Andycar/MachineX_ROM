.class public Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "WakeUpVoiceImpl.java"


# static fields
.field private static final MAXIMUM_BUFFER_SIZE:I = 0x1fffe

.field private static final MAXIMUM_RETRY_TIMES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "scontext.provider.caeprovider.WakeUpVoiceImpl"


# instance fields
.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # I
    .param p3, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 49
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p3}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mMode:I

    .line 51
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 52
    return-void
.end method

.method private divideReferenceData(I[B)Z
    .registers 9
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "res":Z
    if-nez p2, :cond_5

    move v3, v2

    .line 102
    .end local v2    # "res":Z
    .local v3, "res":I
    :goto_4
    return v3

    .line 91
    .end local v3    # "res":I
    .restart local v2    # "res":Z
    :cond_5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const v4, 0x1fffe

    .line 94
    .local v4, "size":I
    :goto_c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_26

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_1c

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 98
    :cond_1c
    new-array v1, v4, [B

    .line 99
    .local v1, "dividedData":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->sendReferenceDataToCAE(I[B)Z

    move-result v2

    .line 101
    goto :goto_c

    .end local v1    # "dividedData":[B
    :cond_26
    move v3, v2

    .line 102
    .restart local v3    # "res":I
    goto :goto_4
.end method

.method private sendReferenceDataToCAE(I[B)Z
    .registers 10
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "res":Z
    if-eqz p2, :cond_9

    iget v2, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mMode:I

    if-ne v2, v6, :cond_b

    :cond_9
    move v2, v1

    .line 140
    :goto_a
    return v2

    .line 118
    :cond_b
    const/4 v0, 0x0

    .line 121
    .local v0, "cnt":I
    :cond_c
    if-ne p1, v5, :cond_5c

    .line 122
    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v3, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4, p2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v1

    .line 129
    :cond_18
    :goto_18
    add-int/lit8 v0, v0, 0x1

    .line 130
    if-ne v1, v5, :cond_69

    .line 131
    const-string/jumbo v2, "scontext.provider.caeprovider.WakeUpVoiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendReferenceDataToCAE() : data_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string/jumbo v2, "scontext.provider.caeprovider.WakeUpVoiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendReferenceDataToCAE() : data_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 140
    goto :goto_a

    .line 124
    :cond_5c
    if-ne p1, v6, :cond_18

    .line 125
    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v3, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4, p2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v1

    goto :goto_18

    .line 134
    :cond_69
    const/4 v2, 0x5

    if-le v0, v2, :cond_c

    .line 135
    const/4 v2, 0x0

    goto :goto_a
.end method


# virtual methods
.method public setReferenceData(I[B)Z
    .registers 7
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "res":Z
    if-nez p2, :cond_5

    move v1, v0

    .line 75
    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_4
    return v1

    .line 70
    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_5
    array-length v2, p2

    const v3, 0x1fffe

    if-ge v2, v3, :cond_11

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->sendReferenceDataToCAE(I[B)Z

    move-result v0

    :goto_f
    move v1, v0

    .line 75
    .restart local v1    # "res":I
    goto :goto_4

    .line 73
    .end local v1    # "res":I
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;->divideReferenceData(I[B)Z

    move-result v0

    goto :goto_f
.end method
