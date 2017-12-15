.class public Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureElementInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final seId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 773
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "seId"    # I

    .prologue
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->seId:I

    .line 751
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public getSeId()I
    .registers 2

    .prologue
    .line 754
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->seId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->seId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 770
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->seId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    return-void
.end method
