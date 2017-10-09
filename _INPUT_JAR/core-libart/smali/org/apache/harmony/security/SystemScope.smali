.class public Lorg/apache/harmony/security/SystemScope;
.super Ljava/security/IdentityScope;
.source "SystemScope.java"


# static fields
.field private static final serialVersionUID:J = -0x42c1915b3568f46fL


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private names:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/security/IdentityScope;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized addIdentity(Ljava/security/Identity;)V
    .registers 7
    .param p1, "identity"    # Ljava/security/Identity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    if-nez p1, :cond_e

    .line 102
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "identity == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 101
    :catchall_b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 105
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/security/Identity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 107
    new-instance v2, Ljava/security/KeyManagementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is already used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_39
    invoke-virtual {p1}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 111
    .local v0, "key":Ljava/security/PublicKey;
    if-eqz v0, :cond_66

    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 112
    new-instance v2, Ljava/security/KeyManagementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is already used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_66
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    if-eqz v0, :cond_72

    .line 117
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_e .. :try_end_72} :catchall_b

    .line 119
    :cond_72
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getIdentity(Ljava/lang/String;)Ljava/security/Identity;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    monitor-enter p0

    if-nez p1, :cond_e

    .line 82
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 81
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_e
    :try_start_e
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Identity;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_b

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 91
    monitor-enter p0

    if-nez p1, :cond_6

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_4
    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Identity;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 91
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public identities()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeIdentity(Ljava/security/Identity;)V
    .registers 7
    .param p1, "identity"    # Ljava/security/Identity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    if-nez p1, :cond_e

    .line 129
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "identity == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 128
    :catchall_b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 132
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/security/Identity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 134
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "name == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_1c
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    .local v0, "contains":Z
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p1}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 142
    .local v1, "key":Ljava/security/PublicKey;
    if-eqz v1, :cond_3d

    .line 143
    if-nez v0, :cond_37

    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    :cond_37
    const/4 v0, 0x1

    .line 144
    :goto_38
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3d
    if-nez v0, :cond_49

    .line 148
    new-instance v3, Ljava/security/KeyManagementException;

    const-string v4, "identity not found"

    invoke-direct {v3, v4}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_b

    .line 143
    :cond_47
    const/4 v0, 0x0

    goto :goto_38

    .line 150
    :cond_49
    monitor-exit p0

    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
