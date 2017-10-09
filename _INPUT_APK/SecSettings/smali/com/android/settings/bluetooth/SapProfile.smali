.class public final Lcom/android/settings/bluetooth/SapProfile;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfileEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/SapProfile$1;,
        Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mService:Lcom/broadcom/bt/service/sap/BluetoothSap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/SapProfile;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/android/settings/bluetooth/SapProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 127
    iput-object p3, p0, Lcom/android/settings/bluetooth/SapProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 128
    iput-object p4, p0, Lcom/android/settings/bluetooth/SapProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 129
    new-instance v0, Lcom/broadcom/bt/service/sap/BluetoothSap;

    new-instance v1, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;-><init>(Lcom/android/settings/bluetooth/SapProfile;Lcom/android/settings/bluetooth/SapProfile$1;)V

    invoke-direct {v0, p1, v1}, Lcom/broadcom/bt/service/sap/BluetoothSap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 130
    .local v0, "sap":Lcom/broadcom/bt/service/sap/BluetoothSap;
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/settings/bluetooth/SapProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/SapProfile;)Lcom/broadcom/bt/service/sap/BluetoothSap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/SapProfile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/SapProfile;Lcom/broadcom/bt/service/sap/BluetoothSap;)Lcom/broadcom/bt/service/sap/BluetoothSap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/SapProfile;
    .param p1, "x1"    # Lcom/broadcom/bt/service/sap/BluetoothSap;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/SapProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/SapProfile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/SapProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/SapProfile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/SapProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/SapProfile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/SapProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/SapProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/SapProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 216
    sget-boolean v1, Lcom/android/settings/bluetooth/SapProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "SapProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    if-eqz v1, :cond_1

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/sap/BluetoothSap;->close()V

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SapProfile"

    const-string v2, "Error cleaning up SAP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return v2

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/sap/BluetoothSap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/sap/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 212
    const v0, 0x7f0201ac

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 188
    const v0, 0x7f0a0310

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x5

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 171
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const v1, 0x7f0a0334

    .line 193
    iget-object v2, p0, Lcom/android/settings/bluetooth/SapProfile;->mService:Lcom/broadcom/bt/service/sap/BluetoothSap;

    if-nez v2, :cond_0

    .line 206
    :goto_0
    :pswitch_0
    return v1

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/SapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 198
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 203
    :pswitch_2
    const v1, 0x7f0a0327

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/SapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 164
    .local v0, "state":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    const/4 v1, 0x1

    .line 167
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/SapProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "SAP"

    return-object v0
.end method
