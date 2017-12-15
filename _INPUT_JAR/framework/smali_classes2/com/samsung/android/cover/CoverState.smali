.class public Lcom/samsung/android/cover/CoverState;
.super Ljava/lang/Object;
.source "CoverState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLOR_BLACK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_BLUSH_PINK:I = 0x3

.field public static final COLOR_BRONZE:I = 0xe

.field public static final COLOR_CARBON_METAL:I = 0x9

.field public static final COLOR_CHARCOAL_GRAY:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_CLASSIC_WHITE:I = 0x2

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_GRAYISH_BLUE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_INDIGO_BLUE:I = 0x6

.field public static final COLOR_JET_BLACK:I = 0x1

.field public static final COLOR_MAGENTA:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_MINT_BLUE:I = 0x8

.field public static final COLOR_MUSTARD_YELLOW:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_NFC_SMART_COVER:I = 0xff

.field public static final COLOR_OATMEAL:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_OATMEAL_BEIGE:I = 0x5

.field public static final COLOR_ORANGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_PEAKCOCK_GREEN:I = 0xa

.field public static final COLOR_PEARL_WHITE:I = 0xd

.field public static final COLOR_PINK:I = 0xc

.field public static final COLOR_PLUM_RED:I = 0x7

.field public static final COLOR_ROSE_GOLD:I = 0xb

.field public static final COLOR_SOFT_PINK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_WHITE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_WILD_ORANGE:I = 0x4

.field public static final COVER_ATTACHED:Z = true

.field public static final COVER_DETACHED:Z = false

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cover/CoverState;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODEL_DEFAULT:I = 0x0

.field public static final MODEL_TB:I = 0x3

.field public static final MODEL_TR:I = 0x2

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverState"

.field public static final TYPE_BRAND_MONBLANC_COVER:I = 0x64

.field public static final TYPE_FLIP_COVER:I = 0x0

.field public static final TYPE_HEALTH_COVER:I = 0x4

.field public static final TYPE_LED_COVER:I = 0x7

.field public static final TYPE_NFC_SMART_COVER:I = 0xff

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final TYPE_SVIEW_COVER:I = 0x1

.field public static final TYPE_S_CHARGER_COVER:I = 0x5

.field public static final TYPE_S_VIEW_WALLET_COVER:I = 0x6


# instance fields
.field public attached:Z

.field public color:I

.field public fakeCover:Z

.field public heightPixel:I

.field public model:I

.field public serialNumber:Ljava/lang/String;

.field public smartCoverAppUri:Ljava/lang/String;

