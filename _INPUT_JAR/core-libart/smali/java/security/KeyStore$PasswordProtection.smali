.class public Ljava/security/KeyStore$PasswordProtection;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordProtection"
.end annotation


# instance fields
.field private isDestroyed:Z

.field private password:[C


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .param p1, "password"    # [C

    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    .line 1121
    if-eqz p1, :cond_10

    .line 1122
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    .line 1124
    :cond_10
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .prologue
    .line 1147
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    .line 1148
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    if-eqz v0, :cond_11

    .line 1149
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 1152
    :cond_11
    monitor-exit p0

    return-void

    .line 1147
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPassword()[C
    .registers 3

    .prologue
    .line 1134
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    if-eqz v0, :cond_10

    .line 1135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Password was destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 1134
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1137
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isDestroyed()Z
    .registers 2

    .prologue
    .line 1161
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
