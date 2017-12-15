.class public Landroid/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 5
    .param p0, "cls"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 109
    if-nez p0, :cond_8

    .line 110
    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_7
    return-void

    .line 112
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "simpleName":Ljava/lang/String;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 114
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 115
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 116
    .local v0, "end":I
    if-lez v0, :cond_2e

    .line 117
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .end local v0    # "end":I
    :cond_2e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static isObjectSelected(Ljava/lang/Object;)Z
    .registers 15
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    .local v4, "match":Z
    const-string v10, "ANDROID_OBJECT_FILTER"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "s":Ljava/lang/String;
    if-eqz v7, :cond_a1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a1

    .line 70
    const-string v10, "@"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "selectors":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 74
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_27
    array-length v10, v8

    if-ge v2, v10, :cond_a1

    .line 75
    aget-object v10, v8, v2

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "pair":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 78
    .local v3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "declaredMethod":Ljava/lang/reflect/Method;
    move-object v6, v3

    .line 81
    .local v6, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_38
    :try_start_38
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_75

    if-eqz v0, :cond_38

    .line 88
    :cond_75
    if-eqz v0, :cond_8c

    .line 89
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 91
    .local v9, "value":Ljava/lang/Object;
    if-eqz v9, :cond_8f

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_84
    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v4, v10

    .line 74
    .end local v9    # "value":Ljava/lang/Object;
    :cond_8c
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 91
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_8f
    const-string v10, "null"
    :try_end_91
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_91} :catch_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_91} :catch_97
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_91} :catch_9c

    goto :goto_84

    .line 94
    .end local v9    # "value":Ljava/lang/Object;
    :catch_92
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_8c

    .line 96
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_97
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_8c

    .line 98
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_9c
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_8c

    .line 104
    .end local v0    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "i":I
    .end local v3    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "selectors":[Ljava/lang/String;
    :cond_a1
    return v4
.end method
