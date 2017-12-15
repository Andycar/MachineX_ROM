.class public Landroid/app/im/FeaturePathClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "FeaturePathClassLoader.java"


# static fields
.field private static final DEBUG_ELASTIC:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "FeaturePathClassLoader"

    sput-object v0, Landroid/app/im/FeaturePathClassLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "libraryPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 27
    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 21
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super/range {p0 .. p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 37
    .local v3, "classCreated":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v18, ".R$"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_94

    .line 38
    const-string v18, "\\.R\\$"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 39
    .local v11, "names":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v13, v11, v18

    .line 44
    .local v13, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 45
    .local v4, "classResPath":Ljava/lang/String;
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Landroid/app/im/InjectionManager;->getClassLibPath(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    const/4 v12, 0x0

    .line 48
    .local v12, "offset":I
    if-eqz v4, :cond_94

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_94

    .line 49
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 50
    .local v14, "paths":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v17, v14, v18

    .line 52
    .local v17, "zip":Ljava/lang/String;
    if-eqz v17, :cond_59

    .line 53
    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, "resPaths":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "featureCnt":I
    :goto_47
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_59

    .line 57
    aget-object v18, v15, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7d

    .line 58
    move v12, v7

    .line 66
    .end local v7    # "featureCnt":I
    .end local v15    # "resPaths":[Ljava/lang/String;
    :cond_59
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 71
    .local v6, "f":[Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    .line 72
    .local v16, "val":I
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_62
    if-ge v9, v10, :cond_94

    aget-object v8, v2, v9

    .line 75
    .local v8, "field":Ljava/lang/reflect/Field;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    :try_start_6d
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_70} :catch_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_70} :catch_85

    move-result v16

    .line 89
    :goto_71
    shl-int/lit8 v18, v12, 0x18

    sub-int v18, v16, v18

    :try_start_75
    move/from16 v0, v18

    invoke-virtual {v8, v3, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_75 .. :try_end_7a} :catch_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_7a} :catch_8f

    .line 72
    :goto_7a
    add-int/lit8 v9, v9, 0x1

    goto :goto_62

    .line 54
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "f":[Ljava/lang/reflect/Field;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v16    # "val":I
    .restart local v7    # "featureCnt":I
    .restart local v15    # "resPaths":[Ljava/lang/String;
    :cond_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    .line 80
    .end local v7    # "featureCnt":I
    .end local v15    # "resPaths":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v6    # "f":[Ljava/lang/reflect/Field;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v16    # "val":I
    :catch_80
    move-exception v5

    .line 81
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_71

    .line 82
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_85
    move-exception v5

    .line 83
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_71

    .line 90
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8a
    move-exception v5

    .line 91
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_7a

    .line 92
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_8f
    move-exception v5

    .line 93
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7a

    .line 98
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "classResPath":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "f":[Ljava/lang/reflect/Field;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "names":[Ljava/lang/String;
    .end local v12    # "offset":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "paths":[Ljava/lang/String;
    .end local v16    # "val":I
    .end local v17    # "zip":Ljava/lang/String;
    :cond_94
    return-object v3
.end method
