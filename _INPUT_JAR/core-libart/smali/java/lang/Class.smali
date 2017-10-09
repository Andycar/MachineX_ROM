.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Class$Caches;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient accessFlags:I

.field private transient classLoader:Ljava/lang/ClassLoader;

.field private transient classSize:I

.field private transient clinitThreadId:I

.field private transient componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient dexCache:Ljava/lang/DexCache;

.field private transient dexClassDefIndex:I

.field private volatile transient dexTypeIndex:I

.field private transient directMethods:[Ljava/lang/reflect/ArtMethod;

.field private transient iFields:[Ljava/lang/reflect/ArtField;

.field private transient ifTable:[Ljava/lang/Object;

.field private transient imTable:[Ljava/lang/reflect/ArtMethod;

.field private transient name:Ljava/lang/String;

.field private transient numReferenceInstanceFields:I

.field private transient numReferenceStaticFields:I

.field private transient objectSize:I

.field private transient primitiveType:I

.field private transient referenceInstanceOffsets:I

.field private transient referenceStaticOffsets:I

.field private transient sFields:[Ljava/lang/reflect/ArtField;

.field private transient status:I

.field private transient superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private transient verifyErrorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient virtualMethods:[Ljava/lang/reflect/ArtMethod;

.field private transient vtable:[Ljava/lang/reflect/ArtMethod;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 247
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method private canAccess(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1658
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p1, Ljava/lang/Class;->accessFlags:I

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1659
    const/4 v0, 0x1

    .line 1661
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_9
.end method

.method private canAccessMember(Ljava/lang/Class;I)Z
    .registers 6
    .param p2, "memberModifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 1665
    if-eq p1, p0, :cond_9

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1678
    :cond_9
    :goto_9
    return v1

    .line 1668
    :cond_a
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1669
    const/4 v1, 0x0

    goto :goto_9

    .line 1671
    :cond_12
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1672
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v0, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1a
    if-eqz v0, :cond_21

    .line 1673
    if-eq v0, p1, :cond_9

    .line 1672
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_1a

    .line 1678
    .end local v0    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_21
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_9
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
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
.end method

.method private classNameImpliesTopLevel()Z
    .registers 3

    .prologue
    .line 1059
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;
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
    .line 272
    const/4 v0, 0x1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "shouldInitialize"    # Z
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
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
    .line 297
    if-nez p2, :cond_6

    .line 298
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 308
    :cond_6
    :try_start_6
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v2

    .line 316
    .local v2, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v2

    .line 309
    .end local v2    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_b
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 311
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/LinkageError;

    if-eqz v3, :cond_17

    .line 312
    check-cast v0, Ljava/lang/LinkageError;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 314
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_17
    throw v1
.end method

.method private getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .registers 11
    .param p2, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_4

    .line 522
    sget-object p1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 524
    :cond_4
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_18

    aget-object v1, v0, v2

    .line 525
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_15

    .line 526
    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 524
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 529
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 530
    .local v4, "result":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v4, :cond_2a

    if-eqz p2, :cond_47

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_47

    .line 531
    :cond_2a
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<init> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 533
    :cond_47
    return-object v4
.end method

.method private getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_2b

    .line 544
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_2b

    aget-object v3, v0, v1

    .line 545
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 546
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 544
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 550
    :cond_19
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 553
    invoke-static {v3, p1}, Ljava/lang/reflect/ArtMethod;->equalConstructorParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 556
    new-instance v5, Ljava/lang/reflect/Constructor;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/reflect/ArtMethod;)V

    .line 559
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :goto_2a
    return-object v5

    :cond_2b
    const/4 v5, 0x0

    goto :goto_2a
.end method

.method private getDeclaredConstructors(ZLjava/util/List;)V
    .registers 9
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<TT;>;>;"
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_30

    .line 592
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_30

    aget-object v3, v0, v1

    .line 593
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 594
    .local v4, "modifiers":I
    if-eqz p1, :cond_18

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 595
    :cond_18
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 592
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 599
    :cond_21
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 600
    new-instance v5, Ljava/lang/reflect/Constructor;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 605
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_30
    return-void
.end method

.method private getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 978
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-eqz v4, :cond_1f

    .line 979
    iget-object v0, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    .local v0, "arr$":[Ljava/lang/reflect/ArtField;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_1f

    aget-object v1, v0, v2

    .line 980
    .local v1, "f":Ljava/lang/reflect/ArtField;
    invoke-virtual {v1}, Ljava/lang/reflect/ArtField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 981
    new-instance v4, Ljava/lang/reflect/Field;

    invoke-direct {v4, v1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    .line 992
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1b
    return-object v4

    .line 979
    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .restart local v1    # "f":Ljava/lang/reflect/ArtField;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 985
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1f
    iget-object v4, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-eqz v4, :cond_3e

    .line 986
    iget-object v0, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_27
    if-ge v2, v3, :cond_3e

    aget-object v1, v0, v2

    .line 987
    .restart local v1    # "f":Ljava/lang/reflect/ArtField;
    invoke-virtual {v1}, Ljava/lang/reflect/ArtField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 988
    new-instance v4, Ljava/lang/reflect/Field;

    invoke-direct {v4, v1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    goto :goto_1b

    .line 986
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 992
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3e
    const/4 v4, 0x0

    goto :goto_1b
.end method

.method private native getDeclaredFieldInternalNative(Ljava/lang/String;)Ljava/lang/reflect/Field;
.end method

.method private getDeclaredFields(ZLjava/util/List;)V
    .registers 8
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 957
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    iget-object v4, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-eqz v4, :cond_23

    .line 958
    iget-object v0, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    .local v0, "arr$":[Ljava/lang/reflect/ArtField;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_23

    aget-object v1, v0, v2

    .line 959
    .local v1, "f":Ljava/lang/reflect/ArtField;
    if-eqz p1, :cond_18

    invoke-virtual {v1}, Ljava/lang/reflect/ArtField;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 960
    :cond_18
    new-instance v4, Ljava/lang/reflect/Field;

    invoke-direct {v4, v1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 964
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_23
    iget-object v4, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-eqz v4, :cond_46

    .line 965
    iget-object v0, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2b
    if-ge v2, v3, :cond_46

    aget-object v1, v0, v2

    .line 966
    .restart local v1    # "f":Ljava/lang/reflect/ArtField;
    if-eqz p1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/reflect/ArtField;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 967
    :cond_3b
    new-instance v4, Ljava/lang/reflect/Field;

    invoke-direct {v4, v1}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/reflect/ArtField;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 971
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtField;
    .end local v1    # "f":Ljava/lang/reflect/ArtField;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_46
    return-void
.end method

.method private getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const v7, 0x201000

    .line 733
    .local v7, "skipModifiers":I
    const/4 v1, 0x0

    .line 735
    .local v1, "artMethodResult":Ljava/lang/reflect/ArtMethod;
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v8, :cond_39

    .line 736
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_c
    if-ge v2, v3, :cond_39

    aget-object v4, v0, v2

    .line 737
    .local v4, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v4}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v6

    .line 738
    .local v6, "modifiers":I
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 736
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 741
    :cond_1d
    invoke-static {v4}, Ljava/lang/reflect/ArtMethod;->getMethodName(Ljava/lang/reflect/ArtMethod;)Ljava/lang/String;

    move-result-object v5

    .line 742
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 745
    invoke-static {v4, p2}, Ljava/lang/reflect/ArtMethod;->equalMethodParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 748
    and-int v8, v6, v7

    if-nez v8, :cond_37

    .line 749
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v4}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    .line 782
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :goto_36
    return-object v8

    .line 753
    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "modifiers":I
    :cond_37
    move-object v1, v4

    goto :goto_1a

    .line 757
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :cond_39
    if-nez v1, :cond_6f

    .line 758
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v8, :cond_6f

    .line 759
    iget-object v0, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_43
    if-ge v2, v3, :cond_6f

    aget-object v4, v0, v2

    .line 760
    .restart local v4    # "m":Ljava/lang/reflect/ArtMethod;
    invoke-static {v4}, Ljava/lang/reflect/ArtMethod;->getMethodName(Ljava/lang/reflect/ArtMethod;)Ljava/lang/String;

    move-result-object v5

    .line 761
    .restart local v5    # "methodName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_54

    .line 759
    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 764
    :cond_54
    invoke-static {v4, p2}, Ljava/lang/reflect/ArtMethod;->equalMethodParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 767
    invoke-virtual {v4}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v6

    .line 768
    .restart local v6    # "modifiers":I
    and-int v8, v6, v7

    if-nez v8, :cond_68

    .line 769
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v4}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    goto :goto_36

    .line 771
    :cond_68
    const/high16 v8, 0x200000

    and-int/2addr v8, v6

    if-nez v8, :cond_51

    .line 773
    move-object v1, v4

    goto :goto_51

    .line 779
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "modifiers":I
    :cond_6f
    if-nez v1, :cond_73

    .line 780
    const/4 v8, 0x0

    goto :goto_36

    .line 782
    :cond_73
    new-instance v8, Ljava/lang/reflect/Method;

    invoke-direct {v8, v1}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    goto :goto_36
.end method

.method private getDeclaredMethods(ZLjava/util/List;)V
    .registers 9
    .param p1, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    iget-object v5, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_28

    .line 814
    iget-object v0, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    .local v0, "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_28

    aget-object v3, v0, v1

    .line 815
    .local v3, "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 816
    .local v4, "modifiers":I
    if-eqz p1, :cond_18

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 818
    :cond_18
    const/high16 v5, 0x200000

    and-int/2addr v5, v4

    if-nez v5, :cond_25

    .line 819
    new-instance v5, Ljava/lang/reflect/Method;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 824
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_28
    iget-object v5, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-eqz v5, :cond_51

    .line 825
    iget-object v0, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    .restart local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_30
    if-ge v1, v2, :cond_51

    aget-object v3, v0, v1

    .line 826
    .restart local v3    # "m":Ljava/lang/reflect/ArtMethod;
    invoke-virtual {v3}, Ljava/lang/reflect/ArtMethod;->getAccessFlags()I

    move-result v4

    .line 827
    .restart local v4    # "modifiers":I
    if-eqz p1, :cond_40

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 829
    :cond_40
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 830
    new-instance v5, Ljava/lang/reflect/Method;

    invoke-direct {v5, v3}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/reflect/ArtMethod;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 835
    .end local v0    # "arr$":[Ljava/lang/reflect/ArtMethod;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "m":Ljava/lang/reflect/ArtMethod;
    .end local v4    # "modifiers":I
    :cond_51
    return-void
.end method

.method private native getFieldNative(Ljava/lang/String;)Ljava/lang/reflect/Field;
.end method

.method private getInnerClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1345
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getInnerClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "recursivePublicMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_a

    .line 676
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 678
    :cond_a
    if-nez p2, :cond_e

    .line 679
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 681
    :cond_e
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_11
    if-ge v2, v3, :cond_22

    aget-object v1, v0, v2

    .line 682
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1f

    .line 683
    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 681
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 686
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_22
    if-eqz p3, :cond_57

    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 689
    .local v4, "result":Ljava/lang/reflect/Method;
    :goto_28
    if-eqz v4, :cond_36

    if-eqz p3, :cond_5c

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 691
    :cond_36
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 686
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_57
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_28

    .line 693
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    :cond_5c
    return-object v4
.end method

.method private native getMethodNative(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private native getProxyInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method private getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1135
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_15

    .line 1136
    invoke-direct {v0, p1}, Ljava/lang/Class;->getDeclaredFieldInternalNative(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1137
    .local v3, "result":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    .line 1153
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_11
    :goto_11
    return-object v3

    .line 1135
    .restart local v3    # "result":Ljava/lang/reflect/Field;
    :cond_12
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_1

    .line 1143
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_15
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    if-eqz v4, :cond_36

    .line 1144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_36

    .line 1145
    iget-object v4, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    aget-object v2, v4, v1

    check-cast v2, Ljava/lang/Class;

    .line 1146
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1147
    .restart local v3    # "result":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_11

    .line 1144
    :cond_33
    add-int/lit8 v1, v1, 0x2

    goto :goto_1a

    .line 1153
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "result":Ljava/lang/reflect/Field;
    :cond_36
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private getPublicFieldsRecursive(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v5, 0x1

    .line 1183
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v0, :cond_a

    .line 1184
    invoke-direct {v0, v5, p1}, Ljava/lang/Class;->getDeclaredFields(ZLjava/util/List;)V

    .line 1183
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_2

    .line 1188
    :cond_a
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1189
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_1c

    .line 1190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v4, v3

    if-ge v1, v4, :cond_1c

    .line 1191
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 1192
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, v5, p1}, Ljava/lang/Class;->getDeclaredFields(ZLjava/util/List;)V

    .line 1190
    add-int/lit8 v1, v1, 0x2

    goto :goto_f

    .line 1195
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    return-void
.end method

.method private getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_19

    .line 699
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 700
    .local v4, "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 715
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_13
    :goto_13
    return-object v4

    .line 698
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 705
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_19
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 706
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_38

    .line 707
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v5, v3

    if-ge v1, v5, :cond_38

    .line 708
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 709
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 710
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_13

    .line 707
    :cond_35
    add-int/lit8 v1, v1, 0x2

    goto :goto_1e

    .line 715
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_38
    const/4 v4, 0x0

    goto :goto_13
.end method

.method private getPublicMethodsInternal(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v5, 0x1

    .line 865
    invoke-direct {p0, v5, p1}, Ljava/lang/Class;->getDeclaredMethods(ZLjava/util/List;)V

    .line 866
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_14

    .line 868
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c
    if-eqz v0, :cond_14

    .line 869
    invoke-direct {v0, v5, p1}, Ljava/lang/Class;->getDeclaredMethods(ZLjava/util/List;)V

    .line 868
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_c

    .line 873
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 874
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_26

    .line 875
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    array-length v4, v3

    if-ge v1, v4, :cond_26

    .line 876
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/Class;

    .line 877
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, v5, p1}, Ljava/lang/Class;->getDeclaredMethods(ZLjava/util/List;)V

    .line 875
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 880
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_26
    return-void
.end method

.method private inSamePackage(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 1682
    iget-object v3, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    iget-object v4, p1, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    if-eq v3, v4, :cond_8

    .line 1692
    :cond_7
    :goto_7
    return v2

    .line 1685
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v0

    .line 1686
    .local v0, "packageName1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    .line 1687
    .local v1, "packageName2":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 1688
    if-nez v1, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    .line 1689
    :cond_16
    if-eqz v1, :cond_7

    .line 1692
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_7
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    .prologue
    .line 1751
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1752
    return-object p0

    .line 1754
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1755
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1756
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1768
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_4

    .line 1769
    const/4 p1, 0x0

    .line 1771
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_3
    return-object p1

    .line 1770
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1773
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1774
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1775
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public desiredAssertionStatus()Z
    .registers 2

    .prologue
    .line 1738
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 353
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .registers 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 394
    :cond_d
    :goto_d
    return-object v1

    .line 365
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 370
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 374
    .end local v0    # "name":Ljava/lang/String;
    :cond_32
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 379
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 380
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 388
    .end local v0    # "name":Ljava/lang/String;
    :cond_5e
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 3

    .prologue
    .line 405
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 406
    const/4 v0, 0x0

    .line 413
    :cond_7
    :goto_7
    return-object v0

    .line 409
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 410
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_7

    .line 411
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    goto :goto_7
.end method

.method getClassLoaderImpl()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 426
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    .line 427
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_8
    return-object v0
.end method

.method public getClasses()[Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6
    if-eqz v1, :cond_25

    .line 333
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v3, :cond_22

    aget-object v4, v0, v2

    .line 334
    .local v4, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 335
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 332
    .end local v4    # "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_22
    iget-object v1, v1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_6

    .line 339
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_25
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Class;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Class;

    return-object v6
.end method

.method public getComponentType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v0, "constructors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Constructor<TT;>;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/lang/Class;->getDeclaredConstructors(ZLjava/util/List;)V

    .line 573
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    return-object v1
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .prologue
    .line 891
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object v0

    .line 892
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public getDeclaredClasses()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getMemberClasses(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "constructors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Constructor<TT;>;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/lang/Class;->getDeclaredConstructors(ZLjava/util/List;)V

    .line 587
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    return-object v1
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_a

    .line 925
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 927
    :cond_a
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredFieldInternalNative(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 928
    .local v0, "result":Ljava/lang/reflect/Field;
    if-nez v0, :cond_16

    .line 929
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    :cond_16
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 933
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .registers 10

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 945
    iget-object v8, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    if-nez v8, :cond_2d

    move v4, v7

    .line 946
    .local v4, "initial_size":I
    :goto_6
    iget-object v8, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    if-nez v8, :cond_31

    move v8, v7

    :goto_b
    add-int/2addr v4, v8

    .line 947
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 948
    .local v2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v7, v2}, Ljava/lang/Class;->getDeclaredFields(ZLjava/util/List;)V

    .line 949
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Field;

    .line 950
    .local v6, "result":[Ljava/lang/reflect/Field;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_23
    if-ge v3, v5, :cond_35

    aget-object v1, v0, v3

    .line 951
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 950
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 945
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v3    # "i$":I
    .end local v4    # "initial_size":I
    .end local v5    # "len$":I
    .end local v6    # "result":[Ljava/lang/reflect/Field;
    :cond_2d
    iget-object v8, p0, Ljava/lang/Class;->sFields:[Ljava/lang/reflect/ArtField;

    array-length v4, v8

    goto :goto_6

    .line 946
    .restart local v4    # "initial_size":I
    :cond_31
    iget-object v8, p0, Ljava/lang/Class;->iFields:[Ljava/lang/reflect/ArtField;

    array-length v8, v8

    goto :goto_b

    .line 953
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "result":[Ljava/lang/reflect/Field;
    :cond_35
    return-object v6
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p2, :cond_4

    .line 630
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 632
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Ljava/lang/Class;->getMethodNative(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 634
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_2c

    .line 635
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 638
    :cond_2c
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 10

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 794
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    if-nez v8, :cond_30

    move v2, v7

    .line 795
    .local v2, "initial_size":I
    :goto_6
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    if-nez v8, :cond_34

    move v8, v7

    :goto_b
    add-int/2addr v2, v8

    .line 796
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 797
    .local v5, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v7, v5}, Ljava/lang/Class;->getDeclaredMethods(ZLjava/util/List;)V

    .line 798
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Method;

    .line 799
    .local v6, "result":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_23
    if-ge v1, v3, :cond_38

    aget-object v4, v0, v1

    .line 801
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 802
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 794
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "i$":I
    .end local v2    # "initial_size":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    .end local v6    # "result":[Ljava/lang/reflect/Method;
    :cond_30
    iget-object v8, p0, Ljava/lang/Class;->virtualMethods:[Ljava/lang/reflect/ArtMethod;

    array-length v2, v8

    goto :goto_6

    .line 795
    .restart local v2    # "initial_size":I
    :cond_34
    iget-object v8, p0, Ljava/lang/Class;->directMethods:[Ljava/lang/reflect/ArtMethod;

    array-length v8, v8

    goto :goto_b

    .line 804
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    .restart local v6    # "result":[Ljava/lang/reflect/Method;
    :cond_38
    return-object v6
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1001
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->isAnonymousClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1002
    const/4 v0, 0x0

    .line 1004
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_7
.end method

.method public getDex()Lcom/android/dex/Dex;
    .registers 2

    .prologue
    .line 446
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    if-nez v0, :cond_6

    .line 447
    const/4 v0, 0x0

    .line 449
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    invoke-virtual {v0}, Ljava/lang/DexCache;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    goto :goto_5
.end method

.method public getDexAnnotationDirectoryOffset()I
    .registers 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1825
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v1

    .line 1826
    .local v1, "dex":Lcom/android/dex/Dex;
    if-nez v1, :cond_8

    .line 1833
    :cond_7
    :goto_7
    return v2

    .line 1829
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getDexClassDefIndex()I

    move-result v0

    .line 1830
    .local v0, "classDefIndex":I
    if-ltz v0, :cond_7

    .line 1833
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex;->annotationDirectoryOffsetFromClassDefIndex(I)I

    move-result v2

    goto :goto_7
.end method

.method public getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;
    .registers 6
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexStringIndex"    # I

    .prologue
    .line 458
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    iget-object v0, v2, Ljava/lang/DexCache;->strings:[Ljava/lang/String;

    .line 459
    .local v0, "dexCacheStrings":[Ljava/lang/String;
    aget-object v1, v0, p2

    .line 460
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_14

    .line 461
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 462
    .restart local v1    # "s":Ljava/lang/String;
    aput-object v1, v0, p2

    .line 464
    :cond_14
    return-object v1
.end method

.method public getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .registers 8
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    iget-object v2, v4, Ljava/lang/DexCache;->resolvedTypes:[Ljava/lang/Class;

    .line 475
    .local v2, "dexCacheResolvedTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aget-object v3, v2, p2

    .line 476
    .local v3, "resolvedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_24

    .line 477
    invoke-virtual {p1}, Lcom/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 478
    .local v1, "descriptorIndex":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, v0}, Llibcore/reflect/InternalNames;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 480
    aput-object v3, v2, p2

    .line 482
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "descriptorIndex":I
    :cond_24
    return-object v3
.end method

.method public getDexClassDefIndex()I
    .registers 3

    .prologue
    .line 1784
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    const v1, 0xffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    goto :goto_8
.end method

.method public getDexTypeIndex()I
    .registers 5

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v2, 0xffff

    .line 1795
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1796
    .local v0, "typeIndex":I
    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1813
    .end local v0    # "typeIndex":I
    .local v1, "typeIndex":I
    :goto_8
    return v1

    .line 1799
    .end local v1    # "typeIndex":I
    .restart local v0    # "typeIndex":I
    :cond_9
    monitor-enter p0

    .line 1800
    :try_start_a
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1801
    if-ne v0, v2, :cond_1e

    .line 1802
    iget v2, p0, Ljava/lang/Class;->dexClassDefIndex:I

    if-ltz v2, :cond_21

    .line 1803
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v2

    iget v3, p0, Ljava/lang/Class;->dexClassDefIndex:I

    invoke-virtual {v2, v3}, Lcom/android/dex/Dex;->typeIndexFromClassDefIndex(I)I

    move-result v0

    .line 1810
    :cond_1c
    :goto_1c
    iput v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    .line 1812
    :cond_1e
    monitor-exit p0

    move v1, v0

    .line 1813
    .end local v0    # "typeIndex":I
    .restart local v1    # "typeIndex":I
    goto :goto_8

    .line 1805
    .end local v1    # "typeIndex":I
    .restart local v0    # "typeIndex":I
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v2

    invoke-static {p0}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dex/Dex;->findTypeIndex(Ljava/lang/String;)I

    move-result v0

    .line 1806
    if-gez v0, :cond_1c

    .line 1807
    const/4 v0, -0x1

    goto :goto_1c

    .line 1812
    :catchall_31
    move-exception v2

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_31

    throw v2
.end method

.method public getEnclosingClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1015
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_7

    .line 1022
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6
    return-object v0

    .line 1018
    .restart local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    .line 1019
    .local v1, "member":Ljava/lang/reflect/AccessibleObject;
    if-eqz v1, :cond_14

    .line 1020
    check-cast v1, Ljava/lang/reflect/Member;

    .end local v1    # "member":Ljava/lang/reflect/AccessibleObject;
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    .line 1022
    .restart local v1    # "member":Ljava/lang/reflect/AccessibleObject;
    :cond_14
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_6
.end method

.method public getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 1030
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1034
    :goto_7
    return-object v1

    .line 1033
    :cond_8
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    .line 1034
    .local v0, "result":Ljava/lang/reflect/AccessibleObject;
    instance-of v2, v0, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_14

    check-cast v0, Ljava/lang/reflect/Constructor;

    .end local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :goto_12
    move-object v1, v0

    goto :goto_7

    .restart local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :cond_14
    move-object v0, v1

    goto :goto_12
.end method

.method public getEnclosingMethod()Ljava/lang/reflect/Method;
    .registers 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 1042
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1046
    :goto_7
    return-object v1

    .line 1045
    :cond_8
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    .line 1046
    .local v0, "result":Ljava/lang/reflect/AccessibleObject;
    instance-of v2, v0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_14

    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :goto_12
    move-object v1, v0

    goto :goto_7

    .restart local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :cond_14
    move-object v0, v1

    goto :goto_12
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1070
    const/4 v0, 0x0

    .line 1072
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_7
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 1099
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_a

    .line 1100
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    :cond_a
    invoke-direct {p0, p1}, Ljava/lang/Class;->getFieldNative(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1103
    .local v0, "result":Ljava/lang/reflect/Field;
    if-nez v0, :cond_16

    .line 1104
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_16
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .registers 8

    .prologue
    .line 1168
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v2}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 1170
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Field;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Field;

    .line 1171
    .local v5, "result":[Ljava/lang/reflect/Field;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_17
    if-ge v3, v4, :cond_21

    aget-object v1, v0, v3

    .line 1172
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 1171
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1174
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_21
    return-object v5
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .registers 7

    .prologue
    .line 1204
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v4

    monitor-enter v4

    .line 1205
    :try_start_5
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    .line 1206
    .local v2, "result":[Ljava/lang/reflect/Type;
    if-nez v2, :cond_22

    .line 1207
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_27

    .line 1209
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1215
    :goto_1b
    # getter for: Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;
    invoke-static {}, Ljava/lang/Class$Caches;->access$000()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .end local v0    # "annotationSignature":Ljava/lang/String;
    :cond_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_3b

    .line 1218
    array-length v3, v2

    if-nez v3, :cond_3e

    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :goto_26
    return-object v2

    .line 1211
    .restart local v0    # "annotationSignature":Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_27
    :try_start_27
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1212
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1213
    iget-object v3, v1, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_1b

    .line 1217
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :catchall_3b
    move-exception v3

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_3b

    throw v3

    .line 1218
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_3e
    invoke-virtual {v2}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Type;

    move-object v2, v3

    goto :goto_26
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .registers 5

    .prologue
    .line 1226
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1229
    .local v1, "genericSuperclass":Ljava/lang/reflect/Type;
    if-nez v1, :cond_8

    .line 1230
    const/4 v3, 0x0

    .line 1239
    :goto_7
    return-object v3

    .line 1233
    :cond_8
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1234
    .local v0, "annotationSignature":Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 1235
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1236
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v2, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1237
    iget-object v1, v2, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 1239
    .end local v2    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1c
    invoke-static {v1}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_7
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1254
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1255
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Cloneable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/io/Serializable;

    aput-object v5, v3, v4

    .line 1268
    :cond_13
    :goto_13
    return-object v3

    .line 1256
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Class;->isProxy()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1257
    invoke-direct {p0}, Ljava/lang/Class;->getProxyInterfaces()[Ljava/lang/Class;

    move-result-object v3

    goto :goto_13

    .line 1259
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 1260
    .local v0, "dex":Lcom/android/dex/Dex;
    if-nez v0, :cond_28

    .line 1261
    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    goto :goto_13

    .line 1263
    :cond_28
    iget v4, p0, Ljava/lang/Class;->dexClassDefIndex:I

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->interfaceTypeIndicesFromClassDefIndex(I)[S

    move-result-object v2

    .line 1264
    .local v2, "interfaces":[S
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/Class;

    .line 1265
    .local v3, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    array-length v4, v2

    if-ge v1, v4, :cond_13

    .line 1266
    aget-short v4, v2, v1

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1265
    add-int/lit8 v1, v1, 0x1

    goto :goto_32
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p2, :cond_4

    .line 659
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 662
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Ljava/lang/Class;->getMethodNative(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 664
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_2c

    .line 665
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :cond_2c
    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 849
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsInternal(Ljava/util/List;)V

    .line 856
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 857
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public getModifiers()I
    .registers 5

    .prologue
    .line 1286
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1287
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 1288
    .local v1, "componentModifiers":I
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_14

    .line 1289
    and-int/lit16 v1, v1, -0x209

    .line 1291
    :cond_14
    or-int/lit16 v3, v1, 0x410

    .line 1295
    .end local v1    # "componentModifiers":I
    :goto_16
    return v3

    .line 1293
    :cond_17
    const v0, 0xffff

    .line 1294
    .local v0, "JAVA_FLAGS_MASK":I
    iget v3, p0, Ljava/lang/Class;->accessFlags:I

    and-int/2addr v3, v0

    invoke-static {p0, v3}, Llibcore/reflect/AnnotationAccess;->getInnerClassFlags(Ljava/lang/Class;I)I

    move-result v2

    .line 1295
    .local v2, "modifiers":I
    and-int v3, v2, v0

    goto :goto_16
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1304
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 1305
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_a

    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    :cond_a
    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .registers 4

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1712
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1713
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_11

    .line 1714
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    .line 1715
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v2

    .line 1717
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_11
    return-object v2
.end method

.method public getPackageName$()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1727
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1728
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1729
    .local v0, "last":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    const/4 v2, 0x0

    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .registers 2

    .prologue
    .line 1352
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 8
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1363
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1364
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1378
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1379
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4b

    .line 1380
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1382
    :goto_19
    return-object v3

    .line 1366
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1367
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1368
    .local v0, "dot":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_48

    .line 1369
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1374
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 1371
    :cond_48
    const-string v2, ""

    goto :goto_30

    .line 1382
    .end local v0    # "dot":I
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_4b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_19
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    .line 1395
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1396
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1410
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1411
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4b

    .line 1412
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1414
    :goto_19
    return-object v3

    .line 1398
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1399
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1400
    .local v0, "dot":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_48

    .line 1401
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1406
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 1403
    :cond_48
    const-string v2, ""

    goto :goto_30

    .line 1414
    .end local v0    # "dot":I
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_4b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_19
.end method

.method public getSigners()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1426
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1320
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1338
    :cond_21
    :goto_21
    return-object v1

    .line 1324
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1325
    const-string v1, ""

    goto :goto_21

    .line 1328
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1329
    :cond_37
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 1332
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1333
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1334
    .local v0, "dot":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 1335
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method public getSuperclass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1439
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1440
    const/4 v0, 0x0

    .line 1442
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_7
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1453
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 1455
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1a

    .line 1459
    :goto_9
    monitor-exit p0

    return-object v2

    .line 1457
    :cond_b
    :try_start_b
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1458
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1459
    iget-object v2, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_9

    .line 1453
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isAnnotation()Z
    .registers 3

    .prologue
    .line 1466
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v0, 0x2000

    .line 1467
    .local v0, "ACC_ANNOTATION":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1471
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isAnonymousClass()Z
    .registers 2

    .prologue
    .line 1479
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->isAnonymousClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .registers 2

    .prologue
    .line 1486
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1511
    if-ne p0, p1, :cond_5

    .line 1537
    :cond_4
    :goto_4
    return v3

    .line 1513
    :cond_5
    const-class v5, Ljava/lang/Object;

    if-ne p0, v5, :cond_11

    .line 1514
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_4

    .line 1515
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1516
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    iget-object v6, p1, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_27
    move v3, v4

    goto :goto_4

    .line 1517
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1519
    iget-object v2, p1, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 1520
    .local v2, "iftable":[Ljava/lang/Object;
    if-eqz v2, :cond_40

    .line 1521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_34
    array-length v5, v2

    if-ge v0, v5, :cond_40

    .line 1522
    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/Class;

    .line 1523
    .local v1, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, p0, :cond_4

    .line 1521
    add-int/lit8 v0, v0, 0x2

    goto :goto_34

    .end local v0    # "i":I
    .end local v1    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_40
    move v3, v4

    .line 1528
    goto :goto_4

    .line 1530
    .end local v2    # "iftable":[Ljava/lang/Object;
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_51

    .line 1531
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    :goto_4a
    if-eqz p1, :cond_51

    .line 1532
    if-eq p1, p0, :cond_4

    .line 1531
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_4a

    :cond_51
    move v3, v4

    .line 1537
    goto :goto_4
.end method

.method public isEnum()Z
    .registers 3

    .prologue
    .line 1546
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_10

    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isFinalizable()Z
    .registers 4

    .prologue
    .line 1611
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/high16 v0, -0x80000000

    .line 1612
    .local v0, "ACC_CLASS_IS_FINALIZABLE":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1559
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_4

    .line 1560
    const/4 v0, 0x0

    .line 1562
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_3
.end method

.method public isInterface()Z
    .registers 2

    .prologue
    .line 1569
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLocalClass()Z
    .registers 2

    .prologue
    .line 1577
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isMemberClass()Z
    .registers 2

    .prologue
    .line 1587
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPrimitive()Z
    .registers 2

    .prologue
    .line 1594
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->primitiveType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isProxy()Z
    .registers 3

    .prologue
    .line 1495
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSynthetic()Z
    .registers 3

    .prologue
    .line 1601
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v0, 0x1000

    .line 1602
    .local v0, "ACC_SYNTHETIC":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 1630
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_1b

    iget v5, p0, Ljava/lang/Class;->accessFlags:I

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1631
    :cond_1b
    new-instance v4, Ljava/lang/InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be instantiated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1633
    :cond_34
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    .line 1634
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v0, p0}, Ljava/lang/Class;->canAccess(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 1635
    new-instance v4, Ljava/lang/IllegalAccessException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accessible from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1639
    :cond_5b
    const/4 v5, 0x0

    :try_start_5c
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_61
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5c .. :try_end_61} :catch_89

    move-result-object v2

    .line 1646
    .local v2, "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v5

    invoke-direct {v0, p0, v5}, Ljava/lang/Class;->canAccessMember(Ljava/lang/Class;I)Z

    move-result v5

    if-nez v5, :cond_a6

    .line 1647
    new-instance v4, Ljava/lang/IllegalAccessException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accessible from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1640
    .end local v2    # "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_89
    move-exception v1

    .line 1641
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no zero argument constructor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v3, "t":Ljava/lang/InstantiationException;
    invoke-virtual {v3, v1}, Ljava/lang/InstantiationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1644
    throw v3

    .line 1650
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "t":Ljava/lang/InstantiationException;
    .restart local v2    # "init":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_a6
    const/4 v5, 0x0

    :try_start_a7
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_ae
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a7 .. :try_end_ae} :catch_b0

    move-result-object v4

    .line 1653
    :goto_af
    return-object v4

    .line 1651
    :catch_b0
    move-exception v1

    .line 1652
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_af
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1698
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1699
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1701
    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "interface "

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_29
    const-string v0, "class "

    goto :goto_18
.end method
