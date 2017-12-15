.class public final Landroid/nfc/tech/NfcA;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcA.java"


# static fields
.field public static final EXTRA_ATQA:Ljava/lang/String; = "atqa"

.field public static final EXTRA_SAK:Ljava/lang/String; = "sak"

.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mAtqa:[B

.field private mSak:S


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 7
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0, p1, v3}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 75
    const-string v1, "NXP_PN547C2"

    const-string v2, "BCM2079x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 76
    invoke-virtual {p1, v3}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "extras":Landroid/os/Bundle;
    :goto_14
    const-string/jumbo v1, "sak"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, p0, Landroid/nfc/tech/NfcA;->mSak:S

    .line 85
    const-string v1, "atqa"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    .line 86
    return-void

    .line 78
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_26
    invoke-virtual {p1, v4}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 79
    invoke-virtual {p1, v4}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "extras":Landroid/os/Bundle;
    goto :goto_14

    .line 81
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_31
    invoke-virtual {p1, v3}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "extras":Landroid/os/Bundle;
    goto :goto_14
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;
    .registers 4
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 65
    :goto_8
    return-object v1

    .line 63
    :cond_9
    :try_start_9
    new-instance v2, Landroid/nfc/tech/NfcA;

    invoke-direct {v2, p0}, Landroid/nfc/tech/NfcA;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-object v1, v2

    goto :goto_8

    .line 64
    :catch_10
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_8
.end method


# virtual methods
.method public bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getAtqa()[B
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .registers 2

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSak()S
    .registers 2

    .prologue
    .line 107
    iget-short v0, p0, Landroid/nfc/tech/NfcA;->mSak:S

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .registers 4

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/NfcA;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getTimeout(I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 182
    :goto_b
    return v1

    .line 180
    :catch_c
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .registers 6
    .param p1, "timeout"    # I

    .prologue
    .line 161
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/NfcA;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v1

    .line 162
    .local v1, "err":I
    if-eqz v1, :cond_1d

    .line 163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The supplied timeout is not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    .line 165
    .end local v1    # "err":I
    :catch_15
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    return-void
.end method

.method public transceive([B)[B
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcA;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
