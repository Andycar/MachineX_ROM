.class public Ljavax/crypto/ExemptionMechanismException;
.super Ljava/security/GeneralSecurityException;
.source "ExemptionMechanismException.java"


# static fields
.field private static final serialVersionUID:J = 0x15d359cc64927bf5L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
