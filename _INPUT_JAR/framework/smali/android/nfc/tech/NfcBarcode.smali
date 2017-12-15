.class public final Landroid/nfc/tech/NfcBarcode;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcBarcode.java"


# static fields
.field public static final EXTRA_BARCODE_TYPE:Ljava/lang/String; = "barcodetype"

.field public static final TYPE_KOVIO:I = 0x1

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 5
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xa

    .line 64
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 65
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_14

    .line 67
    const-string v1, "barcodetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    .line 71
    return-void

    .line 69
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcBarcode tech extras are null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;
    .registers 4
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v1, 0x0

    .line 51
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 55
    :goto_9
    return-object v1

    .line 53
    :cond_a
    :try_start_a
    new-instance v2, Landroid/nfc/tech/NfcBarcode;

    invoke-direct {v2, p0}, Landroid/nfc/tech/NfcBarcode;-><init>(Landroid/nfc/Tag;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-object v1, v2

    goto :goto_9

    .line 54
    :catch_11
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
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
    .line 29
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
    .line 29
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getBarcode()[B
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    packed-switch v0, :pswitch_data_e

    .line 127
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 125
    :pswitch_7
    iget-object v0, p0, Landroid/nfc/tech/NfcBarcode;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    goto :goto_6

    .line 122
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Landroid/nfc/tech/NfcBarcode;->mType:I

    return v0
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    .prologue
    .line 29
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
    .line 29
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method
