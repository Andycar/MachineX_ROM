.class Lcom/android/server/FMPlayerNative$RTPlusData;
.super Ljava/lang/Object;
.source "FMPlayerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RTPlusData"
.end annotation


# instance fields
.field public mAdditionalLen1:I

.field public mAdditionalLen2:I

.field public mContentType1:I

.field public mContentType2:I

.field public mStartPos1:I

.field public mStartPos2:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p1, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType1:I

    .line 283
    iput p2, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos1:I

    .line 284
    iput p3, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen1:I

    .line 286
    iput p4, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType2:I

    .line 287
    iput p5, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos2:I

    .line 288
    iput p6, p0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen2:I

    .line 289
    return-void
.end method
