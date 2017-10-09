.class final Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "IssuingDistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 4
    .param p1, "x0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    .line 139
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    .line 140
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 141
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 142
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 143
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 144
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 147
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 148
    .local v1, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/x509/DistributionPointName;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    check-cast v3, Lorg/apache/harmony/security/x509/ReasonFlags;

    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V

    .line 150
    .local v0, "idp":Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    .line 151
    aget-object v2, v1, v4

    if-eqz v2, :cond_2f

    .line 152
    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsUserCerts(Z)V

    .line 154
    :cond_2f
    aget-object v2, v1, v5

    if-eqz v2, :cond_3e

    .line 155
    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsCACerts(Z)V

    .line 157
    :cond_3e
    aget-object v2, v1, v6

    if-eqz v2, :cond_4d

    .line 158
    aget-object v2, v1, v6

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setIndirectCRL(Z)V

    .line 160
    :cond_4d
    aget-object v2, v1, v7

    if-eqz v2, :cond_5c

    .line 161
    aget-object v2, v1, v7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsAttributeCerts(Z)V

    .line 163
    :cond_5c
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 167
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    .line 168
    .local v0, "idp":Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$000(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    move-result-object v3

    aput-object v3, p2, v1

    .line 169
    const/4 v3, 0x1

    # getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$100(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_14
    aput-object v1, p2, v3

    .line 170
    const/4 v3, 0x2

    # getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$200(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1f
    aput-object v1, p2, v3

    .line 171
    const/4 v1, 0x3

    # getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$300(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    move-result-object v3

    aput-object v3, p2, v1

    .line 172
    const/4 v3, 0x4

    # getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$400(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_43

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_31
    aput-object v1, p2, v3

    .line 173
    const/4 v1, 0x5

    # getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$500(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v3

    if-eqz v3, :cond_3c

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_3c
    aput-object v2, p2, v1

    .line 174
    return-void

    :cond_3f
    move-object v1, v2

    .line 169
    goto :goto_14

    :cond_41
    move-object v1, v2

    .line 170
    goto :goto_1f

    :cond_43
    move-object v1, v2

    .line 172
    goto :goto_31
.end method
