.class public Ljavax/net/ssl/SSLProtocolException;
.super Ljavax/net/ssl/SSLException;
.source "SSLProtocolException.java"


# static fields
.field private static final serialVersionUID:J = 0x4b90c3a533ed3ad0L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
