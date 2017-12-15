.class public Landroid/hardware/usb/UsbDevice;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field private final mClass:I

.field private mConfigurations:[Landroid/os/Parcelable;

.field private mInterfaces:[Landroid/hardware/usb/UsbInterface;

.field private final mManufacturerName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mProductName:Ljava/lang/String;

.field private final mProtocol:I

.field private final mSerialNumber:Ljava/lang/String;

.field private final mSubclass:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 274
    new-instance v0, Landroid/hardware/usb/UsbDevice$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbDevice$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I
    .param p7, "manufacturerName"    # Ljava/lang/String;
    .param p8, "productName"    # Ljava/lang/String;
    .param p9, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    .line 66
    iput p2, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    .line 67
    iput p3, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    .line 68
    iput p4, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    .line 69
    iput p5, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    .line 70
    iput p6, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    .line 71
    iput-object p7, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    .line 72
    iput-object p8, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    .line 73
    iput-object p9, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumber:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getDeviceId(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I

    .prologue
    .line 320
    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInterfaceList()[Landroid/hardware/usb/UsbInterface;
    .registers 10

    .prologue
    .line 191
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    if-nez v7, :cond_41

    .line 192
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    array-length v1, v7

    .line 193
    .local v1, "configurationCount":I
    const/4 v3, 0x0

    .line 194
    .local v3, "interfaceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 195
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    aget-object v0, v7, v2

    check-cast v0, Landroid/hardware/usb/UsbConfiguration;

    .line 196
    .local v0, "configuration":Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v7

    add-int/2addr v3, v7

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 199
    .end local v0    # "configuration":Landroid/hardware/usb/UsbConfiguration;
    :cond_19
    new-array v7, v3, [Landroid/hardware/usb/UsbInterface;

    iput-object v7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    .line 200
    const/4 v5, 0x0

    .line 201
    .local v5, "offset":I
    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_41

    .line 202
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    aget-object v0, v7, v2

    check-cast v0, Landroid/hardware/usb/UsbConfiguration;

    .line 203
    .restart local v0    # "configuration":Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v3

    .line 204
    const/4 v4, 0x0

    .local v4, "j":I
    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_2d
    if-ge v4, v3, :cond_3d

    .line 205
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    aput-object v8, v7, v6

    .line 204
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_2d

    .line 201
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_1f

    .line 210
    .end local v0    # "configuration":Landroid/hardware/usb/UsbConfiguration;
    .end local v1    # "configurationCount":I
    .end local v2    # "i":I
    .end local v3    # "interfaceCount":I
    .end local v4    # "j":I
    .end local v5    # "offset":I
    :cond_41
    iget-object v7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    return-object v7
.end method

.method private static native native_get_device_id(Ljava/lang/String;)I
.end method

.method private static native native_get_device_name(I)Ljava/lang/String;
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 245
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_f

    .line 246
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 250
    :goto_e
    return v0

    .line 247
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 248
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    .line 250
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 187
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    aget-object v0, v0, p1

    check-cast v0, Landroid/hardware/usb/UsbConfiguration;

    return-object v0
.end method

.method public getConfigurationCount()I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public getDeviceClass()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    return v0
.end method

.method public getDeviceId()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProtocol()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    return v0
.end method

.method public getDeviceSubclass()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    return v0
.end method

.method public getInterface(I)Landroid/hardware/usb/UsbInterface;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceList()[Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInterfaceCount()I
    .registers 2

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceList()[Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorId()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setConfigurations([Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "configuration"    # [Landroid/os/Parcelable;

    .prologue
    .line 240
    iput-object p1, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbDevice[mName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mVendorId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mProductId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mSubclass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mProtocol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mManufacturerName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mProductName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mSerialNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mConfigurations=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_81
    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v1, v2, :cond_99

    .line 267
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 270
    :cond_99
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 303
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 313
    return-void
.end method
