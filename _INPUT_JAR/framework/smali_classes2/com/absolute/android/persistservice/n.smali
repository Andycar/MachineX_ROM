.class public Lcom/absolute/android/persistservice/n;
.super Lcom/absolute/android/persistservice/ag;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/absolute/android/persistservice/n;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ag;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 169
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/absolute/android/persistence/AppProfile;->setIsPersisted(Z)V

    .line 170
    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/n;->e()Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 172
    monitor-exit p0

    return-void

    .line 168
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final declared-synchronized a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .registers 4

    .prologue
    .line 66
    monitor-enter p0

    const/4 v1, 0x0

    .line 68
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 69
    if-eqz v0, :cond_18

    .line 70
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/n;->e()Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 74
    :goto_13
    monitor-exit p0

    return-object v0

    .line 66
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_18
    move-object v0, v1

    goto :goto_13
.end method

.method protected final declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;)V
    .registers 5

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 136
    if-eqz v0, :cond_1e

    .line 137
    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 138
    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/n;->e()Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 141
    :cond_1e
    monitor-exit p0

    return-void

    .line 134
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;-><init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/n;->e()Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 53
    monitor-exit p0

    return-void

    .line 50
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 297
    sget-boolean v1, Lcom/absolute/android/persistservice/n;->a:Z

    if-nez v1, :cond_18

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 295
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :cond_18
    if-eqz v0, :cond_20

    .line 299
    :try_start_1a
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(I)V

    .line 300
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/n;->e()Z
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_15

    .line 302
    :cond_20
    monitor-exit p0

    return-void
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 252
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 254
    sget-boolean v1, Lcom/absolute/android/persistservice/n;->a:Z

    if-nez v1, :cond_18

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 252
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_18
    if-eqz v0, :cond_23

    .line 256
    :try_start_1a
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/n;->e()Z
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_15

    .line 260
    :cond_23
    monitor-exit p0

    return-void
.end method

.method protected final declared-synchronized a(Z)V
    .registers 6

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 190
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistence/AppProfile;->setIsPersisted(Z)V

    .line 191
    iget-object v3, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_b

    .line 181
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/n;->e()Z
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    .line 194
    monitor-exit p0

    return-void
.end method

.method protected final declared-synchronized a()[Lcom/absolute/android/persistence/AppProfile;
    .registers 6

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3a

    move-result v0

    .line 109
    if-nez v0, :cond_c

    .line 110
    const/4 v0, 0x0

    .line 123
    :goto_a
    monitor-exit p0

    return-object v0

    .line 112
    :cond_c
    :try_start_c
    new-array v1, v0, [Lcom/absolute/android/persistence/AppProfile;

    .line 114
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 115
    const/4 v0, 0x0

    move v2, v0

    .line 117
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_3a

    .line 120
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 121
    goto :goto_1a

    :cond_38
    move-object v0, v1

    .line 123
    goto :goto_a

    .line 108
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()I
    .registers 5

    .prologue
    .line 206
    monitor-enter p0

    const/4 v1, 0x0

    .line 208
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 210
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 211
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 213
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_2f

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_32

    .line 214
    add-int/lit8 v0, v1, 0x1

    :goto_2b
    move v1, v0

    .line 215
    goto :goto_c

    .line 216
    :cond_2d
    monitor-exit p0

    return v1

    .line 206
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_32
    move v0, v1

    goto :goto_2b
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .registers 4

    .prologue
    .line 89
    monitor-enter p0

    const/4 v1, 0x0

    .line 91
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 92
    if-eqz v0, :cond_15

    .line 93
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_12

    move-result-object v0

    .line 96
    :goto_10
    monitor-exit p0

    return-object v0

    .line 89
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    move-object v0, v1

    goto :goto_10
.end method

.method protected final declared-synchronized b(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 337
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 339
    sget-boolean v1, Lcom/absolute/android/persistservice/n;->a:Z

    if-nez v1, :cond_18

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 337
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 340
    :cond_18
    if-eqz v0, :cond_20

    .line 341
    :try_start_1a
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b(I)V

    .line 342
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/n;->e()Z
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_15

    .line 344
    :cond_20
    monitor-exit p0

    return-void
.end method

.method protected final c()V
    .registers 1

    .prologue
    .line 364
    return-void
.end method

.method protected final declared-synchronized c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 229
    monitor-enter p0

    const/4 v1, 0x0

    .line 231
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 233
    if-eqz v0, :cond_15

    .line 234
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_12

    move-result-object v0

    .line 237
    :goto_10
    monitor-exit p0

    return-object v0

    .line 229
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    move-object v0, v1

    goto :goto_10
.end method

.method protected final declared-synchronized e(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 272
    monitor-enter p0

    const/4 v1, 0x0

    .line 274
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 276
    sget-boolean v2, Lcom/absolute/android/persistservice/n;->a:Z

    if-nez v2, :cond_19

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_16

    .line 272
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 277
    :cond_19
    if-eqz v0, :cond_21

    .line 278
    :try_start_1b
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->c()I
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_16

    move-result v0

    .line 281
    :goto_1f
    monitor-exit p0

    return v0

    :cond_21
    move v0, v1

    goto :goto_1f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-super {p0, p1}, Lcom/absolute/android/persistservice/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 405
    :goto_8
    return v0

    .line 379
    :cond_9
    instance-of v0, p1, Lcom/absolute/android/persistservice/n;

    if-nez v0, :cond_f

    move v0, v2

    .line 380
    goto :goto_8

    .line 384
    :cond_f
    check-cast p1, Lcom/absolute/android/persistservice/n;

    .line 386
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    move v0, v2

    .line 387
    goto :goto_8

    .line 390
    :cond_21
    monitor-enter p0

    .line 392
    :try_start_22
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 393
    iget-object v0, p1, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 395
    :cond_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 396
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 397
    iget-object v1, p1, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 399
    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 400
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_22 .. :try_end_5b} :catchall_60

    move v0, v2

    goto :goto_8

    .line 403
    :cond_5d
    monitor-exit p0

    .line 405
    const/4 v0, 0x1

    goto :goto_8

    .line 403
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized f(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 314
    monitor-enter p0

    const/4 v1, 0x0

    .line 316
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    .line 318
    sget-boolean v2, Lcom/absolute/android/persistservice/n;->a:Z

    if-nez v2, :cond_19

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_16

    .line 314
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 319
    :cond_19
    if-eqz v0, :cond_21

    .line 320
    :try_start_1b
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_16

    move-result v0

    .line 323
    :goto_1f
    monitor-exit p0

    return v0

    :cond_21
    move v0, v1

    goto :goto_1f
.end method

.method protected final declared-synchronized g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    .registers 3

    .prologue
    .line 355
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 412
    new-instance v1, Lcom/absolute/android/persistservice/n;

    iget-object v2, p0, Lcom/absolute/android/persistservice/n;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/absolute/android/persistservice/n;->e:Lcom/absolute/android/persistservice/y;

    invoke-static {p1}, Lcom/absolute/android/utils/FileUtil;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/absolute/android/persistservice/n;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    .line 414
    :try_start_e
    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/n;->i(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistservice/n;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_14} :catch_1a

    move-result v1

    if-nez v1, :cond_18

    .line 417
    :goto_17
    return v0

    .line 415
    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    .line 417
    :catch_1a
    move-exception v1

    goto :goto_17
.end method
