.class public Ljava/lang/ClassCircularityError;
.super Ljava/lang/LinkageError;
.source "ClassCircularityError.java"


# static fields
.field private static final serialVersionUID:J = 0xea1d92582e610a9L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
