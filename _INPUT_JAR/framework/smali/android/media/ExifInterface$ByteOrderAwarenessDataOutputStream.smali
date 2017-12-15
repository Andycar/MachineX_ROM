.class Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteOrderAwarenessDataOutputStream"
.end annotation


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 2483
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2484
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 2485
    iput-object p2, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2486
    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .registers 2
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 2489
    iput-object p1, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2490
    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2493
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2494
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2497
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2498
    return-void
.end method

.method public writeByte(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2501
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2502
    return-void
.end method

.method public writeInt(I)V
    .registers 4
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2515
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_2b

    .line 2516
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2517
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2518
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2519
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2526
    :cond_2a
    :goto_2a
    return-void

    .line 2520
    :cond_2b
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_2a

    .line 2521
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2522
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2523
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2524
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2a
.end method

.method public writeShort(S)V
    .registers 4
    .param p1, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2505
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_19

    .line 2506
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2507
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2512
    :cond_18
    :goto_18
    return-void

    .line 2508
    :cond_19
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_18

    .line 2509
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2510
    iget-object v0, p0, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_18
.end method

.method public writeUnsignedInt(J)V
    .registers 4
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2533
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeInt(I)V

    .line 2534
    return-void
.end method

.method public writeUnsignedShort(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2529
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeShort(S)V

    .line 2530
    return-void
.end method
