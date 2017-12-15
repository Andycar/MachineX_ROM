.class public final Lcom/android/internal/util/VirtualRefBasePtr;
.super Ljava/lang/Object;
.source "VirtualRefBasePtr.java"


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .registers 6
    .param p1, "ptr"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 28
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;->nIncStrong(J)V

    .line 29
    return-void
.end method

.method private static native nDecStrong(J)V
.end method

.method private static native nIncStrong(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 47
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 49
    return-void

    .line 47
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    return-wide v0
.end method

.method public release()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 37
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;->nDecStrong(J)V

    .line 38
    iput-wide v2, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 40
    :cond_f
    return-void
.end method
