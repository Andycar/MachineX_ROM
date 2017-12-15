.class public final Landroid/media/tv/TvInputInfo;
.super Ljava/lang/Object;
.source "TvInputInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputInfo$TvInputSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DELIMITER_INFO_IN_ID:Ljava/lang/String; = "/"

.field public static final EXTRA_INPUT_ID:Ljava/lang/String; = "android.media.tv.extra.INPUT_ID"

.field private static final LENGTH_HDMI_DEVICE_ID:I = 0x2

.field private static final LENGTH_HDMI_PHYSICAL_ADDRESS:I = 0x4

.field private static final PREFIX_HARDWARE_DEVICE:Ljava/lang/String; = "HW"

.field private static final PREFIX_HDMI_DEVICE:Ljava/lang/String; = "HDMI"

.field private static final TAG:Ljava/lang/String; = "TvInputInfo"

.field public static final TYPE_COMPONENT:I = 0x3ec

.field public static final TYPE_COMPOSITE:I = 0x3e9

.field public static final TYPE_DISPLAY_PORT:I = 0x3f0

.field public static final TYPE_DVI:I = 0x3ee

.field public static final TYPE_HDMI:I = 0x3ef

.field public static final TYPE_OTHER:I = 0x3e8

.field public static final TYPE_SCART:I = 0x3eb

.field public static final TYPE_SVIDEO:I = 0x3ea

.field public static final TYPE_TUNER:I = 0x0

.field public static final TYPE_VGA:I = 0x3ed

.field private static final XML_START_TAG_NAME:Ljava/lang/String; = "tv-input"

.field private static sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;


# instance fields
.field private mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private mIconUri:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field private mIsConnectedToHdmiSwitch:Z

.field private mLabel:Ljava/lang/String;

