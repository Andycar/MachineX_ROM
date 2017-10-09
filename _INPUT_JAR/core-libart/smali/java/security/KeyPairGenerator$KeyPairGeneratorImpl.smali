.class Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyPairGeneratorImpl"
.end annotation


# instance fields
.field private spiImpl:Ljava/security/KeyPairGeneratorSpi;


# direct methods
.method private constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "keyPairGeneratorSpi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0, p3}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 261
    # setter for: Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;
    invoke-static {p0, p2}, Ljava/security/KeyPairGenerator;->access$102(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;

    .line 262
    iput-object p1, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "x1"    # Ljava/security/Provider;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/security/KeyPairGenerator$1;

    .prologue
    .line 254
    invoke-direct {p0, p1, p2, p3}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 4
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 269
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 270
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 285
    return-void
.end method
