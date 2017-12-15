.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 296
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 298
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .registers 4
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 296
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 298
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 318
    # getter for: Landroid/media/AudioAttributes;->mUsage:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$000(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 319
    # getter for: Landroid/media/AudioAttributes;->mContentType:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$100(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 320
    # getter for: Landroid/media/AudioAttributes;->mFlags:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$200(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 321
    # getter for: Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$300(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 322
    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .registers 4

    .prologue
    .line 331
    new-instance v0, Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes$1;)V

    .line 332
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    # setter for: Landroid/media/AudioAttributes;->mContentType:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$102(Landroid/media/AudioAttributes;I)I

    .line 333
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    # setter for: Landroid/media/AudioAttributes;->mUsage:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$002(Landroid/media/AudioAttributes;I)I

    .line 334
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    # setter for: Landroid/media/AudioAttributes;->mSource:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$502(Landroid/media/AudioAttributes;I)I

    .line 335
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    # setter for: Landroid/media/AudioAttributes;->mFlags:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$202(Landroid/media/AudioAttributes;I)I

    .line 336
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    # setter for: Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$302(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 337
    const-string v1, ";"

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    return-object v0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "preset"    # I

    .prologue
    .line 519
    packed-switch p1, :pswitch_data_26

    .line 549
    :pswitch_3
    const-string v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capture preset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_21
    return-object p0

    .line 546
    :pswitch_22
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    goto :goto_21

    .line 519
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "contentType"    # I

    .prologue
    .line 397
    packed-switch p1, :pswitch_data_a

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 408
    :goto_6
    return-object p0

    .line 403
    :pswitch_7
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_6

    .line 397
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public setFlags(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 417
    and-int/lit8 p1, p1, 0x3f

    .line 418
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 419
    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "preset"    # I

    .prologue
    .line 562
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_8

    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 564
    :cond_8
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 568
    :goto_a
    return-object p0

    .line 566
    :cond_b
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_a
.end method

.method public setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 454
    packed-switch p1, :pswitch_data_5e

    .line 501
    const-string v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_24
    invoke-static {p1}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 504
    return-object p0

    .line 456
    :pswitch_2b
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 459
    :pswitch_2e
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 462
    :pswitch_34
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 465
    :pswitch_37
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 468
    :pswitch_3a
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 471
    :pswitch_3d
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 474
    :pswitch_40
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 477
    :pswitch_43
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 478
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_24

    .line 481
    :pswitch_4c
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 484
    :pswitch_4f
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 488
    :pswitch_52
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 491
    :pswitch_55
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 494
    :pswitch_58
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 497
    :pswitch_5b
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_24

    .line 454
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_2e
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUsage(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "usage"    # I

    .prologue
    .line 361
    packed-switch p1, :pswitch_data_a

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 382
    :goto_6
    return-object p0

    .line 377
    :pswitch_7
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    goto :goto_6

    .line 361
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
