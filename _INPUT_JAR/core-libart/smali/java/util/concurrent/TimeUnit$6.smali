.class final enum Ljava/util/concurrent/TimeUnit$6;
.super Ljava/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/TimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public convert(JLjava/util/concurrent/TimeUnit;)J
    .registers 7
    .param p1, "d"    # J
    .param p3, "u"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 106
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .registers 6
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .registers 6
    .param p1, "d"    # J

    .prologue
    .line 105
    const-wide/16 v0, 0x18

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .registers 4
    .param p1, "d"    # J

    .prologue
    .line 104
    return-wide p1
.end method

.method public toMicros(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 100
    const-wide v2, 0xd693a400L

    const-wide v4, 0x98b5bf2cL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 101
    const-wide/32 v2, 0x36ee80

    const-wide v4, 0x25485f2c3efL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 103
    const-wide/16 v2, 0x3c

    const-wide v4, 0x222222222222222L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toNanos(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 99
    const-wide v2, 0x34630b8a000L

    const-wide/32 v4, 0x2717ff

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 102
    const-wide/16 v2, 0xe10

    const-wide v4, 0x91a2b3c4d5e6fL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
