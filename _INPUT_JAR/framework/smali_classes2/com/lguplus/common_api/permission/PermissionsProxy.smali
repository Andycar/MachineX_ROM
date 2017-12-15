.class public Lcom/lguplus/common_api/permission/PermissionsProxy;
.super Ljava/lang/Object;
.source "PermissionsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;
    }
.end annotation


# static fields
.field static final PERMS_CLS_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl.permission.PermissionsImpl"

.field static final PERMS_PKG_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl"


# instance fields
.field mPerms:Lcom/lguplus/common_api/permission/Permissions;

.field mPkgMgr:Landroid/content/pm/IPackageManager$Stub;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageManager$Stub;)V
    .registers 3
    .param p1, "pkgMgr"    # Landroid/content/pm/IPackageManager$Stub;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    .line 22
    iput-object p1, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    .line 23
    return-void
.end method

.method private getPerms()V
    .registers 8

    .prologue
    .line 36
    :try_start_0
    iget-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    const-string v4, "com.lguplus.common_api_impl"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 37
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v3, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.lguplus.common_api_impl.permission.PermissionsImpl"

    invoke-virtual {v3, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lguplus/common_api/permission/Permissions;

    iput-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 43
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_31
    return-void

    .line 40
    :catch_32
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "uplus_common_api"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPerms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method


# virtual methods
.method public afterAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 111
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v1, "com.lguplus.common_api_impl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 112
    :cond_d
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Lcom/lguplus/common_api/permission/Permissions;->afterAdd(Ljava/lang/String;I)V

    .line 113
    :cond_1c
    return-void
.end method

.method public beforeAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 18
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 61
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_cf

    if-eqz v12, :cond_87

    .line 62
    const/4 v9, 0x0

    .line 63
    .local v9, "token":Ljava/lang/String;
    const/4 v1, 0x0

    .line 64
    .local v1, "am":Landroid/content/res/AssetManager;
    const/4 v6, 0x0

    .line 66
    .local v6, "is":Ljava/io/InputStream;
    :try_start_9
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_ee
    .catchall {:try_start_9 .. :try_end_e} :catchall_133

    .line 67
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .local v2, "am":Landroid/content/res/AssetManager;
    :try_start_e
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, "cookie":I
    if-eqz v4, :cond_2d

    .line 69
    const-string v12, "assets/uplus_common_api_perm_token.txt"

    invoke-virtual {v2, v4, v12}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 70
    const/16 v12, 0x1000

    new-array v3, v12, [B

    .local v3, "bytes":[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 71
    .local v8, "n":I
    new-instance v10, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v10, v3, v12, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2c} :catch_17d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_179
    .catchall {:try_start_e .. :try_end_2c} :catchall_176

    .end local v9    # "token":Ljava/lang/String;
    .local v10, "token":Ljava/lang/String;
    move-object v9, v10

    .line 81
    .end local v3    # "bytes":[B
    .end local v8    # "n":I
    .end local v10    # "token":Ljava/lang/String;
    .restart local v9    # "token":Ljava/lang/String;
    :cond_2d
    if-eqz v6, :cond_181

    .line 83
    :try_start_2f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_88
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_cf

    move-object v1, v2

    .line 89
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .end local v4    # "cookie":I
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    :cond_33
    :goto_33
    if-eqz v1, :cond_38

    :try_start_35
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 90
    :cond_38
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v9, v14}, Lcom/lguplus/common_api/permission/Permissions;->beforeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, "userName":Ljava/lang/String;
    if-eqz v11, :cond_59

    const-string v12, "INVALID-TOKEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_159

    :cond_59
    const/4 v7, 0x1

    .line 93
    .local v7, "isValidToken":Z
    :goto_5a
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v12, :cond_16e

    .line 94
    if-eqz v7, :cond_15c

    .line 95
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_87

    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".uplus_common_api"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 108
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "isValidToken":Z
    .end local v9    # "token":Ljava/lang/String;
    .end local v11    # "userName":Ljava/lang/String;
    :cond_87
    :goto_87
    return-void

    .line 84
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "cookie":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "token":Ljava/lang/String;
    :catch_88
    move-exception v5

    .line 85
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg(finally):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_a6} :catch_cf

    move-object v1, v2

    .line 86
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto :goto_33

    .line 74
    .end local v4    # "cookie":I
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a8
    move-exception v12

    .line 81
    :goto_a9
    if-eqz v6, :cond_33

    .line 83
    :try_start_ab
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_cf

    goto :goto_33

    .line 84
    :catch_af
    move-exception v5

    .line 85
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_b0
    const-string/jumbo v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg(finally):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_cd} :catch_cf

    goto/16 :goto_33

    .line 105
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "token":Ljava/lang/String;
    :catch_cf
    move-exception v5

    .line 106
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 77
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "token":Ljava/lang/String;
    :catch_ee
    move-exception v5

    .line 78
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_ef
    :try_start_ef
    const-string/jumbo v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_ef .. :try_end_10c} :catchall_133

    .line 81
    if-eqz v6, :cond_33

    .line 83
    :try_start_10e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_113
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_111} :catch_cf

    goto/16 :goto_33

    .line 84
    :catch_113
    move-exception v5

    .line 85
    .local v5, "e":Ljava/io/IOException;
    :try_start_114
    const-string/jumbo v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg(finally):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_131} :catch_cf

    goto/16 :goto_33

    .line 81
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_133
    move-exception v12

    :goto_134
    if-eqz v6, :cond_139

    .line 83
    :try_start_136
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13a
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_cf

    .line 86
    :cond_139
    :goto_139
    :try_start_139
    throw v12

    .line 84
    :catch_13a
    move-exception v5

    .line 85
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v13, "uplus_common_api"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "beforeAddPkg(finally):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 92
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v11    # "userName":Ljava/lang/String;
    :cond_159
    const/4 v7, 0x0

    goto/16 :goto_5a

    .line 98
    .restart local v7    # "isValidToken":Z
    :cond_15c
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    const-string v13, ".uplus_common_api$"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    goto/16 :goto_87

    .line 101
    :cond_16e
    if-eqz v7, :cond_87

    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_174} :catch_cf

    goto/16 :goto_87

    .line 81
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v7    # "isValidToken":Z
    .end local v11    # "userName":Ljava/lang/String;
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    :catchall_176
    move-exception v12

    move-object v1, v2

    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto :goto_134

    .line 77
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    :catch_179
    move-exception v5

    move-object v1, v2

    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto/16 :goto_ef

    .line 74
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    :catch_17d
    move-exception v12

    move-object v1, v2

    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto/16 :goto_a9

    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "cookie":I
    :cond_181
    move-object v1, v2

    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto/16 :goto_33
.end method

.method public checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public checkByUid(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getGids(Ljava/lang/String;)[I
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->getGids(Ljava/lang/String;)[I

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSystemUid(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->isSystemUid(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDelPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lguplus/common_api/permission/Permissions;->del(Ljava/lang/String;)Z

    .line 117
    :cond_b
    return-void
.end method

.method public reorderApkFiles([Ljava/io/File;)V
    .registers 7
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 120
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_24

    .line 121
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGUPlusLinuxCommonApi.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 122
    aget-object v0, p1, v1

    .line 123
    .local v0, "f":Ljava/io/File;
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_16
    if-ltz v2, :cond_21

    .line 124
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p1, v2

    aput-object v4, p1, v3

    .line 123
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 125
    :cond_21
    const/4 v3, 0x0

    aput-object v0, p1, v3

    .line 129
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "j":I
    :cond_24
    return-void

    .line 120
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
