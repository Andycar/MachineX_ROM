.class Lcom/android/keyguard/KeyguardTransportControlView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/keyguard/KeyguardTransportControlView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumTitle:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field bitmap:Landroid/graphics/Bitmap;

.field clientPresent:Z

.field duration:J

.field trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 693
    new-instance v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState$1;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 673
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->clientPresent:Z

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    .line 679
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    .line 680
    return-void

    .line 674
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/keyguard/KeyguardTransportControlView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardTransportControlView$1;

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 669
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 670
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 684
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 685
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->clientPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 690
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 691
    return-void

    .line 685
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
