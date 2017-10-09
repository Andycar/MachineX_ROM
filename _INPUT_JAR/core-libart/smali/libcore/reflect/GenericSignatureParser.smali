.class public final Llibcore/reflect/GenericSignatureParser;
.super Ljava/lang/Object;
.source "GenericSignatureParser.java"


# instance fields
.field buffer:[C

.field private eof:Z

.field public exceptionTypes:Llibcore/reflect/ListOfTypes;

.field public fieldType:Ljava/lang/reflect/Type;

.field public formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

.field genericDecl:Ljava/lang/reflect/GenericDeclaration;

.field identifier:Ljava/lang/String;

.field public interfaceTypes:Llibcore/reflect/ListOfTypes;

.field public loader:Ljava/lang/ClassLoader;

.field public parameterTypes:Llibcore/reflect/ListOfTypes;

.field pos:I

.field public returnType:Ljava/lang/reflect/Type;

.field public superclassType:Ljava/lang/reflect/Type;

.field symbol:C


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Llibcore/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    .line 102
    return-void
.end method

.method static isStopSymbol(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 478
    sparse-switch p0, :sswitch_data_8

    .line 486
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 484
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 478
    nop

    :sswitch_data_8
    .sparse-switch
        0x2e -> :sswitch_5
        0x2f -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method expect(C)V
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 470
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-ne v0, p1, :cond_8

    .line 471
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 475
    return-void

    .line 473
    :cond_8
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0
.end method

.method parseClassSignature()V
    .registers 3

    .prologue
    .line 231
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseOptFormalTypeParameters()V

    .line 234
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 236
    new-instance v0, Llibcore/reflect/ListOfTypes;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    .line 237
    :goto_12
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-lez v0, :cond_20

    .line 239
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_12

    .line 241
    :cond_20
    return-void
.end method

.method parseClassTypeSignature()Ljava/lang/reflect/Type;
    .registers 8

    .prologue
    .line 305
    const/16 v4, 0x4c

    invoke-virtual {p0, v4}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v1, "qualIdent":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    .line 309
    :goto_d
    iget-char v4, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_25

    .line 310
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 311
    iget-object v4, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    goto :goto_d

    .line 315
    :cond_25
    iget-object v4, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseOptTypeArguments()Llibcore/reflect/ListOfTypes;

    move-result-object v3

    .line 318
    .local v3, "typeArgs":Llibcore/reflect/ListOfTypes;
    new-instance v0, Llibcore/reflect/ParameterizedTypeImpl;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Llibcore/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v4, v5, v3, v6}, Llibcore/reflect/ParameterizedTypeImpl;-><init>(Llibcore/reflect/ParameterizedTypeImpl;Ljava/lang/String;Llibcore/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V

    .line 320
    .local v0, "parentType":Llibcore/reflect/ParameterizedTypeImpl;
    move-object v2, v0

    .line 322
    .local v2, "type":Llibcore/reflect/ParameterizedTypeImpl;
    :goto_3b
    iget-char v4, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_62

    .line 324
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 325
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    .line 326
    const-string v4, "$"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseOptTypeArguments()Llibcore/reflect/ListOfTypes;

    move-result-object v3

    .line 328
    new-instance v2, Llibcore/reflect/ParameterizedTypeImpl;

    .end local v2    # "type":Llibcore/reflect/ParameterizedTypeImpl;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Llibcore/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v0, v4, v3, v5}, Llibcore/reflect/ParameterizedTypeImpl;-><init>(Llibcore/reflect/ParameterizedTypeImpl;Ljava/lang/String;Llibcore/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V

    .restart local v2    # "type":Llibcore/reflect/ParameterizedTypeImpl;
    goto :goto_3b

    .line 332
    :cond_62
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 334
    return-object v2
.end method

.method parseFieldTypeSignature()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 287
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    sparse-switch v0, :sswitch_data_22

    .line 297
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0

    .line 289
    :sswitch_b
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 295
    :goto_f
    return-object v0

    .line 292
    :sswitch_10
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 293
    new-instance v0, Llibcore/reflect/GenericArrayTypeImpl;

    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Llibcore/reflect/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_f

    .line 295
    :sswitch_1d
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeVariableSignature()Llibcore/reflect/TypeVariableImpl;

    move-result-object v0

    goto :goto_f

    .line 287
    :sswitch_data_22
    .sparse-switch
        0x4c -> :sswitch_b
        0x54 -> :sswitch_1d
        0x5b -> :sswitch_10
    .end sparse-switch
.end method

.method public parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .registers 6
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Llibcore/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 125
    iget-boolean v2, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    if-nez v2, :cond_b

    .line 126
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassSignature()V

    .line 144
    :goto_a
    return-void

    .line 128
    :cond_b
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_30

    move-object v0, p1

    .line 129
    check-cast v0, Ljava/lang/Class;

    .line 130
    .local v0, "c":Ljava/lang/Class;
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    if-nez v2, :cond_28

    .line 134
    sget-object v2, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_a

    .line 136
    :cond_28
    new-instance v2, Llibcore/reflect/ListOfTypes;

    invoke-direct {v2, v1}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_a

    .line 139
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_30
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 140
    const-class v2, Ljava/lang/Object;

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 141
    sget-object v2, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_a
.end method

.method public parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 8
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericDeclaration;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "rawExceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Llibcore/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 187
    iget-boolean v3, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    if-nez v3, :cond_b

    .line 188
    invoke-virtual {p0, p3}, Llibcore/reflect/GenericSignatureParser;->parseMethodTypeSignature([Ljava/lang/Class;)V

    .line 205
    :goto_a
    return-void

    :cond_b
    move-object v0, p1

    .line 190
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 191
    .local v0, "c":Ljava/lang/reflect/Constructor;
    sget-object v3, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 192
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 193
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    if-nez v3, :cond_29

    .line 194
    sget-object v3, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    .line 198
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 199
    .local v1, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v1

    if-nez v3, :cond_31

    .line 200
    sget-object v3, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_a

    .line 196
    .end local v1    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_29
    new-instance v3, Llibcore/reflect/ListOfTypes;

    invoke-direct {v3, v2}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_1d

    .line 202
    .restart local v1    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_31
    new-instance v3, Llibcore/reflect/ListOfTypes;

    invoke-direct {v3, v1}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_a
.end method

.method public parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .registers 4
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Llibcore/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 217
    iget-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    if-nez v0, :cond_d

    .line 218
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    .line 220
    :cond_d
    return-void
.end method

.method public parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 8
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericDeclaration;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "rawExceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Llibcore/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 156
    iget-boolean v3, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    if-nez v3, :cond_b

    .line 157
    invoke-virtual {p0, p3}, Llibcore/reflect/GenericSignatureParser;->parseMethodTypeSignature([Ljava/lang/Class;)V

    .line 175
    :goto_a
    return-void

    :cond_b
    move-object v1, p1

    .line 159
    check-cast v1, Ljava/lang/reflect/Method;

    .line 160
    .local v1, "m":Ljava/lang/reflect/Method;
    sget-object v3, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 161
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 162
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    if-nez v3, :cond_2f

    .line 163
    sget-object v3, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    .line 167
    :goto_1d
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 168
    .local v0, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v0

    if-nez v3, :cond_37

    .line 169
    sget-object v3, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    .line 173
    :goto_28
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    goto :goto_a

    .line 165
    .end local v0    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2f
    new-instance v3, Llibcore/reflect/ListOfTypes;

    invoke-direct {v3, v2}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_1d

    .line 171
    .restart local v0    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_37
    new-instance v3, Llibcore/reflect/ListOfTypes;

    invoke-direct {v3, v0}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_28
.end method

.method parseFormalTypeParameter()Llibcore/reflect/TypeVariableImpl;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llibcore/reflect/TypeVariableImpl",
            "<",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3a

    .line 263
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    .line 264
    iget-object v2, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Llibcore/reflect/ListOfTypes;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    .line 269
    .local v0, "bounds":Llibcore/reflect/ListOfTypes;
    invoke-virtual {p0, v4}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 270
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_27

    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_27

    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x54

    if-ne v2, v3, :cond_2e

    .line 271
    :cond_27
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 274
    :cond_2e
    :goto_2e
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-ne v2, v4, :cond_3d

    .line 276
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 277
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_2e

    .line 280
    :cond_3d
    new-instance v2, Llibcore/reflect/TypeVariableImpl;

    iget-object v3, p0, Llibcore/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    invoke-direct {v2, v3, v1, v0}, Llibcore/reflect/TypeVariableImpl;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Llibcore/reflect/ListOfTypes;)V

    return-object v2
.end method

.method parseMethodTypeSignature([Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "rawExceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v3, 0x5e

    const/16 v2, 0x29

    .line 413
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseOptFormalTypeParameters()V

    .line 415
    new-instance v0, Llibcore/reflect/ListOfTypes;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    .line 416
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 417
    :goto_15
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-eq v0, v2, :cond_27

    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-lez v0, :cond_27

    .line 418
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_15

    .line 420
    :cond_27
    invoke-virtual {p0, v2}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 422
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    .line 424
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-ne v0, v3, :cond_5e

    .line 425
    new-instance v0, Llibcore/reflect/ListOfTypes;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    .line 427
    :cond_3d
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 431
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v1, 0x54

    if-ne v0, v1, :cond_54

    .line 432
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeVariableSignature()Llibcore/reflect/TypeVariableImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 436
    :goto_4f
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-eq v0, v3, :cond_3d

    .line 442
    :goto_53
    return-void

    .line 434
    :cond_54
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_4f

    .line 437
    :cond_5e
    if-eqz p1, :cond_68

    .line 438
    new-instance v0, Llibcore/reflect/ListOfTypes;

    invoke-direct {v0, p1}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_53

    .line 440
    :cond_68
    new-instance v0, Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    goto :goto_53
.end method

.method parseOptFormalTypeParameters()V
    .registers 5

    .prologue
    const/16 v3, 0x3e

    .line 247
    new-instance v0, Llibcore/reflect/ListOfVariables;

    invoke-direct {v0}, Llibcore/reflect/ListOfVariables;-><init>()V

    .line 249
    .local v0, "typeParams":Llibcore/reflect/ListOfVariables;
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2a

    .line 250
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 251
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFormalTypeParameter()Llibcore/reflect/TypeVariableImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfVariables;->add(Ljava/lang/reflect/TypeVariable;)V

    .line 252
    :goto_17
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-eq v1, v3, :cond_27

    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-lez v1, :cond_27

    .line 253
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFormalTypeParameter()Llibcore/reflect/TypeVariableImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfVariables;->add(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_17

    .line 255
    :cond_27
    invoke-virtual {p0, v3}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 257
    :cond_2a
    invoke-virtual {v0}, Llibcore/reflect/ListOfVariables;->getArray()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    iput-object v1, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    .line 258
    return-void
.end method

.method parseOptTypeArguments()Llibcore/reflect/ListOfTypes;
    .registers 5

    .prologue
    const/16 v3, 0x3e

    .line 340
    new-instance v0, Llibcore/reflect/ListOfTypes;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    .line 341
    .local v0, "typeArgs":Llibcore/reflect/ListOfTypes;
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2c

    .line 342
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 344
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeArgument()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 345
    :goto_19
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-eq v1, v3, :cond_29

    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    if-lez v1, :cond_29

    .line 346
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeArgument()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_19

    .line 348
    :cond_29
    invoke-virtual {p0, v3}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 350
    :cond_2c
    return-object v0
.end method

.method parseReturnType()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 446
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v1, 0x56

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 447
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_a
.end method

.method parseTypeArgument()Ljava/lang/reflect/Type;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 355
    new-instance v0, Llibcore/reflect/ListOfTypes;

    invoke-direct {v0, v2}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    .line 356
    .local v0, "extendsBound":Llibcore/reflect/ListOfTypes;
    new-instance v1, Llibcore/reflect/ListOfTypes;

    invoke-direct {v1, v2}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    .line 357
    .local v1, "superBound":Llibcore/reflect/ListOfTypes;
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1f

    .line 358
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 359
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 360
    new-instance v2, Llibcore/reflect/WildcardTypeImpl;

    invoke-direct {v2, v0, v1}, Llibcore/reflect/WildcardTypeImpl;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V

    .line 374
    :goto_1e
    return-object v2

    .line 362
    :cond_1f
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_35

    .line 363
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 364
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 365
    new-instance v2, Llibcore/reflect/WildcardTypeImpl;

    invoke-direct {v2, v0, v1}, Llibcore/reflect/WildcardTypeImpl;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V

    goto :goto_1e

    .line 367
    :cond_35
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_50

    .line 368
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 369
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 370
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    .line 371
    new-instance v2, Llibcore/reflect/WildcardTypeImpl;

    invoke-direct {v2, v0, v1}, Llibcore/reflect/WildcardTypeImpl;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V

    goto :goto_1e

    .line 374
    :cond_50
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_1e
.end method

.method parseTypeSignature()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 389
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    sparse-switch v0, :sswitch_data_3a

    .line 400
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_9
    return-object v0

    .line 390
    :sswitch_a
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 391
    :sswitch_10
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 392
    :sswitch_16
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 393
    :sswitch_1c
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 394
    :sswitch_22
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 395
    :sswitch_28
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 396
    :sswitch_2e
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 397
    :sswitch_34
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_9

    .line 389
    :sswitch_data_3a
    .sparse-switch
        0x42 -> :sswitch_a
        0x43 -> :sswitch_10
        0x44 -> :sswitch_16
        0x46 -> :sswitch_1c
        0x49 -> :sswitch_22
        0x4a -> :sswitch_28
        0x53 -> :sswitch_2e
        0x5a -> :sswitch_34
    .end sparse-switch
.end method

.method parseTypeVariableSignature()Llibcore/reflect/TypeVariableImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llibcore/reflect/TypeVariableImpl",
            "<",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 381
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    .line 382
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    .line 385
    new-instance v0, Llibcore/reflect/TypeVariableImpl;

    iget-object v1, p0, Llibcore/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    iget-object v2, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Llibcore/reflect/TypeVariableImpl;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    return-object v0
.end method

.method scanIdentifier()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 492
    iget-boolean v2, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    if-nez v2, :cond_65

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    .local v1, "identBuf":Ljava/lang/StringBuilder;
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    invoke-static {v2}, Llibcore/reflect/GenericSignatureParser;->isStopSymbol(C)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 495
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 497
    :cond_1a
    iget-object v2, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    iget v3, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    aget-char v0, v2, v3

    .line 498
    .local v0, "ch":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_28

    const/16 v2, 0x7a

    if-le v0, v2, :cond_36

    :cond_28
    const/16 v2, 0x41

    if-lt v0, v2, :cond_30

    const/16 v2, 0x5a

    if-le v0, v2, :cond_36

    :cond_30
    invoke-static {v0}, Llibcore/reflect/GenericSignatureParser;->isStopSymbol(C)Z

    move-result v2

    if-nez v2, :cond_51

    .line 500
    :cond_36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    iget v2, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    .line 507
    iget v2, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    iget-object v3, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1a

    .line 508
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    .line 509
    iput-char v4, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    .line 510
    iput-boolean v5, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    .line 520
    :goto_50
    return-void

    .line 503
    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    goto :goto_50

    .line 513
    .end local v0    # "ch":C
    :cond_5b
    iput-char v4, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    .line 514
    iput-boolean v5, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    .line 515
    new-instance v2, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v2}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v2

    .line 518
    .end local v1    # "identBuf":Ljava/lang/StringBuilder;
    :cond_65
    new-instance v2, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v2}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v2
.end method

.method scanSymbol()V
    .registers 3

    .prologue
    .line 456
    iget-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    if-nez v0, :cond_21

    .line 457
    iget v0, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    iget-object v1, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 458
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    iget v1, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    aget-char v0, v0, v1

    iput-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    .line 459
    iget v0, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    .line 467
    :goto_19
    return-void

    .line 461
    :cond_1a
    const/4 v0, 0x0

    iput-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    goto :goto_19

    .line 465
    :cond_21
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0
.end method

.method setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .registers 4
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p2, :cond_11

    .line 106
    iput-object p1, p0, Llibcore/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    .line 107
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    .line 109
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    .line 114
    :goto_10
    return-void

    .line 112
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    goto :goto_10
.end method
