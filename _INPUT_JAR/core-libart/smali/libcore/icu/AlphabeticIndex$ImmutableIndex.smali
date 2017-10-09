.class public final Llibcore/icu/AlphabeticIndex$ImmutableIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmutableIndex"
.end annotation


# instance fields
.field private peer:J


# direct methods
.method private constructor <init>(J)V
    .registers 4
    .param p1, "peer"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    .line 36
    return-void
.end method

.method synthetic constructor <init>(JLlibcore/icu/AlphabeticIndex$1;)V
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Llibcore/icu/AlphabeticIndex$1;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;-><init>(J)V

    return-void
.end method

.method private static native getBucketCount(J)I
.end method

.method private static native getBucketIndex(JLjava/lang/String;)I
.end method

.method private static native getBucketLabel(JI)Ljava/lang/String;
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    # invokes: Llibcore/icu/AlphabeticIndex;->destroy(J)V
    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex;->access$000(J)V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 43
    :try_start_a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 45
    monitor-exit p0

    return-void

    .line 43
    :catchall_f
    move-exception v0

    :try_start_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_14

    .line 40
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBucketCount()I
    .registers 3

    .prologue
    .line 51
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketCount(J)I

    move-result v0

    return v0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketIndex(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 67
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketLabel(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
