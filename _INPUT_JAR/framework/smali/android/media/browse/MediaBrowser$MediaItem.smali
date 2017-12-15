.class public Landroid/media/browse/MediaBrowser$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BROWSABLE:I = 0x1

.field public static final FLAG_PLAYABLE:I = 0x2


# instance fields
.field private final mDescription:Landroid/media/MediaDescription;

.field private final mFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 593
    new-instance v0, Landroid/media/browse/MediaBrowser$MediaItem$1;

    invoke-direct {v0}, Landroid/media/browse/MediaBrowser$MediaItem$1;-><init>()V

    sput-object v0, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaDescription;I)V
    .registers 5
    .param p1, "description"    # Landroid/media/MediaDescription;
    .param p2, "flags"    # I

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    if-nez p1, :cond_d

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_d
    invoke-virtual {p1}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description must have a non-empty media id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_1f
    iput p2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    .line 562
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    .line 563
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    .line 570
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDescription;

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    .line 571
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/browse/MediaBrowser$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/browse/MediaBrowser$1;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Landroid/media/MediaDescription;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBrowsable()Z
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPlayable()Z
    .registers 2

    .prologue
    .line 626
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 580
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 582
    return-void
.end method
