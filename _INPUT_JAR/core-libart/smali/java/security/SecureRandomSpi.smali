.class public abstract Ljava/security/SecureRandomSpi;
.super Ljava/lang/Object;
.source "SecureRandomSpi.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2985338206ba2b96L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract engineGenerateSeed(I)[B
.end method

.method protected abstract engineNextBytes([B)V
.end method

.method protected abstract engineSetSeed([B)V
.end method
