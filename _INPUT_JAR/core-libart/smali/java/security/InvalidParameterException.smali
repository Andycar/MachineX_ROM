.class public Ljava/security/InvalidParameterException;
.super Ljava/lang/IllegalArgumentException;
.source "InvalidParameterException.java"


# static fields
.field private static final serialVersionUID:J = -0xbe81dd6b0831860L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method
