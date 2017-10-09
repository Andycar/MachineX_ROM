.class public Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;
.super Ljava/lang/Object;
.source "AttributeTypeAndValueComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x11da77530460369cL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I
    .registers 11
    .param p0, "oid1"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .param p1, "oid2"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 79
    if-ne p0, p1, :cond_6

    .line 100
    :cond_5
    :goto_5
    return v4

    .line 83
    :cond_6
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v1

    .line 84
    .local v1, "ioid1":[I
    invoke-virtual {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v2

    .line 85
    .local v2, "ioid2":[I
    array-length v7, v1

    array-length v8, v2

    if-ge v7, v8, :cond_1e

    array-length v3, v1

    .line 86
    .local v3, "min":I
    :goto_13
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_5

    .line 87
    aget v7, v1, v0

    aget v8, v2, v0

    if-ge v7, v8, :cond_20

    move v4, v5

    .line 88
    goto :goto_5

    .line 85
    .end local v0    # "i":I
    .end local v3    # "min":I
    :cond_1e
    array-length v3, v2

    goto :goto_13

    .line 90
    .restart local v0    # "i":I
    .restart local v3    # "min":I
    :cond_20
    aget v7, v1, v0

    aget v8, v2, v0

    if-le v7, v8, :cond_28

    move v4, v6

    .line 91
    goto :goto_5

    .line 93
    :cond_28
    add-int/lit8 v7, v0, 0x1

    array-length v8, v1

    if-ne v7, v8, :cond_34

    add-int/lit8 v7, v0, 0x1

    array-length v8, v2

    if-ge v7, v8, :cond_34

    move v4, v5

    .line 94
    goto :goto_5

    .line 96
    :cond_34
    add-int/lit8 v7, v0, 0x1

    array-length v8, v1

    if-ge v7, v8, :cond_40

    add-int/lit8 v7, v0, 0x1

    array-length v8, v2

    if-ne v7, v8, :cond_40

    move v4, v6

    .line 97
    goto :goto_5

    .line 86
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;->compare(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)I
    .registers 7
    .param p1, "atav1"    # Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    .param p2, "atav2"    # Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .prologue
    .line 49
    if-ne p1, p2, :cond_4

    .line 50
    const/4 v2, 0x0

    .line 65
    :goto_3
    return v2

    .line 53
    :cond_4
    invoke-virtual {p1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "kw1":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "kw2":Ljava/lang/String;
    if-eqz v0, :cond_1a

    if-nez v1, :cond_1a

    .line 56
    const/4 v2, -0x1

    goto :goto_3

    .line 58
    :cond_1a
    if-nez v0, :cond_20

    if-eqz v1, :cond_20

    .line 59
    const/4 v2, 0x1

    goto :goto_3

    .line 61
    :cond_20
    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    .line 65
    :cond_29
    invoke-virtual {p1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;->compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I

    move-result v2

    goto :goto_3
.end method
