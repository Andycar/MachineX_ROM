.class public Ljava/lang/NullPointerException;
.super Ljava/lang/RuntimeException;
.source "NullPointerException.java"


# static fields
.field private static final serialVersionUID:J = 0x47a5a18eff31e1b8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method
