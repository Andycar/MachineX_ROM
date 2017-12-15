.class public Lcom/samsung/android/hermes/object/HermesObject;
.super Ljava/lang/Object;
.source "HermesObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/object/HermesObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Lcom/samsung/android/hermes/object/HermesObject$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/object/HermesObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/object/HermesObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesObject;->obj:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesObject;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    const-class v0, Lcom/samsung/android/hermes/object/HermesObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesObject;->obj:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/hermes/object/HermesObject;->obj:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesObject;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/hermes/object/HermesObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    return-void
.end method