.field private final mParentId:Ljava/lang/String;

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSetupActivity:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 107
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    .line 131
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 552
    new-instance v0, Landroid/media/tv/TvInputInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    .line 274
    iput-object p1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 275
    iput-object p2, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    .line 276
    iput-object p3, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    .line 277
    iput p4, p0, Landroid/media/tv/TvInputInfo;->mType:I

    .line 278
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v2, p0, Landroid/media/tv/TvInputInfo;->mType:I

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    .line 568
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    .line 572
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 573
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_50

    move v0, v1

    :goto_4d
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    .line 576
    return-void

    :cond_50
    move v0, v2

    .line 575
    goto :goto_4d
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvInputInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/tv/TvInputInfo$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/media/tv/TvInputInfo;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 154
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/media/tv/TvInputInfo;->generateInputIdForComponentName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    and-int/lit16 v0, v0, 0xfff

    if-eqz v0, :cond_28

    const/4 v7, 0x1

    .line 178
    .local v7, "isConnectedToHdmiSwitch":Z
    :goto_9
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHdmiDevice(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3ef

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    move-result-object v8

    .line 181
    .local v8, "input":Landroid/media/tv/TvInputInfo;
    iput-object p2, v8, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 182
    return-object v8

    .line 177
    .end local v7    # "isConnectedToHdmiSwitch":Z
    .end local v8    # "input":Landroid/media/tv/TvInputInfo;
    :cond_28
    const/4 v7, 0x0

    goto :goto_9
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 202
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 203
    .local v4, "inputType":I
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHardware(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    return-object v0
.end method

.method private static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "inputType"    # I
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "iconUri"    # Landroid/net/Uri;
    .param p7, "isConnectedToHdmiSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 213
    .local v12, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 214
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .line 216
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_9
    const-string v14, "android.media.tv.input"

    invoke-virtual {v12, v9, v14}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 217
    if-nez v8, :cond_53

    .line 218
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No android.media.tv.input meta-data for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_2e} :catch_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_4c

    .line 256
    :catch_2e
    move-exception v5

    .line 257
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2f
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to create context for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_4c

    .line 259
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_4c
    move-exception v14

    if-eqz v8, :cond_52

    .line 260
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_52
    throw v14

    .line 222
    :cond_53
    :try_start_53
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 223
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 227
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_5d
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_67

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5d

    .line 230
    :cond_67
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "tv-input"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_91

    .line 232
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Meta-data does not start with tv-input-service tag in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 236
    :cond_91
    new-instance v6, Landroid/media/tv/TvInputInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    .local v6, "input":Landroid/media/tv/TvInputInfo;
    sget-object v14, Lcom/android/internal/R$styleable;->TvInputService:[I

    invoke-virtual {v10, v4, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 239
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    .line 244
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    .line 250
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    move-object/from16 v0, p5

    iput-object v0, v6, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    .line 253
    move-object/from16 v0, p6

    iput-object v0, v6, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    .line 254
    move/from16 v0, p7

    iput-boolean v0, v6, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z
    :try_end_c1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_c1} :catch_2e
    .catchall {:try_start_53 .. :try_end_c1} :catchall_4c

    .line 259
    if-eqz v8, :cond_c6

    .line 260
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c6
    return-object v6
.end method

.method private static final generateInputIdForComponentName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final generateInputIdForHardware(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s%s%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "/"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "HW"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final generateInputIdForHdmiDevice(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .registers 10
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 533
    const-string v1, "%s%s%%0%sX%%0%sX"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "/"

    aput-object v3, v2, v6

    const-string v3, "HDMI"

    aput-object v3, v2, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v0, :cond_14

    .line 508
    const/4 v0, 0x0

    .line 510
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method public createSettingsIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 342
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "android.media.tv.extra.INPUT_ID"

    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public createSetupIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 329
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "android.media.tv.extra.INPUT_ID"

    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 466
    if-ne p1, p0, :cond_4

    .line 467
    const/4 v1, 0x1

    .line 475
    :goto_3
    return v1

    .line 470
    :cond_4
    instance-of v1, p1, Landroid/media/tv/TvInputInfo;

    if-nez v1, :cond_a

    .line 471
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 474
    check-cast v0, Landroid/media/tv/TvInputInfo;

    .line 475
    .local v0, "obj":Landroid/media/tv/TvInputInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 322
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3

    .prologue
    .line 364
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_9

    .line 365
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 367
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 355
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConnectedToHdmiSwitch()Z
    .registers 2

    .prologue
    .line 387
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    return v0
.end method

.method public isHidden(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    # invokes: Landroid/media/tv/TvInputInfo$TvInputSettings;->isHidden(Landroid/content/Context;Ljava/lang/String;I)Z
    invoke-static {p1, v0, v1}, Landroid/media/tv/TvInputInfo$TvInputSettings;->access$000(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isPassthroughInput()Z
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public loadCustomLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    # invokes: Landroid/media/tv/TvInputInfo$TvInputSettings;->getCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p1, v0, v1}, Landroid/media/tv/TvInputInfo$TvInputSettings;->access$100(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 439
    iget-object v4, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    if-nez v4, :cond_a

    .line 440
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;->loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 450
    :cond_9
    :goto_9
    return-object v0

    .line 442
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_2d

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 443
    const/4 v6, 0x0

    :try_start_16
    invoke-static {v2, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 444
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_51

    .line 445
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;->loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_62
    .catchall {:try_start_16 .. :try_end_1f} :catchall_79

    move-result-object v0

    .line 448
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_9

    if-eqz v5, :cond_4d

    :try_start_24
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2d

    goto :goto_9

    :catch_28
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_29
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_9

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_2d
    move-exception v1

    .line 449
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TvInputInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading the default icon due to a failure on loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;->loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_9

    .line 448
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_4d
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_2d

    goto :goto_9

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_51
    if-eqz v2, :cond_9

    if-eqz v5, :cond_5e

    :try_start_55
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_59
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_2d

    goto :goto_9

    :catch_59
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_5a
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_61} :catch_2d

    goto :goto_9

    .line 442
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_62
    move-exception v4

    :try_start_63
    throw v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    .line 448
    :catchall_64
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_68
    if-eqz v2, :cond_6f

    if-eqz v5, :cond_75

    :try_start_6c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_2d

    :cond_6f
    :goto_6f
    :try_start_6f
    throw v4

    :catch_70
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6f

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_75
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_78} :catch_2d

    goto :goto_6f

    :catchall_79
    move-exception v4

    goto :goto_68
.end method

.method public loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 412
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 414
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvInputInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 493
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 496
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 500
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 501
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 503
    return-void

    .line 502
    :cond_36
    const/4 v0, 0x0

    goto :goto_32
.end method
