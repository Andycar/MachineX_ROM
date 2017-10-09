.class public final Llibcore/icu/AlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/AlphabeticIndex$1;,
        Llibcore/icu/AlphabeticIndex$ImmutableIndex;
    }
.end annotation


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/AlphabeticIndex;->create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    .line 82
    return-void
.end method

.method static synthetic access$000(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 24
    invoke-static {p0, p1}, Llibcore/icu/AlphabeticIndex;->destroy(J)V

    return-void
.end method

.method private static native addLabelRange(JII)V
.end method

.method private static native addLabels(JLjava/lang/String;)V
.end method

.method private static native buildImmutableIndex(J)J
.end method

.method private static native create(Ljava/lang/String;)J
.end method

.method private static native destroy(J)V
.end method

.method private static native getBucketCount(J)I
.end method

.method private static native getBucketIndex(JLjava/lang/String;)I
.end method

.method private static native getBucketLabel(JI)Ljava/lang/String;
.end method

.method private static native getMaxLabelCount(J)I
.end method

.method private static native setMaxLabelCount(JI)V
.end method


# virtual methods
.method public declared-synchronized addLabelRange(II)Llibcore/icu/AlphabeticIndex;
    .registers 5
    .param p1, "codePointStart"    # I
    .param p2, "codePointEnd"    # I

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-static {v0, v1, p1, p2}, Llibcore/icu/AlphabeticIndex;->addLabelRange(JII)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 128
    monitor-exit p0

    return-object p0

    .line 127
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/icu/AlphabeticIndex;->addLabels(JLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 119
    monitor-exit p0

    return-object p0

    .line 118
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex;->destroy(J)V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 89
    :try_start_a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :catchall_f
    move-exception v0

    :try_start_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_14

    .line 86
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBucketCount()I
    .registers 3

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex;->getBucketCount(J)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBucketIndex(Ljava/lang/String;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex;->getBucketIndex(JLjava/lang/String;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBucketLabel(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex;->getBucketLabel(JI)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImmutableIndex()Llibcore/icu/AlphabeticIndex$ImmutableIndex;
    .registers 5

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    new-instance v0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;

    iget-wide v2, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-static {v2, v3}, Llibcore/icu/AlphabeticIndex;->buildImmutableIndex(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;-><init>(JLlibcore/icu/AlphabeticIndex$1;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxLabelCount()I
    .registers 3

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex;->getMaxLabelCount(J)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxLabelCount(I)Llibcore/icu/AlphabeticIndex;
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex;->setMaxLabelCount(JI)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 106
    monitor-exit p0

    return-object p0

    .line 105
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
