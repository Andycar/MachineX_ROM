.class final Ldalvik/system/BlockGuard$1;
.super Ljava/lang/Object;
.source "BlockGuard.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyMask()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onNetwork()V
    .registers 1

    .prologue
    .line 120
    return-void
.end method

.method public onReadFromDisk()V
    .registers 1

    .prologue
    .line 119
    return-void
.end method

.method public onWriteToDisk()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method
