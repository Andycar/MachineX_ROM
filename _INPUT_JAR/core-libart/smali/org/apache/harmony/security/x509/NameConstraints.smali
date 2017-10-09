.class public final Lorg/apache/harmony/security/x509/NameConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "NameConstraints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

.field private excluded_names:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private final permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

.field private permitted_names:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    new-instance v0, Lorg/apache/harmony/security/x509/NameConstraints$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V
    .registers 7
    .param p1, "permittedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p2, "excludedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 72
    if-eqz p1, :cond_19

    .line 73
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, "ps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 75
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "permittedSubtrees are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v1    # "ps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    :cond_19
    if-eqz p2, :cond_2f

    .line 79
    invoke-virtual {p2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "es":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 81
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "excludedSubtrees are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    .end local v0    # "es":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    :cond_2f
    iput-object p1, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    .line 85
    iput-object p2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    .line 86
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[B)V
    .registers 4
    .param p1, "permittedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p2, "excludedSubtrees"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p3, "encoding"    # [B

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V

    .line 91
    iput-object p3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[BLorg/apache/harmony/security/x509/NameConstraints$1;)V
    .registers 5
    .param p1, "x0"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p2, "x1"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .param p3, "x2"    # [B
    .param p4, "x3"    # Lorg/apache/harmony/security/x509/NameConstraints$1;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/NameConstraints;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/NameConstraints;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/NameConstraints;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/NameConstraints;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/NameConstraints;
    .registers 2
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    return-object v0
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "OID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 140
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    .local v0, "bytes":[B
    if-nez v0, :cond_9

    move-object v2, v3

    .line 146
    .end local v0    # "bytes":[B
    :goto_8
    return-object v2

    .line 144
    .restart local v0    # "bytes":[B
    :cond_9
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_8

    .line 145
    .end local v0    # "bytes":[B
    :catch_16
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 146
    goto :goto_8
.end method

.method private prepareNames()V
    .registers 8

    .prologue
    const/16 v6, 0x9

    .line 110
    new-array v4, v6, [Ljava/util/ArrayList;

    iput-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    .line 111
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v4, :cond_3f

    .line 112
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    .line 113
    .local v0, "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->getBase()Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v2

    .line 114
    .local v2, "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v3

    .line 115
    .local v3, "tag":I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    if-nez v4, :cond_37

    .line 116
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v3

    .line 118
    :cond_37
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 122
    .end local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v3    # "tag":I
    :cond_3f
    new-array v4, v6, [Ljava/util/ArrayList;

    iput-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    .line 123
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v4, :cond_7c

    .line 124
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    .line 125
    .restart local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->getBase()Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v2

    .line 126
    .restart local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v3

    .line 127
    .restart local v3    # "tag":I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    if-nez v4, :cond_74

    .line 128
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v3

    .line 130
    :cond_74
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 133
    .end local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v3    # "tag":I
    :cond_7c
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Name Constraints: [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_4c

    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Permitted: [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    .line 243
    .local v0, "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_20

    .line 245
    .end local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    :cond_43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4c
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_8f

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Excluded: [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    .line 250
    .restart local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_63

    .line 252
    .end local v0    # "generalSubtree":Lorg/apache/harmony/security/x509/GeneralSubtree;
    :cond_86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_8f
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    return-void
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    if-nez v0, :cond_c

    .line 100
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    .line 102
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    return-object v0
.end method

.method public isAcceptable(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v4, 0x4

    .line 166
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 167
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/NameConstraints;->prepareNames()V

    .line 170
    :cond_8
    const-string v3, "2.5.29.17"

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/x509/NameConstraints;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 173
    .local v0, "bytes":[B
    if-nez v0, :cond_38

    :try_start_10
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_45

    .line 181
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :goto_16
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    if-nez v3, :cond_22

    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    if-eqz v3, :cond_33

    .line 183
    :cond_22
    :try_start_22
    new-instance v3, Lorg/apache/harmony/security/x509/GeneralName;

    const/4 v4, 0x4

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_33} :catch_4b

    .line 189
    :cond_33
    :goto_33
    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    move-result v3

    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :goto_37
    return v3

    .line 173
    :cond_38
    :try_start_38
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_45

    move-result-object v2

    goto :goto_16

    .line 176
    :catch_45
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 179
    const/4 v3, 0x0

    goto :goto_37

    .line 185
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :catch_4b
    move-exception v3

    goto :goto_33
.end method

.method public isAcceptable(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    const/4 v7, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x1

    .line 197
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    if-nez v6, :cond_b

    .line 198
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/NameConstraints;->prepareNames()V

    .line 203
    :cond_b
    new-array v5, v9, [Z

    .line 206
    .local v5, "types_presented":[Z
    new-array v3, v9, [Z

    .line 207
    .local v3, "permitted_found":[Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/GeneralName;

    .line 208
    .local v2, "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v4

    .line 210
    .local v4, "type":I
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    if-eqz v6, :cond_49

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_49

    .line 212
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6, v2}, Lorg/apache/harmony/security/x509/GeneralName;->isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z

    move-result v6

    if-eqz v6, :cond_46

    move v6, v7

    .line 235
    .end local v0    # "i":I
    .end local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    :goto_45
    return v6

    .line 211
    .restart local v0    # "i":I
    .restart local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 220
    .end local v0    # "i":I
    :cond_49
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    if-eqz v6, :cond_13

    aget-boolean v6, v3, v4

    if-nez v6, :cond_13

    .line 221
    aput-boolean v8, v5, v4

    .line 222
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_56
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_13

    .line 223
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6, v2}, Lorg/apache/harmony/security/x509/GeneralName;->isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 225
    aput-boolean v8, v3, v4

    .line 222
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 230
    .end local v0    # "i":I
    .end local v2    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v4    # "type":I
    :cond_75
    const/4 v4, 0x0

    .restart local v4    # "type":I
    :goto_76
    if-ge v4, v9, :cond_85

    .line 231
    aget-boolean v6, v5, v4

    if-eqz v6, :cond_82

    aget-boolean v6, v3, v4

    if-nez v6, :cond_82

    move v6, v7

    .line 232
    goto :goto_45

    .line 230
    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    :cond_85
    move v6, v8

    .line 235
    goto :goto_45
.end method
