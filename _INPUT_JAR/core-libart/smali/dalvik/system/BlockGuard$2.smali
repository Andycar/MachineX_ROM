.class final Ldalvik/system/BlockGuard$2;
.super Ljava/lang/ThreadLocal;
.source "BlockGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ldalvik/system/BlockGuard$Policy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ldalvik/system/BlockGuard$Policy;
    .registers 2

    .prologue
    .line 128
    sget-object v0, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Ldalvik/system/BlockGuard$2;->initialValue()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    return-object v0
.end method
