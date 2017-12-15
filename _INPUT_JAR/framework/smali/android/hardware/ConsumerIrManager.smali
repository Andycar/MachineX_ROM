.class public final Landroid/hardware/ConsumerIrManager;
.super Ljava/lang/Object;
.source "ConsumerIrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConsumerIr"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/hardware/IConsumerIrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ConsumerIrManager;->mPackageName:Ljava/lang/String;

    .line 45
    const-string v0, "consumer_ir"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/IConsumerIrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IConsumerIrService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    .line 47
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v4, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    if-nez v4, :cond_f

    .line 135
    const-string v4, "ConsumerIr"

    const-string/jumbo v5, "no consumer ir service."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 153
    :cond_e
    :goto_e
    return-object v2

    .line 140
    :cond_f
    :try_start_f
    iget-object v4, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    invoke-interface {v4}, Landroid/hardware/IConsumerIrService;->getCarrierFrequencies()[I

    move-result-object v0

    .line 141
    .local v0, "freqs":[I
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_23

    .line 142
    const-string v4, "ConsumerIr"

    const-string v5, "consumer ir service returned an uneven number of frequencies."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 143
    goto :goto_e

    .line 145
    :cond_23
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    .line 147
    .local v2, "range":[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    array-length v4, v0

    if-ge v1, v4, :cond_e

    .line 148
    div-int/lit8 v4, v1, 0x2

    new-instance v5, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;

    aget v6, v0, v1

    add-int/lit8 v7, v1, 0x1

    aget v7, v0, v7

    invoke-direct {v5, p0, v6, v7}, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;-><init>(Landroid/hardware/ConsumerIrManager;II)V

    aput-object v5, v2, v4
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3b} :catch_3e

    .line 147
    add-int/lit8 v1, v1, 0x2

    goto :goto_29

    .line 151
    .end local v0    # "freqs":[I
    .end local v1    # "i":I
    .end local v2    # "range":[Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
    :catch_3e
    move-exception v4

    move-object v2, v3

    .line 153
    goto :goto_e
.end method

.method public hasIrEmitter()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    if-nez v1, :cond_e

    .line 56
    const-string v1, "ConsumerIr"

    const-string/jumbo v2, "no consumer ir service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_d
    return v0

    .line 61
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    invoke-interface {v1}, Landroid/hardware/IConsumerIrService;->hasIrEmitter()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v0

    goto :goto_d

    .line 62
    :catch_15
    move-exception v1

    goto :goto_d
.end method

.method public transmit(I[I)V
    .registers 6
    .param p1, "carrierFrequency"    # I
    .param p2, "pattern"    # [I

    .prologue
    .line 79
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    if-nez v1, :cond_c

    .line 80
    const-string v1, "ConsumerIr"

    const-string v2, "failed to transmit; no consumer ir service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_b
    return-void

    .line 85
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/hardware/ConsumerIrManager;->mService:Landroid/hardware/IConsumerIrService;

    iget-object v2, p0, Landroid/hardware/ConsumerIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/IConsumerIrService;->transmit(Ljava/lang/String;I[I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_b

    .line 86
    :catch_14
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ConsumerIr"

    const-string v2, "failed to transmit."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