.field public smartCoverCookie:[B

.field public switchState:Z

.field public type:I

.field public widthPixel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 516
    new-instance v0, Lcom/samsung/android/cover/CoverState$1;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 330
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 331
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 332
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 333
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 334
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 335
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 338
    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 340
    iput-object v2, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 341
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 342
    return-void
.end method

.method public constructor <init>(III)V
    .registers 6
    .param p1, "defaultType"    # I
    .param p2, "defaultWidthPixel"    # I
    .param p3, "defaultHeightPixel"    # I

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 354
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 355
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 356
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 357
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 358
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 359
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 360
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverState;->readFromParcel(Landroid/os/Parcel;)V

    .line 431
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .registers 7
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 373
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 374
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 375
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 376
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 377
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 378
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 379
    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .registers 8
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 392
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 393
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 394
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 395
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 396
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 398
    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .registers 8
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z
    .param p7, "model"    # I

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 402
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 403
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 404
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 405
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 406
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 407
    iput p7, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 408
    return-void
.end method

.method public constructor <init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V
    .registers 10
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "attached"    # Z
    .param p5, "model"    # I
    .param p6, "installUri"    # Ljava/lang/String;
    .param p7, "vendorData"    # [B
    .param p8, "serialNumber"    # Ljava/lang/String;
    .param p9, "isFake"    # Z

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 412
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 413
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 414
    iput-boolean p4, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 415
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 417
    iput-object p6, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 418
    iput-object p7, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 419
    iput-object p8, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 420
    iput-boolean p9, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 421
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_66

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_68

    move v1, v2

    :goto_2a
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3e

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 499
    :cond_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_51

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 501
    .local v0, "smartCoverCookieLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 502
    iget-object v1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 505
    .end local v0    # "smartCoverCookieLength":I
    :cond_51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5d

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 508
    :cond_5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_6a

    :goto_63
    iput-boolean v2, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 509
    return-void

    :cond_66
    move v1, v3

    .line 489
    goto :goto_9

    :cond_68
    move v1, v3

    .line 494
    goto :goto_2a

    :cond_6a
    move v2, v3

    .line 508
    goto :goto_63
.end method


# virtual methods
.method public copyFrom(Lcom/samsung/android/cover/CoverState;)V
    .registers 3
    .param p1, "o"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 599
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 600
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 601
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 602
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 603
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 604
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 605
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->model:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 607
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 608
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 609
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 610
    iget-object v0, p1, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public describeContents()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachState()Z
    .registers 2

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return v0
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 651
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return v0
.end method

.method public getModel()I
    .registers 2

    .prologue
    .line 699
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartCoverAppUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartCoverCookie()[B
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    return-object v0
.end method

.method public getSwitchState()Z
    .registers 2

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0
.end method

.method public getWindowHeight()I
    .registers 2

    .prologue
    .line 677
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0
.end method

.method public isFakeCover()Z
    .registers 2

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    return v0
.end method

.method public setAttachState(Z)V
    .registers 2
    .param p1, "attached"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 696
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 655
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 656
    return-void
.end method

.method public setFakeCover(Z)V
    .registers 2
    .param p1, "faked"    # Z

    .prologue
    .line 728
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 729
    return-void
.end method

.method public setModel(I)V
    .registers 2
    .param p1, "model"    # I

    .prologue
    .line 703
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 704
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public setSmartCoverAppUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    .line 721
    return-void
.end method

.method public setSmartCoverCookie([B)V
    .registers 2
    .param p1, "extraData"    # [B

    .prologue
    .line 712
    iput-object p1, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    .line 713
    return-void
.end method

.method public setSwitchState(Z)V
    .registers 2
    .param p1, "switchState"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 628
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 641
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 642
    return-void
.end method

.method public setWindowHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 681
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 682
    return-void
.end method

.method public setWindowWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 668
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 669
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 536
    const-string v0, "CoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d model=%d attached=%b)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCoverState(IIII)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I

    .prologue
    .line 544
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 545
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 546
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 547
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 548
    return-void
.end method

.method public updateCoverState(IIIII)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "model"    # I

    .prologue
    .line 573
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 574
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 575
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 576
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 577
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 578
    return-void
.end method

.method public updateCoverState(IIIIZI)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "attached"    # Z
    .param p6, "model"    # I

    .prologue
    .line 583
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 584
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 585
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 586
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 587
    iput-boolean p5, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 588
    iput p6, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 589
    return-void
.end method

.method public updateCoverState(ZIIII)V
    .registers 6
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 553
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 554
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 555
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 556
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 557
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 558
    return-void
.end method

.method public updateCoverState(ZIIIIZ)V
    .registers 7
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 564
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 565
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 566
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 567
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 568
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 569
    return-void
.end method

.method public updateCoverWindowSize(II)V
    .registers 3
    .param p1, "widthPixel"    # I
    .param p2, "heightPixel"    # I

    .prologue
    .line 593
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 594
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 595
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 452
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_48

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 461
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    :goto_32
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    if-nez v0, :cond_55

    .line 467
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    :goto_39
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 474
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    :goto_40
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    if-eqz v0, :cond_6d

    :goto_44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    return-void

    :cond_48
    move v0, v2

    .line 452
    goto :goto_7

    :cond_4a
    move v0, v2

    .line 457
    goto :goto_23

    .line 463
    :cond_4c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_32

    .line 469
    :cond_55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->smartCoverCookie:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_39

    .line 476
    :cond_64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object v0, p0, Lcom/samsung/android/cover/CoverState;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_40

    :cond_6d
    move v1, v2

    .line 479
    goto :goto_44
.end method
