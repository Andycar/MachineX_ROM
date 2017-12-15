.class public Landroid/net/NetworkStats$Entry;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public iface:Ljava/lang/String;

.field public operations:J

.field public rxBytes:J

.field public rxPackets:J

.field public set:I

.field public tag:I

.field public txBytes:J

.field public txPackets:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 17

    .prologue
    .line 92
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 93
    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .registers 28
    .param p1, "rxBytes"    # J
    .param p3, "rxPackets"    # J
    .param p5, "txBytes"    # J
    .param p7, "txPackets"    # J
    .param p9, "operations"    # J

    .prologue
    .line 96
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJJJJJ)V
    .registers 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 103
    iput p2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 104
    iput p3, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 105
    iput p4, p0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 106
    iput-wide p5, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 107
    iput-wide p7, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 108
    iput-wide p9, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 109
    iput-wide p11, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 110
    iput-wide p13, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 111
    return-void
.end method


# virtual methods
.method public add(Landroid/net/NetworkStats$Entry;)V
    .registers 6
    .param p1, "another"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 123
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 124
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 125
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 126
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 127
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 128
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 166
    instance-of v2, p1, Landroid/net/NetworkStats$Entry;

    if-eqz v2, :cond_4d

    move-object v0, p1

    .line 167
    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 168
    .local v0, "e":Landroid/net/NetworkStats$Entry;
    iget v2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, v3, :cond_4d

    iget v2, p0, Landroid/net/NetworkStats$Entry;->set:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    if-ne v2, v3, :cond_4d

    iget v2, p0, Landroid/net/NetworkStats$Entry;->tag:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne v2, v3, :cond_4d

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4d

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4d

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4d

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4d

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4d

    iget-object v2, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v1, 0x1

    .line 173
    .end local v0    # "e":Landroid/net/NetworkStats$Entry;
    :cond_4d
    return v1
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 118
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isNegative()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 114
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_20

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_20

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_20

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_20

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public remove(JJ)V
    .registers 8
    .param p1, "bytes"    # J
    .param p3, "packets"    # J

    .prologue
    .line 133
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 134
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v0, p3

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 136
    return-void
.end method

.method public resetData()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 141
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 142
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 143
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 144
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, " set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, " rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, " rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, " txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, " txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, " operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
