.class final Ljava/util/concurrent/Semaphore$NonfairSync;
.super Ljava/util/concurrent/Semaphore$Sync;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2563a9c95ee9771aL


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "permits"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;-><init>(I)V

    .line 197
    return-void
.end method


# virtual methods
.method protected tryAcquireShared(I)I
    .registers 3
    .param p1, "acquires"    # I

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;->nonfairTryAcquireShared(I)I

    move-result v0

    return v0
.end method
