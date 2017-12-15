.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFullLongArray(Ljava/io/DataInputStream;)[J
    .registers 7
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 642
    .local v1, "size":I
    if-gez v1, :cond_f

    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "negative array size"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :cond_f
    new-array v2, v1, [J

    .line 644
    .local v2, "values":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v3, v2

    if-ge v0, v3, :cond_1e

    .line 645
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 647
    :cond_1e
    return-object v2
.end method

.method public static readVarLong(Ljava/io/DataInputStream;)J
    .registers 7
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 656
    .local v2, "result":J
    :goto_3
    const/16 v4, 0x40

    if-ge v1, v4, :cond_18

    .line 657
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 658
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 659
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_15

    .line 660
    return-wide v2

    .line 661
    :cond_15
    add-int/lit8 v1, v1, 0x7

    .line 662
    goto :goto_3

    .line 663
    .end local v0    # "b":B
    :cond_18
    new-instance v4, Ljava/net/ProtocolException;

    const-string/jumbo v5, "malformed long"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static readVarLongArray(Ljava/io/DataInputStream;)[J
    .registers 7
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 683
    .local v1, "size":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_9

    const/4 v2, 0x0

    .line 689
    :cond_8
    return-object v2

    .line 684
    :cond_9
    if-gez v1, :cond_14

    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "negative array size"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 685
    :cond_14
    new-array v2, v1, [J

    .line 686
    .local v2, "values":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 687
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInputStream;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public static writeVarLong(Ljava/io/DataOutputStream;J)V
    .registers 8
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 672
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 673
    return-void

    .line 675
    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 676
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static writeVarLongArray(Ljava/io/DataOutputStream;[JI)V
    .registers 7
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "values"    # [J
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    if-nez p1, :cond_7

    .line 695
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 705
    :cond_6
    return-void

    .line 698
    :cond_7
    array-length v1, p1

    if-le p2, v1, :cond_13

    .line 699
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size larger than length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 701
    :cond_13
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, p2, :cond_6

    .line 703
    aget-wide v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutputStream;J)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method
