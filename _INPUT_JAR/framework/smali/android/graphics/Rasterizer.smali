.class public Landroid/graphics/Rasterizer;
.super Ljava/lang/Object;
.source "Rasterizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field native_instance:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native finalizer(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    iget-wide v0, p0, Landroid/graphics/Rasterizer;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Rasterizer;->finalizer(J)V

    .line 29
    return-void
.end method
