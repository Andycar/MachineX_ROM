.class Ljava/security/KeyStore$Builder$BuilderImpl;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final fileForLoad:Ljava/io/File;

.field private isGetKeyStore:Z

.field private keyStore:Ljava/security/KeyStore;

.field private lastException:Ljava/security/KeyStoreException;

.field private protParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private final providerForKeyStore:Ljava/security/Provider;

.field private final typeForKeyStore:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V
    .registers 7
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "pp"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "provider"    # Ljava/security/Provider;

    .prologue
    const/4 v0, 0x0

    .line 913
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    .line 902
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 914
    iput-object p1, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    .line 915
    iput-object p2, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 916
    iput-object p3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    .line 917
    iput-object p4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    .line 918
    iput-object p5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    .line 919
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 920
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    .line 921
    return-void
.end method


# virtual methods
.method public declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 944
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    if-eqz v5, :cond_b

    .line 945
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v5
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_8

    .line 944
    :catchall_8
    move-exception v5

    monitor-exit p0

    throw v5

    .line 947
    :cond_b
    :try_start_b
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v5, :cond_16

    .line 948
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 949
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_8

    .line 985
    :goto_14
    monitor-exit p0

    return-object v3

    .line 954
    :cond_16
    :try_start_16
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    if-nez v5, :cond_48

    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 960
    .local v3, "ks":Ljava/security/KeyStore;
    :goto_20
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v5, v5, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v5, :cond_51

    .line 961
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    check-cast v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v4

    .line 972
    .local v4, "passwd":[C
    :goto_2e
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;
    :try_end_30
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_30} :catch_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_66
    .catchall {:try_start_16 .. :try_end_30} :catchall_8

    if-eqz v5, :cond_74

    .line 973
    const/4 v1, 0x0

    .line 975
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_33
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_6f

    .line 976
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_3a
    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_7f

    .line 978
    :try_start_3d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 984
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_40
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z
    :try_end_43
    .catch Ljava/security/KeyStoreException; {:try_start_3d .. :try_end_43} :catch_44
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_43} :catch_66
    .catchall {:try_start_3d .. :try_end_43} :catchall_8

    goto :goto_14

    .line 986
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v4    # "passwd":[C
    :catch_44
    move-exception v0

    .line 988
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_45
    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_8

    .line 954
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :cond_48
    :try_start_48
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v3

    goto :goto_20

    .line 963
    .restart local v3    # "ks":Ljava/security/KeyStore;
    :cond_51
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v5, v5, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v5, :cond_5e

    .line 964
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    invoke-static {v5}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    move-result-object v4

    .restart local v4    # "passwd":[C
    goto :goto_2e

    .line 967
    .end local v4    # "passwd":[C
    :cond_5e
    new-instance v5, Ljava/security/KeyStoreException;

    const-string v6, "protectionParameter is neither PasswordProtection nor CallbackHandlerProtection instance"

    invoke-direct {v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_66
    .catch Ljava/security/KeyStoreException; {:try_start_48 .. :try_end_66} :catch_44
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_66} :catch_66
    .catchall {:try_start_48 .. :try_end_66} :catchall_8

    .line 989
    .end local v3    # "ks":Ljava/security/KeyStore;
    :catch_66
    move-exception v0

    .line 991
    .local v0, "e":Ljava/lang/Exception;
    :try_start_67
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    iput-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v5
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_8

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "ks":Ljava/security/KeyStore;
    .restart local v4    # "passwd":[C
    :catchall_6f
    move-exception v5

    :goto_70
    :try_start_70
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 981
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_74
    new-instance v5, Ljava/security/KeyStore$Builder$TmpLSParameter;

    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {v5, v6}, Ljava/security/KeyStore$Builder$TmpLSParameter;-><init>(Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_7e
    .catch Ljava/security/KeyStoreException; {:try_start_70 .. :try_end_7e} :catch_44
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7e} :catch_66
    .catchall {:try_start_70 .. :try_end_7e} :catchall_8

    goto :goto_40

    .line 978
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_7f
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_70
.end method

.method public declared-synchronized getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1005
    monitor-enter p0

    if-nez p1, :cond_e

    .line 1006
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 1005
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1008
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    if-nez v0, :cond_1a

    .line 1009
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKeyStore() was not invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :cond_1a
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_b

    monitor-exit p0

    return-object v0
.end method
