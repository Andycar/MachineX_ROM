.class public Landroid/net/wifi/WifiScanner$WifiChangeSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiChangeSettings"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$WifiChangeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

.field public lostApSampleSize:I

.field public minApsBreachingThreshold:I

.field public periodInMs:I

.field public rssiSampleSize:I

.field public unchangedSampleSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 364
    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 344
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    if-eqz v2, :cond_44

    .line 350
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_48

    .line 352
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v1, v2, v0

    .line 353
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 359
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_44
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    :cond_48
    return-void
.end method
