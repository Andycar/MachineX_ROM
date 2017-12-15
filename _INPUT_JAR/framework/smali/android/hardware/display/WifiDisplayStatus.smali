.class public final Landroid/hardware/display/WifiDisplayStatus;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONN_STATE_CHANGEPLAYER_GALLERY:I = 0x7

.field public static final CONN_STATE_CHANGEPLAYER_MUSIC:I = 0x8

.field public static final CONN_STATE_CHANGEPLAYER_VIDEO:I = 0x6

.field public static final CONN_STATE_FRIDGE:I = 0x5

.field public static final CONN_STATE_HOMESYNC_MIRROR_MOUSE:I = 0x1

.field public static final CONN_STATE_HOMESYNC_SCREEN_MIRRORING:I = 0x2

.field public static final CONN_STATE_MULTI_ANGLE_RECORDER:I = 0x4

.field public static final CONN_STATE_NFC:I = 0x9

.field public static final CONN_STATE_NORMAL:I = -0x1

.field public static final CONN_STATE_REMOTE_VIEWFINDER:I = 0x0

.field public static final CONN_STATE_SIDESYNC:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplayStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final DISPLAY_STATE_DISCONNECTING:I = 0x3

.field public static final DISPLAY_STATE_FAILED:I = 0x4

.field public static final DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field public static final DISPLAY_STATE_PAUSED:I = 0x5

.field public static final FEATURE_STATE_DISABLED:I = 0x1

.field public static final FEATURE_STATE_OFF:I = 0x2

.field public static final FEATURE_STATE_ON:I = 0x3

.field public static final FEATURE_STATE_UNAVAILABLE:I = 0x0

.field public static final SCAN_STATE_NOT_SCANNING:I = 0x0

.field public static final SCAN_STATE_SCANNING:I = 0x1

.field public static final WFD_BRIDGE_STATE_CONNECTED:I = 0x1

.field public static final WFD_BRIDGE_STATE_NOT_CONNECTED:I


# instance fields
.field private final mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private final mActiveDisplayState:I

.field private final mConnectedState:I

.field private final mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mFeatureState:I

.field private final mNetworkQoS:I

.field private final mScanState:I

.field private final mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 145
    const/4 v1, 0x3

    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    move-object v0, p0

    move v3, v2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 149
    return-void
.end method

.method public constructor <init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .registers 9
    .param p1, "featureState"    # I
    .param p2, "scanState"    # I
    .param p3, "activeDisplayState"    # I
    .param p4, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p6, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    if-nez p5, :cond_d

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displays must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_d
    iput p1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    .line 158
    iput p2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    .line 159
    iput p3, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    .line 160
    iput-object p4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 161
    iput-object p5, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mNetworkQoS:I

    .line 166
    if-eqz p6, :cond_22

    .end local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :goto_1f
    iput-object p6, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 167
    return-void

    .line 166
    .restart local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_22
    new-instance p6, Landroid/hardware/display/WifiDisplaySessionInfo;

    .end local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    invoke-direct {p6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>()V

    goto :goto_1f
.end method

.method public constructor <init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;II)V
    .registers 11
    .param p1, "featureState"    # I
    .param p2, "scanState"    # I
    .param p3, "activeDisplayState"    # I
    .param p4, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p6, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;
    .param p7, "connectedState"    # I
    .param p8, "networkQos"    # I

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-nez p5, :cond_d

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displays must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_d
    iput p1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    .line 181
    iput p2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    .line 182
    iput p3, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    .line 183
    iput-object p4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 184
    invoke-static {p5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 185
    iput-object p5, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 186
    iput p7, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    .line 187
    iput p8, p0, Landroid/hardware/display/WifiDisplayStatus;->mNetworkQoS:I

    .line 188
    if-eqz p6, :cond_23

    .end local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :goto_20
    iput-object p6, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 190
    return-void

    .line 188
    .restart local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_23
    new-instance p6, Landroid/hardware/display/WifiDisplaySessionInfo;

    .end local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    invoke-direct {p6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>()V

    goto :goto_20
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveDisplay()Landroid/hardware/display/WifiDisplay;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getActiveDisplayState()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    return v0
.end method

.method public getConnectedState()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    return v0
.end method

.method public getDisplays()[Landroid/hardware/display/WifiDisplay;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getFeatureState()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    return v0
.end method

.method public getNetworkQosLevel()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mNetworkQoS:I

    return v0
.end method

.method public getScanState()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    return v0
.end method

.method public getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiDisplayStatus{featureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkQoS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mNetworkQoS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 284
    iget v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v4, :cond_30

    .line 289
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    :goto_1c
    iget-object v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_26
    if-ge v2, v3, :cond_35

    aget-object v1, v0, v2

    .line 297
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 292
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_30
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 300
    .restart local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_35
    iget-object v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v4, p1, p2}, Landroid/hardware/display/WifiDisplaySessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 303
    iget v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mNetworkQoS:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    return-void
.end method
