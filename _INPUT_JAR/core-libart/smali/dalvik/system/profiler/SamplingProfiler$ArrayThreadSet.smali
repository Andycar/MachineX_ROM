.class Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"

# interfaces
.implements Ldalvik/system/profiler/SamplingProfiler$ThreadSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayThreadSet"
.end annotation


# instance fields
.field private final threads:[Ljava/lang/Thread;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Thread;)V
    .registers 4
    .param p1, "threads"    # [Ljava/lang/Thread;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    if-nez p1, :cond_d

    .line 207
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threads == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_d
    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;->threads:[Ljava/lang/Thread;

    .line 210
    return-void
.end method


# virtual methods
.method public threads()[Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;->threads:[Ljava/lang/Thread;

    return-object v0
.end method
