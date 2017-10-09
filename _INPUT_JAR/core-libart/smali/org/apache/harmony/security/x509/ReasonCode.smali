.class public final Lorg/apache/harmony/security/x509/ReasonCode;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "ReasonCode.java"


# static fields
.field public static final AA_COMPROMISE:B = 0xat

.field public static final AFFILIATION_CHANGED:B = 0x3t

.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final CA_COMPROMISE:B = 0x2t

.field public static final CERTIFICATE_HOLD:B = 0x6t

.field public static final CESSATION_OF_OPERATION:B = 0x5t

.field public static final KEY_COMPROMISE:B = 0x1t

.field public static final PRIVILEGE_WITHDRAWN:B = 0x9t

.field public static final REMOVE_FROM_CRL:B = 0x8t

.field public static final SUPERSEDED:B = 0x4t

.field public static final UNSPECIFIED:B


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 65
    sget-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    .line 66
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Reason Code: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    packed-switch v0, :pswitch_data_50

    .line 117
    :goto_e
    :pswitch_e
    const-string v0, " ]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    return-void

    .line 87
    :pswitch_14
    const-string v0, "unspecified"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 90
    :pswitch_1a
    const-string v0, "keyCompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 93
    :pswitch_20
    const-string v0, "cACompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 96
    :pswitch_26
    const-string v0, "affiliationChanged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 99
    :pswitch_2c
    const-string v0, "superseded"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 102
    :pswitch_32
    const-string v0, "cessationOfOperation"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 105
    :pswitch_38
    const-string v0, "certificateHold"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 108
    :pswitch_3e
    const-string v0, "removeFromCRL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 111
    :pswitch_44
    const-string v0, "privilegeWithdrawn"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 114
    :pswitch_4a
    const-string v0, "aACompromise"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 85
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1a
        :pswitch_20
        :pswitch_26
        :pswitch_2c
        :pswitch_32
        :pswitch_38
        :pswitch_e
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
    .end packed-switch
.end method

.method public getEncoded()[B
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    if-nez v0, :cond_14

    .line 70
    sget-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-byte v3, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    .line 72
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    return-object v0
.end method

.method public getReason()Ljava/security/cert/CRLReason;
    .registers 4

    .prologue
    .line 76
    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    move-result-object v0

    .line 77
    .local v0, "values":[Ljava/security/cert/CRLReason;
    iget-byte v1, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    if-ltz v1, :cond_d

    iget-byte v1, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    array-length v2, v0

    if-le v1, v2, :cond_f

    .line 78
    :cond_d
    const/4 v1, 0x0

    .line 80
    :goto_e
    return-object v1

    :cond_f
    iget-byte v1, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    aget-object v1, v0, v1

    goto :goto_e
.end method
