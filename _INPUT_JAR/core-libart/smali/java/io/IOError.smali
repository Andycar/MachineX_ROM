.class public Ljava/io/IOError;
.super Ljava/lang/Error;
.source "IOError.java"


# static fields
.field private static final serialVersionUID:J = 0xee63f0410b0d9dL


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
