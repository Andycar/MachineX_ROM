.class final enum Ljava/util/concurrent/TimeUnit$4;
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
    .line 76
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
    .line 84
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .registers 6
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .registers 6
    .param p1, "d"    # J

    .prologue
    .line 83
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .registers 6
    .param p1, "d"    # J

    .prologue
    .line 82
    const-wide/16 v0, 0xe10

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 78
    const-wide/32 v2, 0xf4240

    const-wide v4, 0x8637bd05af6L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 79
    const-wide/16 v2, 0x3e8

    const-wide v4, 0x20c49ba5e353f7L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .registers 6
    .param p1, "d"    # J

    .prologue
    .line 81
    const-wide/16 v0, 0x3c

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toNanos(J)J
    .registers 10
    .param p1, "d"    # J

    .prologue
    .line 77
    const-wide/32 v2, 0x3b9aca00

    const-wide v4, 0x225c17d04L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .registers 4
    .param p1, "d"    # J

    .prologue
    .line 80
    return-wide p1
.end method
