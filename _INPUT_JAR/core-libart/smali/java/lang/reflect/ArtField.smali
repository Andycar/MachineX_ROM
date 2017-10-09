.class public final Ljava/lang/reflect/ArtField;
.super Ljava/lang/Object;
.source "ArtField.java"


# instance fields
.field private accessFlags:I

.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fieldDexIndex:I

.field private offset:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private native getTypeNative()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Ljava/lang/reflect/ArtField;->accessFlags:I

    return v0
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method getDexFieldIndex()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Ljava/lang/reflect/ArtField;->fieldDexIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    iget v0, p0, Ljava/lang/reflect/ArtField;->fieldDexIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 85
    iget-object v0, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isProxy()Z

    move-result v0

    if-nez v0, :cond_13

    .line 86
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_13
    const-string v0, "throws"

    .line 91
    :goto_15
    return-object v0

    :cond_16
    invoke-direct {p0}, Ljava/lang/reflect/ArtField;->getNameNative()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method getOffset()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Ljava/lang/reflect/ArtField;->offset:I

    return v0
.end method

.method getType()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Ljava/lang/reflect/ArtField;->fieldDexIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 116
    iget-object v0, p0, Ljava/lang/reflect/ArtField;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isProxy()Z

    move-result v0

    if-nez v0, :cond_13

    .line 117
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_13
    const-class v0, [[Ljava/lang/Class;

    .line 122
    :goto_15
    return-object v0

    :cond_16
    invoke-direct {p0}, Ljava/lang/reflect/ArtField;->getTypeNative()Ljava/lang/Class;

    move-result-object v0

    goto :goto_15
.end method
