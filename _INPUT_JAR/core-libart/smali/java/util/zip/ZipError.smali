.class public Ljava/util/zip/ZipError;
.super Ljava/lang/InternalError;
.source "ZipError.java"


# static fields
.field private static final serialVersionUID:J = 0xbd9ec4d91d7499bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
