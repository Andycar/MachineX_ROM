.class public Lcom/samsung/android/hermes/KerykeionRequest;
.super Ljava/lang/Object;
.source "KerykeionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/KerykeionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHermesObject:Lcom/samsung/android/hermes/object/HermesObject;

.field private mPrimitive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nPatternType:I

.field private nType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    new-instance v0, Lcom/samsung/android/hermes/KerykeionRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/KerykeionRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/KerykeionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mPrimitive:Ljava/util/List;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nPatternType:I

    .line 21
    iput-object v1, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mHermesObject:Lcom/samsung/android/hermes/object/HermesObject;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mPrimitive:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getHermesObject()Lcom/samsung/android/hermes/object/HermesObject;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mHermesObject:Lcom/samsung/android/hermes/object/HermesObject;

    return-object v0
.end method

.method public getPatternType()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nPatternType:I

    return v0
.end method

.method public getSourceData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mPrimitive:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nType:I

    .line 119
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mPrimitive:Ljava/util/List;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nPatternType:I

    .line 121
    const-class v0, Lcom/samsung/android/hermes/object/HermesObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hermes/object/HermesObject;

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mHermesObject:Lcom/samsung/android/hermes/object/HermesObject;

    .line 122
    return-void
.end method

.method public setRequestData(ILjava/util/List;I)V
    .registers 8
    .param p1, "type"    # I
    .param p3, "patternType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "origin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput p1, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nType:I

    .line 42
    iput p3, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nPatternType:I

    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    instance-of v3, v1, Landroid/net/Uri;

    or-int/2addr v2, v3

    if-eqz v2, :cond_8

    .line 46
    iget-object v2, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 49
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1f
    return-void
.end method

.method public setRequestData(ILjava/util/List;ILcom/samsung/android/hermes/object/HermesObject;)V
    .registers 9
    .param p1, "type"    # I
    .param p3, "patternType"    # I
    .param p4, "hObj"    # Lcom/samsung/android/hermes/object/HermesObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/samsung/android/hermes/object/HermesObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "origin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput p1, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nType:I

    .line 56
    iput p3, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nPatternType:I

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    instance-of v3, v1, Landroid/net/Uri;

    or-int/2addr v2, v3

    if-eqz v2, :cond_8

    .line 60
    iget-object v2, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 64
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1f
    if-eqz p4, :cond_23

    .line 65
    iput-object p4, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mHermesObject:Lcom/samsung/android/hermes/object/HermesObject;

    .line 67
    :cond_23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 109
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->nPatternType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionRequest;->mHermesObject:Lcom/samsung/android/hermes/object/HermesObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    return-void
.end method
