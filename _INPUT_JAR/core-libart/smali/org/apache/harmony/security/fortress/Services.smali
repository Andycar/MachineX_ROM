.class public Lorg/apache/harmony/security/fortress/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field private static final CHECK_MDPP_METHOD:Ljava/lang/String; = "checkWhitelist"

.field private static cacheVersion:I

.field private static cachedSecureRandomService:Ljava/security/Provider$Service;

.field private static needRefresh:Z

.field private static final providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final providersNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x1

    .line 48
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x258

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    .line 67
    sput v8, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v6, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    .line 77
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    .line 80
    const/4 v5, 0x0

    .line 81
    .local v5, "providerClassName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 82
    .local v1, "i":I
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 84
    .local v0, "cl":Ljava/lang/ClassLoader;
    :goto_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "security.provider."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 86
    :try_start_3d
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 87
    .local v4, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 88
    .local v3, "p":Ljava/security/Provider;
    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V
    :try_end_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_5d} :catch_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_5d} :catch_62
    .catch Ljava/lang/InstantiationException; {:try_start_3d .. :try_end_5d} :catch_65

    move v1, v2

    .line 94
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_22

    .line 91
    .end local v1    # "i":I
    .end local v3    # "p":Ljava/security/Provider;
    .end local v4    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "i":I
    :catch_5f
    move-exception v6

    move v1, v2

    .line 94
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_22

    .line 92
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :catch_62
    move-exception v6

    move v1, v2

    .line 94
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_22

    .line 93
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :catch_65
    move-exception v6

    move v1, v2

    .line 94
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_22

    .line 96
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_68
    sget-object v6, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v6}, Lorg/apache/harmony/security/fortress/SecurityAccess;->renumProviders()V

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendServiceLocked(Ljava/lang/String;Ljava/security/Provider$Service;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/security/Provider$Service;

    .prologue
    .line 170
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 171
    .local v0, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-nez v0, :cond_15

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .restart local v0    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method private static final checkMDPP(Ljava/security/Provider;)V
    .registers 6
    .param p0, "instance"    # Ljava/security/Provider;

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkWhitelist"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 244
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 248
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_13
    return-void

    .line 245
    :catch_14
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_13
.end method

.method public static declared-synchronized getCacheVersion()I
    .registers 5

    .prologue
    .line 223
    const-class v3, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v3

    :try_start_3
    sget-boolean v2, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    if-eqz v2, :cond_38

    .line 224
    sget v2, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    .line 225
    sget-object v4, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    .line 226
    :try_start_10
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 227
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_32

    .line 228
    const/4 v2, 0x0

    :try_start_17
    sput-object v2, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;

    .line 229
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 230
    .local v1, "p":Ljava/security/Provider;
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2f

    goto :goto_1f

    .line 223
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Ljava/security/Provider;
    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 227
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2

    .line 232
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_35
    const/4 v2, 0x0

    sput-boolean v2, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    .line 234
    :cond_38
    sget v2, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_2f

    monitor-exit v3

    return v2
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v2, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v2

    if-nez p0, :cond_8

    .line 115
    const/4 v0, 0x0

    .line 121
    :cond_6
    :goto_6
    monitor-exit v2

    return-object v0

    .line 117
    :cond_8
    :try_start_8
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 118
    .local v0, "provider":Ljava/security/Provider;
    if-eqz v0, :cond_6

    .line 119
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Services;->checkMDPP(Ljava/security/Provider;)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    goto :goto_6

    .line 114
    .end local v0    # "provider":Ljava/security/Provider;
    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getProviders()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-class v3, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 104
    .local v1, "p":Ljava/security/Provider;
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->checkMDPP(Ljava/security/Provider;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 103
    .end local v1    # "p":Ljava/security/Provider;
    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    .line 107
    :cond_1c
    :try_start_1c
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_19

    monitor-exit v3

    return-object v2
.end method

.method public static declared-synchronized getSecureRandomService()Ljava/security/Provider$Service;
    .registers 2

    .prologue
    .line 204
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    .line 205
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    .line 204
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    .line 197
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initServiceInfo(Ljava/security/Provider;)V
    .registers 11
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    .line 151
    const-class v7, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v7

    :try_start_3
    invoke-static {p0}, Lorg/apache/harmony/security/fortress/Services;->checkMDPP(Ljava/security/Provider;)V

    .line 152
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 153
    .local v4, "service":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "type":Ljava/lang/String;
    sget-object v6, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;

    if-nez v6, :cond_2c

    const-string v6, "SecureRandom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 155
    sput-object v4, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;

    .line 157
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/apache/harmony/security/fortress/Services;->appendServiceLocked(Ljava/lang/String;Ljava/security/Provider$Service;)V

    .line 159
    sget-object v6, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v6, v4}, Lorg/apache/harmony/security/fortress/SecurityAccess;->getAliases(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "alias":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {v3, v4}, Lorg/apache/harmony/security/fortress/Services;->appendServiceLocked(Ljava/lang/String;Ljava/security/Provider$Service;)V
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_87

    goto :goto_5a

    .line 151
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "service":Ljava/security/Provider$Service;
    .end local v5    # "type":Ljava/lang/String;
    :catchall_87
    move-exception v6

    monitor-exit v7

    throw v6

    .line 164
    :cond_8a
    monitor-exit v7

    return-void
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .registers 6
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    .prologue
    .line 128
    const-class v2, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 129
    .local v0, "size":I
    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    if-le p1, v0, :cond_10

    .line 130
    :cond_e
    add-int/lit8 p1, v0, 0x1

    .line 132
    :cond_10
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 133
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 135
    monitor-exit v2

    return p1

    .line 128
    .end local v0    # "size":I
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 182
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeProvider(I)V
    .registers 5
    .param p0, "providerNumber"    # I

    .prologue
    .line 142
    const-class v2, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 143
    .local v0, "p":Ljava/security/Provider;
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 145
    monitor-exit v2

    return-void

    .line 142
    .end local v0    # "p":Ljava/security/Provider;
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setNeedRefresh()V
    .registers 2

    .prologue
    .line 215
    const-class v0, Lorg/apache/harmony/security/fortress/Services;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 216
    monitor-exit v0

    return-void

    .line 215
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method
