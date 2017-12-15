.class public Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
.super Ljava/lang/Object;
.source "SmartClipDataExtractionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mExtractionMode:I

.field public mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field public mRequestId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "extractionMode"    # I
    .param p3, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    .line 31
    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 35
    iput p1, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    .line 36
    iput p2, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    .line 37
    iput-object p3, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    .line 56
    const-class v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    return-void
.end method
