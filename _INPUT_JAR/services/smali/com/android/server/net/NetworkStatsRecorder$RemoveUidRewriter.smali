.class public Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUidRewriter"
.end annotation


# instance fields
.field private final mTemp:Lcom/android/server/net/NetworkStatsCollection;

.field private final mUids:[I


# direct methods
.method public constructor <init>(J[I)V
    .registers 5
    .param p1, "bucketDuration"    # J
    .param p3, "uids"    # [I

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    .line 314
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mUids:[I

    .line 315
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->clearDirty()V

    .line 326
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mUids:[I

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 327
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 320
    return-void
.end method

.method public shouldWrite()Z
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/DataOutputStream;)V

    .line 337
    return-void
.end method
