.class public Ljava/lang/IllegalAccessException;
.super Ljava/lang/ReflectiveOperationException;
.source "IllegalAccessException.java"


# static fields
.field private static final serialVersionUID:J = 0x5bd42871f9297b32L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/ReflectiveOperationException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
