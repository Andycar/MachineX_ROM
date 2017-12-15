.class public Lcom/samsung/android/hermes/object/HermesStroke;
.super Ljava/lang/Object;
.source "HermesStroke.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/object/HermesStroke;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStroke:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    new-instance v0, Lcom/samsung/android/hermes/object/HermesStroke$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/object/HermesStroke$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/object/HermesStroke;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    .line 69
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    sget-object v1, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 70
    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .registers 7
    .param p1, "points"    # [Landroid/graphics/PointF;

    .prologue
    .line 36
    move-object v0, p1

    .local v0, "arr$":[Landroid/graphics/PointF;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 37
    .local v3, "p":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 39
    .end local v3    # "p":Landroid/graphics/PointF;
    :cond_f
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStroke;->mStroke:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 62
    return-void
.end method
