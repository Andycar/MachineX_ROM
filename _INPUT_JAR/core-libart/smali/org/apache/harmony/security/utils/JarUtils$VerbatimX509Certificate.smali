.class Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;
.super Lorg/apache/harmony/security/utils/WrappedX509Certificate;
.source "JarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/utils/JarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerbatimX509Certificate"
.end annotation


# instance fields
.field private encodedVerbatim:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .registers 3
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;
    .param p2, "encodedVerbatim"    # [B

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/utils/WrappedX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 279
    iput-object p2, p0, Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;->encodedVerbatim:[B

    .line 280
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/harmony/security/utils/JarUtils$VerbatimX509Certificate;->encodedVerbatim:[B

    return-object v0
.end method
