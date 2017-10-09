.class final Lorg/apache/harmony/security/x509/GeneralName$2;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .param p1, "x0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    packed-switch v2, :pswitch_data_a8

    .line 735
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralName: unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 705
    :pswitch_20
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/OtherName;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/OtherName;)V

    .line 737
    .local v0, "result":Lorg/apache/harmony/security/x509/GeneralName;
    :goto_29
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    # setter for: Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B
    invoke-static {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->access$202(Lorg/apache/harmony/security/x509/GeneralName;[B)[B

    .line 738
    return-object v0

    .line 709
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_31
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 710
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 712
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_3d
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/ORAddress;)V

    .line 713
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 715
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_47
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    .line 716
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 718
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_51
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/security/x509/EDIPartyName;

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V

    .line 719
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 721
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_5b
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 722
    .local v1, "uri":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_81

    .line 723
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralName: scheme is missing in URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 725
    :cond_81
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 726
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 728
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v1    # "uri":Ljava/lang/String;
    :pswitch_89
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>([B)V

    .line 729
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 731
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_95
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 733
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_29

    .line 703
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_31
        :pswitch_31
        :pswitch_3d
        :pswitch_47
        :pswitch_51
        :pswitch_5b
        :pswitch_89
        :pswitch_95
    .end packed-switch
.end method

.method public getIndex(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 698
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    .end local p1    # "object":Ljava/lang/Object;
    # getter for: Lorg/apache/harmony/security/x509/GeneralName;->tag:I
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$100(Lorg/apache/harmony/security/x509/GeneralName;)I

    move-result v0

    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 694
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    .end local p1    # "value":Ljava/lang/Object;
    # getter for: Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$000(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
