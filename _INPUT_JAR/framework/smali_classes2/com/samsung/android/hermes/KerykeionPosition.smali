.class public Lcom/samsung/android/hermes/KerykeionPosition;
.super Ljava/lang/Object;
.source "KerykeionPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/KerykeionPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Lcom/samsung/android/hermes/KerykeionPosition$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/KerykeionPosition$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/KerykeionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->left:I

    .line 34
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->top:I

    .line 35
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->right:I

    .line 36
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->bottom:I

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/samsung/android/hermes/KerykeionPosition;->left:I

    iget v2, p0, Lcom/samsung/android/hermes/KerykeionPosition;->top:I

    iget v3, p0, Lcom/samsung/android/hermes/KerykeionPosition;->right:I

    iget v4, p0, Lcom/samsung/android/hermes/KerykeionPosition;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->left:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->top:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->right:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->bottom:I

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
