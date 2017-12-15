.class public Lcom/samsung/android/hermes/KerykeionResult;
.super Ljava/lang/Object;
.source "KerykeionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDE_HERMES_UI:I = 0x2

.field private static final SUPPORT_HERMES_UI:I = 0x1

.field private static final USE_EXTRA:I = 0x2

.field private static final USE_RESULT:I = 0x1


# instance fields
.field private mAccuracy:F

.field private mEndPos:I

.field private mExtraDatas:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;

.field private mResultType:I

.field private mSrc:Ljava/lang/String;

.field private mStartPos:I

.field private mUIState:I

.field private mUsingData:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 214
    new-instance v0, Lcom/samsung/android/hermes/KerykeionResult$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/KerykeionResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/KerykeionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIF)V
    .registers 8
    .param p1, "mResultType"    # I
    .param p2, "mSrc"    # Ljava/lang/String;
    .param p3, "mResult"    # Ljava/lang/Object;
    .param p4, "mExtraDatas"    # Ljava/lang/Object;
    .param p5, "mStartPos"    # I
    .param p6, "mEndPos"    # I
    .param p7, "mAccuracy"    # F

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    .line 58
    iput-object p2, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    .line 60
    iput-object p4, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    .line 61
    iput p5, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    .line 62
    iput p6, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    .line 63
    iput p7, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIFII)V
    .registers 10
    .param p1, "mResultType"    # I
    .param p2, "mSrc"    # Ljava/lang/String;
    .param p3, "mResult"    # Ljava/lang/Object;
    .param p4, "mExtraDatas"    # Ljava/lang/Object;
    .param p5, "mStartPos"    # I
    .param p6, "mEndPos"    # I
    .param p7, "mAccuracy"    # F
    .param p8, "mUIState"    # I
    .param p9, "mUsingData"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    .line 84
    iput-object p2, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    .line 86
    iput-object p4, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    .line 87
    iput p5, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    .line 88
    iput p6, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    .line 89
    iput p7, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    .line 90
    iput p8, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUIState:I

    .line 91
    iput p9, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUsingData:I

    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    return v0
.end method

.method public getAdaptableData()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 156
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUsingData:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 157
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    .line 159
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    goto :goto_7
.end method

.method public getEndPos()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    return v0
.end method

.method public getExtraDatas()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultType()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    return v0
.end method

.method public isPossibleToShow()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 167
    iget v1, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUIState:I

    if-ne v1, v0, :cond_6

    .line 170
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    .line 202
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    .line 203
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUIState:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUsingData:I

    .line 209
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 185
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 189
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 192
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUIState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUsingData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return-void
.end method
