.class public final Ljava/security/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x68fcf3c52d32ed6dL


# instance fields
.field private final privateKey:Ljava/security/PrivateKey;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Ljava/security/KeyPair;->privateKey:Ljava/security/PrivateKey;

    .line 46
    iput-object p1, p0, Ljava/security/KeyPair;->publicKey:Ljava/security/PublicKey;

    .line 47
    return-void
.end method


# virtual methods
.method public getPrivate()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Ljava/security/KeyPair;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublic()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Ljava/security/KeyPair;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method
