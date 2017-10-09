.class public final Llibcore/reflect/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final transient cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elements:[Llibcore/reflect/AnnotationMember;

.field private final klazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)V
    .registers 11
    .param p2, "values"    # [Llibcore/reflect/AnnotationMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "klzz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    .line 112
    iget-object v6, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v6}, Llibcore/reflect/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;

    move-result-object v1

    .line 113
    .local v1, "defs":[Llibcore/reflect/AnnotationMember;
    if-nez p2, :cond_10

    .line 114
    iput-object v1, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .line 128
    :cond_f
    return-void

    .line 117
    :cond_10
    array-length v6, v1

    new-array v6, v6, [Llibcore/reflect/AnnotationMember;

    iput-object v6, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .line 118
    iget-object v6, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_f

    .line 119
    move-object v0, p2

    .local v0, "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1f
    if-ge v3, v4, :cond_3f

    aget-object v5, v0, v3

    .line 120
    .local v5, "val":Llibcore/reflect/AnnotationMember;
    iget-object v6, v5, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    aget-object v7, v1, v2

    iget-object v7, v7, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 121
    iget-object v6, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v7, v1, v2

    invoke-virtual {v5, v7}, Llibcore/reflect/AnnotationMember;->setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;

    move-result-object v7

    aput-object v7, v6, v2

    .line 118
    .end local v5    # "val":Llibcore/reflect/AnnotationMember;
    :goto_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 119
    .restart local v5    # "val":Llibcore/reflect/AnnotationMember;
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 125
    .end local v5    # "val":Llibcore/reflect/AnnotationMember;
    :cond_3f
    iget-object v6, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v7, v1, v2

    aput-object v7, v6, v2

    goto :goto_39
.end method

.method public static createAnnotation(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)Ljava/lang/annotation/Annotation;
    .registers 6
    .param p1, "elements"    # [Llibcore/reflect/AnnotationMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Llibcore/reflect/AnnotationFactory;

    invoke-direct {v0, p0, p1}, Llibcore/reflect/AnnotationFactory;-><init>(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)V

    .line 95
    .local v0, "factory":Llibcore/reflect/AnnotationFactory;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public static getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Llibcore/reflect/AnnotationMember;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v9, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    monitor-enter v9

    .line 60
    :try_start_3
    sget-object v8, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llibcore/reflect/AnnotationMember;

    .line 61
    .local v1, "desc":[Llibcore/reflect/AnnotationMember;
    if-eqz v1, :cond_10

    .line 62
    monitor-exit v9

    move-object v2, v1

    .line 83
    .end local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    .local v2, "desc":[Llibcore/reflect/AnnotationMember;
    :goto_f
    return-object v2

    .line 64
    .end local v2    # "desc":[Llibcore/reflect/AnnotationMember;
    .restart local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    :cond_10
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_34

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v8

    if-nez v8, :cond_37

    .line 66
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Type is not annotation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 64
    .end local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    :catchall_34
    move-exception v8

    :try_start_35
    monitor-exit v9
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v8

    .line 68
    .restart local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    :cond_37
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    .local v0, "declaredMethods":[Ljava/lang/reflect/Method;
    array-length v8, v0

    new-array v1, v8, [Llibcore/reflect/AnnotationMember;

    .line 70
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    array-length v8, v0

    if-ge v4, v8, :cond_63

    .line 71
    aget-object v3, v0, v4

    .line 72
    .local v3, "element":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 75
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4c
    new-instance v8, Llibcore/reflect/AnnotationMember;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v8, v5, v9, v7, v3}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v8, v1, v4
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_57} :catch_5a

    .line 70
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 76
    :catch_5a
    move-exception v6

    .line 77
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v8, Llibcore/reflect/AnnotationMember;

    invoke-direct {v8, v5, v6, v7, v3}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v8, v1, v4

    goto :goto_57

    .line 80
    .end local v3    # "element":Ljava/lang/reflect/Method;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_63
    sget-object v9, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    monitor-enter v9

    .line 81
    :try_start_66
    sget-object v8, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v8, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v9

    move-object v2, v1

    .line 83
    .end local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    .restart local v2    # "desc":[Llibcore/reflect/AnnotationMember;
    goto :goto_f

    .line 82
    .end local v2    # "desc":[Llibcore/reflect/AnnotationMember;
    .restart local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    :catchall_6e
    move-exception v8

    monitor-exit v9
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_6e

    throw v8
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 17
    .param p1, "os"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 142
    iget-object v13, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v13}, Llibcore/reflect/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;

    move-result-object v3

    .line 143
    .local v3, "defs":[Llibcore/reflect/AnnotationMember;
    iget-object v11, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .line 144
    .local v11, "old":[Llibcore/reflect/AnnotationMember;
    new-instance v10, Ljava/util/ArrayList;

    array-length v13, v3

    array-length v14, v11

    add-int/2addr v13, v14

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v10, "merged":Ljava/util/List;, "Ljava/util/List<Llibcore/reflect/AnnotationMember;>;"
    move-object v0, v11

    .local v0, "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v0    # "arr$":[Llibcore/reflect/AnnotationMember;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_17
    if-ge v7, v8, :cond_37

    aget-object v4, v0, v7

    .line 146
    .local v4, "el1":Llibcore/reflect/AnnotationMember;
    move-object v1, v3

    .local v1, "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1e
    if-ge v6, v9, :cond_33

    aget-object v5, v1, v6

    .line 147
    .local v5, "el2":Llibcore/reflect/AnnotationMember;
    iget-object v13, v5, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    iget-object v14, v4, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 145
    .end local v5    # "el2":Llibcore/reflect/AnnotationMember;
    :goto_2c
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_17

    .line 146
    .end local v7    # "i$":I
    .restart local v5    # "el2":Llibcore/reflect/AnnotationMember;
    .restart local v6    # "i$":I
    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 151
    .end local v5    # "el2":Llibcore/reflect/AnnotationMember;
    :cond_33
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 153
    .end local v1    # "arr$":[Llibcore/reflect/AnnotationMember;
    .end local v4    # "el1":Llibcore/reflect/AnnotationMember;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .restart local v7    # "i$":I
    :cond_37
    move-object v0, v3

    .restart local v0    # "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    move v7, v6

    .end local v0    # "arr$":[Llibcore/reflect/AnnotationMember;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .restart local v7    # "i$":I
    :goto_3b
    if-ge v7, v8, :cond_62

    aget-object v2, v0, v7

    .line 154
    .local v2, "def":Llibcore/reflect/AnnotationMember;
    move-object v1, v11

    .restart local v1    # "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v9, v1

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_42
    if-ge v6, v9, :cond_5e

    aget-object v12, v1, v6

    .line 155
    .local v12, "val":Llibcore/reflect/AnnotationMember;
    iget-object v13, v12, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    iget-object v14, v2, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 158
    invoke-virtual {v12, v2}, Llibcore/reflect/AnnotationMember;->setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v12    # "val":Llibcore/reflect/AnnotationMember;
    :goto_57
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_3b

    .line 154
    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    .restart local v12    # "val":Llibcore/reflect/AnnotationMember;
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 162
    .end local v12    # "val":Llibcore/reflect/AnnotationMember;
    :cond_5e
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 164
    .end local v1    # "arr$":[Llibcore/reflect/AnnotationMember;
    .end local v2    # "def":Llibcore/reflect/AnnotationMember;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .restart local v7    # "i$":I
    :cond_62
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Llibcore/reflect/AnnotationMember;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Llibcore/reflect/AnnotationMember;

    iput-object v13, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .line 165
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 19
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 178
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    .line 179
    const/4 v15, 0x1

    .line 231
    :goto_7
    return v15

    .line 181
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    .line 182
    const/4 v15, 0x0

    goto :goto_7

    .line 184
    :cond_16
    const/4 v8, 0x0

    .line 185
    .local v8, "handler":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_64

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v8

    .local v8, "handler":Ljava/lang/reflect/InvocationHandler;
    instance-of v15, v8, Llibcore/reflect/AnnotationFactory;

    if-eqz v15, :cond_64

    move-object v13, v8

    .line 187
    check-cast v13, Llibcore/reflect/AnnotationFactory;

    .line 188
    .local v13, "other":Llibcore/reflect/AnnotationFactory;
    move-object/from16 v0, p0

    iget-object v15, v0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v15, v15

    iget-object v0, v13, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_40

    .line 189
    const/4 v15, 0x0

    goto :goto_7

    .line 191
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .local v2, "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v2    # "arr$":[Llibcore/reflect/AnnotationMember;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_47
    if-ge v10, v11, :cond_62

    aget-object v6, v2, v10

    .line 192
    .local v6, "el1":Llibcore/reflect/AnnotationMember;
    iget-object v3, v13, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .local v3, "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_4f
    if-ge v9, v12, :cond_60

    aget-object v7, v3, v9

    .line 193
    .local v7, "el2":Llibcore/reflect/AnnotationMember;
    invoke-virtual {v6, v7}, Llibcore/reflect/AnnotationMember;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5d

    .line 191
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_47

    .line 192
    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :cond_5d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4f

    .line 197
    .end local v7    # "el2":Llibcore/reflect/AnnotationMember;
    :cond_60
    const/4 v15, 0x0

    goto :goto_7

    .line 199
    .end local v3    # "arr$":[Llibcore/reflect/AnnotationMember;
    .end local v6    # "el1":Llibcore/reflect/AnnotationMember;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .restart local v10    # "i$":I
    :cond_62
    const/4 v15, 0x1

    goto :goto_7

    .line 204
    .end local v8    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v10    # "i$":I
    .end local v13    # "other":Llibcore/reflect/AnnotationFactory;
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .restart local v2    # "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v11, v2

    .restart local v11    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_6a
    if-ge v9, v11, :cond_c9

    aget-object v5, v2, v9

    .line 205
    .local v5, "el":Llibcore/reflect/AnnotationMember;
    iget-char v15, v5, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v16, 0x21

    move/from16 v0, v16

    if-ne v15, v0, :cond_78

    .line 207
    const/4 v15, 0x0

    goto :goto_7

    .line 210
    :cond_78
    :try_start_78
    iget-object v15, v5, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v15

    if-nez v15, :cond_87

    .line 211
    iget-object v15, v5, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 213
    :cond_87
    iget-object v15, v5, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 214
    .local v14, "otherValue":Ljava/lang/Object;
    if-eqz v14, :cond_b7

    .line 215
    iget-char v15, v5, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v16, 0x5b

    move/from16 v0, v16

    if-ne v15, v0, :cond_ac

    .line 216
    invoke-virtual {v5, v14}, Llibcore/reflect/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c6

    .line 217
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 220
    :cond_ac
    iget-object v15, v5, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c6

    .line 221
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 224
    :cond_b7
    iget-object v15, v5, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    sget-object v16, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_bb} :catch_c2

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_c6

    .line 225
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 227
    .end local v14    # "otherValue":Ljava/lang/Object;
    :catch_c2
    move-exception v4

    .line 228
    .local v4, "e":Ljava/lang/Throwable;
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 204
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v14    # "otherValue":Ljava/lang/Object;
    :cond_c6
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 231
    .end local v5    # "el":Llibcore/reflect/AnnotationMember;
    .end local v14    # "otherValue":Ljava/lang/Object;
    :cond_c9
    const/4 v15, 0x1

    goto/16 :goto_7
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "hash":I
    iget-object v0, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .local v0, "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v4, :cond_11

    aget-object v1, v0, v3

    .line 243
    .local v1, "element":Llibcore/reflect/AnnotationMember;
    invoke-virtual {v1}, Llibcore/reflect/AnnotationMember;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 245
    .end local v1    # "element":Llibcore/reflect/AnnotationMember;
    :cond_11
    return v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 277
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 279
    .local v6, "params":[Ljava/lang/Class;
    array-length v8, v6

    if-nez v8, :cond_6c

    .line 280
    const-string v8, "annotationType"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 281
    iget-object v7, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    .line 306
    :cond_16
    :goto_16
    return-object v7

    .line 282
    :cond_17
    const-string v8, "toString"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 283
    invoke-virtual {p0}, Llibcore/reflect/AnnotationFactory;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    .line 284
    :cond_24
    const-string v8, "hashCode"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 285
    invoke-virtual {p0}, Llibcore/reflect/AnnotationFactory;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_16

    .line 289
    :cond_35
    const/4 v2, 0x0

    .line 290
    .local v2, "element":Llibcore/reflect/AnnotationMember;
    iget-object v0, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .local v0, "arr$":[Llibcore/reflect/AnnotationMember;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3a
    if-ge v3, v4, :cond_47

    aget-object v1, v0, v3

    .line 291
    .local v1, "el":Llibcore/reflect/AnnotationMember;
    iget-object v8, v1, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 292
    move-object v2, v1

    .line 296
    .end local v1    # "el":Llibcore/reflect/AnnotationMember;
    :cond_47
    if-eqz v2, :cond_51

    iget-object v8, v2, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v8}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 297
    :cond_51
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 290
    .restart local v1    # "el":Llibcore/reflect/AnnotationMember;
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 299
    .end local v1    # "el":Llibcore/reflect/AnnotationMember;
    :cond_5e
    invoke-virtual {v2}, Llibcore/reflect/AnnotationMember;->validateValue()Ljava/lang/Object;

    move-result-object v7

    .line 300
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_16

    .line 301
    new-instance v8, Ljava/lang/annotation/IncompleteAnnotationException;

    iget-object v9, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-direct {v8, v9, v5}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 305
    .end local v0    # "arr$":[Llibcore/reflect/AnnotationMember;
    .end local v2    # "element":Llibcore/reflect/AnnotationMember;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "value":Ljava/lang/Object;
    :cond_6c
    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_89

    aget-object v8, v6, v10

    const-class v9, Ljava/lang/Object;

    if-ne v8, v9, :cond_89

    const-string v8, "equals"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 306
    aget-object v8, p3, v10

    invoke-virtual {p0, v8}, Llibcore/reflect/AnnotationFactory;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_16

    .line 308
    :cond_89
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid method for annotation type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v1, "result":Ljava/lang/StringBuilder;
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v2, v2

    if-ge v0, v2, :cond_2f

    .line 259
    if-eqz v0, :cond_25

    .line 260
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_25
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 264
    :cond_2f
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
