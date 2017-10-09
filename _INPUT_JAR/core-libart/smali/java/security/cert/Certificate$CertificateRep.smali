.class public Ljava/security/cert/Certificate$CertificateRep;
.super Ljava/lang/Object;
.source "Certificate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CertificateRep"
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x76d895623651c3f4L


# instance fields
.field private final data:[B

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "type"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "data"

    const-class v3, [B

    invoke-direct {v1, v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v1, v0, v5

    sput-object v0, Ljava/security/cert/Certificate$CertificateRep;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Ljava/security/cert/Certificate$CertificateRep;->data:[B

    .line 234
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    iget-object v2, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 247
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Ljava/security/cert/Certificate$CertificateRep;->data:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 248
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_12
    move-exception v1

    .line 249
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/NotSerializableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
