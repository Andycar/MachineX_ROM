.class public final Lcom/android/dex/DexIndexOverflowException;
.super Lcom/android/dex/DexException;
.source "DexIndexOverflowException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
