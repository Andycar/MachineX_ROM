.class public Landroid/graphics/ColorFilter;
.super Ljava/lang/Object;
.source "ColorFilter.java"


# instance fields
.field public native_instance:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native destroyFilter(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 42
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/ColorFilter;->destroyFilter(J)V

    .line 44
    return-void

    .line 42
    :catchall_9
    move-exception v0

    iget-wide v2, p0, Landroid/graphics/ColorFilter;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/ColorFilter;->destroyFilter(J)V

    throw v0
.end method
