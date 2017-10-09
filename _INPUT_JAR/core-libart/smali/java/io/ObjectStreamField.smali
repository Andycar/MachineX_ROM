.class public Ljava/io/ObjectStreamField;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isDeserialized:Z

.field private name:Ljava/lang/String;

.field offset:I

.field private type:Ljava/lang/Object;

.field private typeString:Ljava/lang/String;

.field private unshared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_d

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_d
    if-nez p2, :cond_17

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cl == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_17
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-nez p1, :cond_d

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_d
    if-nez p2, :cond_17

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cl == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_17
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 92
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_24

    .end local p2    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1f
    iput-object p2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    .line 93
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 94
    return-void

    .line 92
    .restart local p2    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_1f
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-nez p2, :cond_d

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_d
    iput-object p2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 110
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/io/ObjectStreamField;->defaultResolve()Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    .line 113
    return-void
.end method

.method private defaultResolve()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 336
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_3a

    .line 362
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    .line 363
    :goto_10
    return v0

    .line 338
    :sswitch_11
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_10

    .line 341
    :sswitch_16
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_10

    .line 344
    :sswitch_1b
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_10

    .line 347
    :sswitch_20
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_10

    .line 350
    :sswitch_25
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_10

    .line 353
    :sswitch_2a
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_10

    .line 356
    :sswitch_2f
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_10

    .line 359
    :sswitch_34
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_10

    .line 336
    nop

    :sswitch_data_3a
    .sparse-switch
        0x42 -> :sswitch_16
        0x43 -> :sswitch_1b
        0x44 -> :sswitch_34
        0x46 -> :sswitch_2f
        0x49 -> :sswitch_11
        0x4a -> :sswitch_2a
        0x53 -> :sswitch_20
        0x5a -> :sswitch_25
    .end sparse-switch
.end method

.method private typeCodeOf(Ljava/lang/Class;)C
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)C"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 212
    const/16 v0, 0x49

    .line 230
    :goto_6
    return v0

    .line 213
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    .line 214
    const/16 v0, 0x42

    goto :goto_6

    .line 215
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_15

    .line 216
    const/16 v0, 0x43

    goto :goto_6

    .line 217
    :cond_15
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1c

    .line 218
    const/16 v0, 0x53

    goto :goto_6

    .line 219
    :cond_1c
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_23

    .line 220
    const/16 v0, 0x5a

    goto :goto_6

    .line 221
    :cond_23
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2a

    .line 222
    const/16 v0, 0x4a

    goto :goto_6

    .line 223
    :cond_2a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_31

    .line 224
    const/16 v0, 0x46

    goto :goto_6

    .line 225
    :cond_31
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_38

    .line 226
    const/16 v0, 0x44

    goto :goto_6

    .line 227
    :cond_38
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 228
    const/16 v0, 0x5b

    goto :goto_6

    .line 230
    :cond_41
    const/16 v0, 0x4c

    goto :goto_6
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 128
    move-object v0, p1

    check-cast v0, Ljava/io/ObjectStreamField;

    .line 129
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    .line 130
    .local v2, "thisPrimitive":Z
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v1

    .line 134
    .local v1, "fPrimitive":Z
    if-eq v2, v1, :cond_13

    .line 135
    if-eqz v2, :cond_11

    const/4 v3, -0x1

    .line 139
    :goto_10
    return v3

    .line 135
    :cond_11
    const/4 v3, 0x1

    goto :goto_10

    .line 139
    :cond_13
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_10
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 181
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v1, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 182
    const-class v0, Ljava/lang/Object;

    .line 184
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    return-object v0
.end method

.method public getTypeCode()C
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ObjectStreamField;->typeCodeOf(Ljava/lang/Class;)C

    move-result v0

    return v0
.end method

.method getTypeInternal()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    .line 169
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 171
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    goto :goto_10
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 243
    const/4 v3, 0x0

    .line 251
    :goto_7
    return-object v3

    .line 245
    :cond_8
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 246
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v1

    .line 247
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "typeName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object v0, v2

    .line 249
    .local v0, "str":Ljava/lang/String;
    :goto_23
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    .line 251
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "typeName":Ljava/lang/String;
    :cond_29
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    goto :goto_7

    .line 248
    .restart local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "typeName":Ljava/lang/String;
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public isPrimitive()Z
    .registers 3

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 262
    .local v0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isUnshared()Z
    .registers 2

    .prologue
    .line 324
    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return v0
.end method

.method resolve(Ljava/lang/ClassLoader;)V
    .registers 9
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    if-nez v2, :cond_16

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 296
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    .line 299
    :cond_16
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_25

    .line 300
    invoke-direct {p0}, Ljava/io/ObjectStreamField;->defaultResolve()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 316
    :goto_24
    return-void

    .line 305
    :cond_25
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_41

    .line 308
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 311
    :cond_41
    const/4 v2, 0x0

    :try_start_42
    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 312
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_51

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4c
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_24

    .line 313
    :catch_4f
    move-exception v2

    goto :goto_24

    .line 312
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_51
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_56} :catch_4f

    move-object v0, v2

    goto :goto_4c
.end method

.method protected setOffset(I)V
    .registers 2
    .param p1, "newValue"    # I

    .prologue
    .line 279
    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    .line 280
    return-void
.end method

.method setUnshared(Z)V
    .registers 2
    .param p1, "unshared"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 329
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeField(Ljava/io/DataOutputStream;)Z
    .registers 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    .line 267
    .local v0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Ljava/io/ObjectStreamField;->typeCodeOf(Ljava/lang/Class;)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 268
    iget-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 269
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method
