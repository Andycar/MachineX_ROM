.class public Ljava/security/KeyStoreException;
.super Ljava/security/GeneralSecurityException;
.source "KeyStoreException.java"


# static fields
.field private static final serialVersionUID:J = -0xf88bdc937b6e42eL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method
