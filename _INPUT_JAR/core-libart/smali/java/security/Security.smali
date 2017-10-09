.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$1;,
        Ljava/security/Security$SecurityDoor;
    }
.end annotation


# static fields
.field private static final secprops:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 44
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Ljava/security/Security;->secprops:Ljava/util/Properties;

    .line 51
    const/4 v3, 0x0

    .line 53
    .local v3, "loaded":Z
    :try_start_8
    const-class v4, Ljava/security/Security;

    const-string v5, "security.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 54
    .local v0, "configStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v2, "input":Ljava/io/InputStream;
    sget-object v4, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_2c

    .line 61
    .end local v0    # "configStream":Ljava/io/InputStream;
    .end local v2    # "input":Ljava/io/InputStream;
    :goto_1e
    if-nez v3, :cond_23

    .line 62
    invoke-static {}, Ljava/security/Security;->registerDefaultProviders()V

    .line 64
    :cond_23
    new-instance v4, Ljava/security/Security$SecurityDoor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/security/Security$SecurityDoor;-><init>(Ljava/security/Security$1;)V

    sput-object v4, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    .line 65
    return-void

    .line 58
    :catch_2c
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Could not load \'security.properties\'"

    invoke-static {v4, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 41
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .registers 2
    .param p0, "provider"    # Ljava/security/Provider;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method private static filterProviders(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "attribute"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 321
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 323
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/security/Provider;->implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 327
    .end local v1    # "p":Ljava/security/Provider;
    :cond_1a
    return-void
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 93
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 106
    :cond_5
    :goto_5
    return-object v8

    .line 96
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alg."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "prop":Ljava/lang/String;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v7

    .line 98
    .local v7, "providers":[Ljava/security/Provider;
    move-object v0, v7

    .local v0, "arr$":[Ljava/security/Provider;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2a
    if-ge v2, v3, :cond_5

    aget-object v6, v0, v2

    .line 99
    .local v6, "provider":Ljava/security/Provider;
    invoke-virtual {v6}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_32
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 100
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 101
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 102
    invoke-virtual {v6, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 98
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .registers 9
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 370
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    .line 380
    :cond_7
    return-object v5

    .line 373
    :cond_8
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .local v0, "arr$":[Ljava/security/Provider;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_f
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 374
    .local v4, "provider":Ljava/security/Provider;
    invoke-virtual {v4}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider$Service;

    .line 375
    .local v6, "service":Ljava/security/Provider$Service;
    invoke-virtual {v6}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 376
    invoke-virtual {v6}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 373
    .end local v6    # "service":Ljava/security/Provider$Service;
    :cond_39
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_f
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 337
    if-nez p0, :cond_a

    .line 338
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_a
    sget-object v1, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_16
    return-object v0
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lorg/apache/harmony/security/fortress/Services;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getProviders()[Ljava/security/Provider;
    .registers 3

    .prologue
    .line 187
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/Provider;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/Provider;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v2

    return-object v1

    .line 187
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .registers 5
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    .line 228
    if-nez p0, :cond_a

    .line 229
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "filter == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 232
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 234
    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 236
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2b

    if-nez v1, :cond_31

    .line 237
    :cond_2b
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 239
    :cond_31
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3e

    .line 240
    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_39
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v2

    return-object v2

    .line 242
    :cond_3e
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39
.end method

.method public static declared-synchronized getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    .prologue
    .local p0, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    const/4 v14, -0x1

    .line 272
    const-class v12, Ljava/security/Security;

    monitor-enter v12

    if-nez p0, :cond_12

    .line 273
    :try_start_7
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v13, "filter == null"

    invoke-direct {v11, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    .line 272
    :catchall_f
    move-exception v11

    monitor-exit v12

    throw v11

    .line 275
    :cond_12
    :try_start_12
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    move-result v13

    if-eqz v13, :cond_1a

    .line 315
    :cond_18
    :goto_18
    monitor-exit v12

    return-object v11

    .line 278
    :cond_1a
    :try_start_1a
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 281
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_af

    .line 282
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 283
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 284
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 285
    .local v10, "val":Ljava/lang/String;
    const/4 v1, 0x0

    .line 286
    .local v1, "attribute":Ljava/lang/String;
    const/16 v13, 0x20

    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 287
    .local v3, "i":I
    const/16 v13, 0x2e

    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 288
    .local v5, "j":I
    if-ne v5, v14, :cond_58

    .line 289
    new-instance v11, Ljava/security/InvalidParameterException;

    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    throw v11

    .line 291
    :cond_58
    if-ne v3, v14, :cond_66

    .line 292
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_8d

    .line 293
    new-instance v11, Ljava/security/InvalidParameterException;

    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    throw v11

    .line 296
    :cond_66
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_72

    .line 297
    new-instance v11, Ljava/security/InvalidParameterException;

    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    throw v11

    .line 299
    :cond_72
    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_88

    .line 301
    new-instance v11, Ljava/security/InvalidParameterException;

    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    throw v11

    .line 303
    :cond_88
    const/4 v13, 0x0

    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 305
    :cond_8d
    const/4 v13, 0x0

    invoke-virtual {v6, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, "serv":Ljava/lang/String;
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "alg":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_a4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_aa

    .line 308
    :cond_a4
    new-instance v11, Ljava/security/InvalidParameterException;

    invoke-direct {v11}, Ljava/security/InvalidParameterException;-><init>()V

    throw v11

    .line 310
    :cond_aa
    invoke-static {v8, v9, v0, v1, v10}, Ljava/security/Security;->filterProviders(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 312
    .end local v0    # "alg":Ljava/lang/String;
    .end local v1    # "attribute":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v9    # "serv":Ljava/lang/String;
    .end local v10    # "val":Ljava/lang/String;
    :cond_af
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_18

    .line 313
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/security/Provider;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/security/Provider;
    :try_end_c1
    .catchall {:try_start_1a .. :try_end_c1} :catchall_f

    goto/16 :goto_18
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .registers 5
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    .prologue
    .line 127
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_18

    move-result-object v1

    if-eqz v1, :cond_10

    .line 128
    const/4 v0, -0x1

    .line 132
    :goto_e
    monitor-exit v2

    return v0

    .line 130
    :cond_10
    :try_start_10
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/Services;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    .line 131
    .local v0, "result":I
    invoke-static {}, Ljava/security/Security;->renumProviders()V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_e

    .line 127
    .end local v0    # "result":I
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static registerDefaultProviders()V
    .registers 3

    .prologue
    .line 75
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.1"

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.2"

    const-string v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.3"

    const-string v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.4"

    const-string v2, "com.android.org.conscrypt.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    if-eqz p0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_22

    move-result v1

    if-nez v1, :cond_d

    .line 178
    :cond_b
    :goto_b
    monitor-exit v2

    return-void

    .line 171
    :cond_d
    :try_start_d
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 172
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_b

    .line 175
    invoke-virtual {v0}, Ljava/security/Provider;->getProviderNumber()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->removeProvider(I)V

    .line 176
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    .line 177
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/security/Provider;->setProviderNumber(I)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    goto :goto_b

    .line 168
    .end local v0    # "p":Ljava/security/Provider;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static renumProviders()V
    .registers 4

    .prologue
    .line 389
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()Ljava/util/ArrayList;

    move-result-object v1

    .line 390
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 391
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/security/Provider;->setProviderNumber(I)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 393
    :cond_19
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 352
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method
