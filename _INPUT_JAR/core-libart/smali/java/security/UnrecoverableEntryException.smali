.class public Ljava/security/UnrecoverableEntryException;
.super Ljava/security/GeneralSecurityException;
.source "UnrecoverableEntryException.java"


# static fields
.field private static final serialVersionUID:J = -0x3ed3a485dad212c7L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method
