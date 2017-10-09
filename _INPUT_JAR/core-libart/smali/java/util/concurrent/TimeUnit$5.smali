.class final enum Ljava/util/concurrent/TimeUnit$5;
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
    .line 87
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
    .line 95
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .registers 6
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .registers 6
    .param p1, "d"    # J

    .prologue
    .line 94
    const-wide/16 v0, 0x5a0

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .registers 6
    .param p1, "d"    # J

    .prologue
    .line 93
    const-wide/16 v0, 0x3c

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 89
    const-wide/32 v2, 0x3938700

    const-wide v4, 0x23ca98ce50L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 90
    const-wide/32 v2, 0xea60

    const-wide v4, 0x8bcf64e5ec10L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .registers 4
    .param p1, "d"    # J

    .prologue
    .line 92
    return-wide p1
.end method

.method public toNanos(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 88
    const-wide v2, 0xdf8475800L

    const-wide/32 v4, 0x9299ff3

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 91
    const-wide/16 v2, 0x3c

    const-wide v4, 0x222222222222222L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
