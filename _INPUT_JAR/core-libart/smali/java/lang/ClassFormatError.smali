.class public Ljava/lang/ClassFormatError;
.super Ljava/lang/LinkageError;
.source "ClassFormatError.java"


# static fields
.field private static final serialVersionUID:J = -0x74da41deeb7d0a8bL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
