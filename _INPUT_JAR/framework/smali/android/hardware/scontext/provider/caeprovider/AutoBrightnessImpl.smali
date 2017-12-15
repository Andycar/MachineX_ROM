.class public Landroid/hardware/scontext/provider/caeprovider/AutoBrightnessImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "AutoBrightnessImpl.java"


# static fields
.field private static final MAXIMUM_RETRY_TIMES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "scontext.provider.caeprovider.AutoBrightnessImpl"


# instance fields
.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 42
    const/16 v0, 0x25

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    .line 44
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/AutoBrightnessImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 45
    return-void
.end method

.method private sendReferenceDataToCAE(I[B)Z
    .registers 8
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "res":Z
    if-nez p2, :cond_d

    .line 71
    const-string/jumbo v2, "scontext.provider.caeprovider.AutoBrightnessImpl"

    const-string v3, "data is Null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 93
    :goto_c
    return v2

    .line 75
    :cond_d
    const/4 v0, 0x0

    .line 78
    .local v0, "cnt":I
    :cond_e
    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/AutoBrightnessImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v3, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    const/16 v4, 0x41

    invoke-virtual {v2, v3, v4, p2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v1

    .line 80
    const-string/jumbo v2, "scontext.provider.caeprovider.AutoBrightnessImpl"

    const-string/jumbo v3, "sendReferenceDataToCAE() : config Data!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    const/4 v2, 0x1

    if-ne v1, v2, :cond_66

    .line 84
    const-string/jumbo v2, "scontext.provider.caeprovider.AutoBrightnessImpl"

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

    .line 92
    const-string/jumbo v2, "scontext.provider.caeprovider.AutoBrightnessImpl"

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

    .line 93
    goto :goto_c

    .line 87
    :cond_66
    const/4 v2, 0x5

    if-le v0, v2, :cond_e

    .line 88
    const/4 v2, 0x0

    goto :goto_c
.end method


# virtual methods
.method public setReferenceData(I[B)Z
    .registers 7
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "res":Z
    if-nez p2, :cond_e

    .line 52
    const-string/jumbo v2, "scontext.provider.caeprovider.AutoBrightnessImpl"

    const-string/jumbo v3, "setReferenceData() : data is Null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 58
    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_d
    return v1

    .line 55
    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/caeprovider/AutoBrightnessImpl;->sendReferenceDataToCAE(I[B)Z

    move-result v0

    .line 57
    const-string/jumbo v2, "scontext.provider.caeprovider.AutoBrightnessImpl"

    const-string/jumbo v3, "setReferenceData() : configuration mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 58
    .restart local v1    # "res":I
    goto :goto_d
.end method
