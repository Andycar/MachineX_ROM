.class public final Landroid/media/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    new-instance v0, Landroid/media/Rating$1;

    invoke-direct {v0}, Landroid/media/Rating$1;-><init>()V

    sput-object v0, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IF)V
    .registers 3
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/media/Rating;->mRatingStyle:I

    .line 80
    iput p2, p0, Landroid/media/Rating;->mRatingValue:F

    .line 81
    return-void
.end method

.method synthetic constructor <init>(IFLandroid/media/Rating$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # F
    .param p3, "x2"    # Landroid/media/Rating$1;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/media/Rating;-><init>(IF)V

    return-void
.end method

.method public static newHeartRating(Z)Landroid/media/Rating;
    .registers 4
    .param p0, "hasHeart"    # Z

    .prologue
    .line 149
    new-instance v1, Landroid/media/Rating;

    const/4 v2, 0x1

    if-eqz p0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_7
    invoke-direct {v1, v2, v0}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static newPercentageRating(F)Landroid/media/Rating;
    .registers 3
    .param p0, "percent"    # F

    .prologue
    .line 206
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_b

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_14

    .line 207
    :cond_b
    const-string v0, "Rating"

    const-string v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Landroid/media/Rating;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    goto :goto_13
.end method

.method public static newStarRating(IF)Landroid/media/Rating;
    .registers 7
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .prologue
    const/4 v1, 0x0

    .line 176
    const/high16 v0, -0x40800000    # -1.0f

    .line 177
    .local v0, "maxRating":F
    packed-switch p0, :pswitch_data_44

    .line 188
    const-string v2, "Rating"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid rating style ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for a star rating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_24
    return-object v1

    .line 179
    :pswitch_25
    const/high16 v0, 0x40400000    # 3.0f

    .line 191
    :goto_27
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_30

    cmpl-float v2, p1, v0

    if-lez v2, :cond_3e

    .line 192
    :cond_30
    const-string v2, "Rating"

    const-string v3, "Trying to set out of range star-based rating"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 182
    :pswitch_38
    const/high16 v0, 0x40800000    # 4.0f

    .line 183
    goto :goto_27

    .line 185
    :pswitch_3b
    const/high16 v0, 0x40a00000    # 5.0f

    .line 186
    goto :goto_27

    .line 195
    :cond_3e
    new-instance v1, Landroid/media/Rating;

    invoke-direct {v1, p0, p1}, Landroid/media/Rating;-><init>(IF)V

    goto :goto_24

    .line 177
    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_25
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/media/Rating;
    .registers 4
    .param p0, "thumbIsUp"    # Z

    .prologue
    .line 160
    new-instance v1, Landroid/media/Rating;

    const/4 v2, 0x2

    if-eqz p0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_7
    invoke-direct {v1, v2, v0}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static newUnratedRating(I)Landroid/media/Rating;
    .registers 3
    .param p0, "ratingStyle"    # I

    .prologue
    .line 128
    packed-switch p0, :pswitch_data_e

    .line 137
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 135
    :pswitch_5
    new-instance v0, Landroid/media/Rating;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/media/Rating;-><init>(IF)V

    goto :goto_4

    .line 128
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .registers 3

    .prologue
    .line 282
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-nez v0, :cond_e

    .line 283
    :cond_b
    const/high16 v0, -0x40800000    # -1.0f

    .line 285
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    goto :goto_d
.end method

.method public getRatingStyle()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    packed-switch v0, :pswitch_data_12

    .line 272
    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    :goto_7
    return v0

    .line 268
    :pswitch_8
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    goto :goto_7

    .line 264
    nop

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public hasHeart()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    iget v2, p0, Landroid/media/Rating;->mRatingStyle:I

    if-eq v2, v0, :cond_7

    .line 241
    :goto_6
    return v1

    :cond_7
    iget v2, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_11

    :goto_f
    move v1, v0

    goto :goto_6

    :cond_11
    move v0, v1

    goto :goto_f
.end method

.method public isRated()Z
    .registers 3

    .prologue
    .line 219
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isThumbUp()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 251
    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    .line 254
    :cond_6
    :goto_6
    return v0

    :cond_7
    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2a

    const-string/jumbo v0, "unrated"

    :goto_21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    return-void
.end method
