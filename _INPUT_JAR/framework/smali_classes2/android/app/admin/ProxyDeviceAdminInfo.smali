.class public final Landroid/app/admin/ProxyDeviceAdminInfo;
.super Ljava/lang/Object;
.source "ProxyDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXY_ADMIN_TYPE_LOCAL:I = 0x1

.field public static final PROXY_ADMIN_TYPE_UNIVERSAL:I = 0x2

.field static final TAG:Ljava/lang/String; = "ProxyDeviceAdminInfo"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mIcon:[B

.field private final mLabel:Ljava/lang/String;

.field private final mReceiver:Landroid/content/pm/ResolveInfo;

.field private final mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 260
    new-instance v0, Landroid/app/admin/ProxyDeviceAdminInfo$1;

    invoke-direct {v0}, Landroid/app/admin/ProxyDeviceAdminInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/ProxyDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .registers 4
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 112
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 117
    invoke-direct {p0, p2, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->parsePolicies(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/admin/ProxyDeviceAdminInfo;->parseRequestedPermissions()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V
    .registers 7
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "icon"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p5, "policyPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 99
    iput-object p2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 102
    iput-object p5, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    .registers 4
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "policyPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 123
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 126
    iput-object p2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 137
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 146
    :goto_31
    return-void

    .line 142
    :cond_32
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    goto :goto_31
.end method

.method private parsePolicies(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 278
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 280
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 282
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_9
    const-string v13, "android.app.device_admin"

    invoke-virtual {v1, v8, v13}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 283
    if-nez v7, :cond_3c

    .line 284
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v14, "No android.app.device_admin meta-data"

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_19} :catch_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_35

    .line 322
    :catch_19
    move-exception v3

    .line 323
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1a
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to create context for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_35

    .line 326
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_35
    move-exception v13

    if-eqz v7, :cond_3b

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3b
    throw v13

    .line 288
    :cond_3c
    :try_start_3c
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 290
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 294
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_46
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_50

    const/4 v13, 0x2

    if-ne v12, v13, :cond_46

    .line 297
    :cond_50
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "nodeName":Ljava/lang/String;
    const-string v13, "device-admin"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_64

    .line 299
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v14, "Meta-data does not start with device-admin tag"

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 303
    :cond_64
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 305
    .local v6, "outerDepth":I
    :cond_68
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_b1

    const/4 v13, 0x3

    if-ne v12, v13, :cond_78

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v6, :cond_b1

    .line 306
    :cond_78
    const/4 v13, 0x3

    if-eq v12, v13, :cond_68

    const/4 v13, 0x4

    if-eq v12, v13, :cond_68

    .line 309
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "uses-policies"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_68

    .line 311
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 313
    .local v4, "innerDepth":I
    :cond_8f
    :goto_8f
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_68

    const/4 v13, 0x3

    if-ne v12, v13, :cond_9f

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_68

    .line 314
    :cond_9f
    const/4 v13, 0x3

    if-eq v12, v13, :cond_8f

    const/4 v13, 0x4

    if-eq v12, v13, :cond_8f

    .line 317
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "policyName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_b0} :catch_19
    .catchall {:try_start_3c .. :try_end_b0} :catchall_35

    goto :goto_8f

    .line 326
    .end local v4    # "innerDepth":I
    .end local v9    # "policyName":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_b1
    if-eqz v7, :cond_b6

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 328
    :cond_b6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 232
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 186
    iget v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 187
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 188
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 189
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_18

    .line 190
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 191
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 193
    :cond_18
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_24
    return-object v2

    :cond_25
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    goto :goto_24
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    .line 203
    iget v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 204
    iget-object v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 211
    :cond_c
    :goto_c
    return-object v1

    .line 207
    :cond_d
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    if-eqz v2, :cond_c

    .line 210
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 211
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_c
.end method

.method public getIcon()[B
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    return-object v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 176
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 177
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    goto :goto_d
.end method

.method public getReceiver()Landroid/content/pm/ResolveInfo;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    return v0
.end method

.method public parseRequestedPermissions()V
    .registers 23

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 333
    .local v13, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 334
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 336
    .local v2, "assmgr":Landroid/content/res/AssetManager;
    :try_start_18
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_195

    .line 337
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .local v3, "assmgr":Landroid/content/res/AssetManager;
    :try_start_1d
    invoke-virtual {v3, v13}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    .line 338
    .local v5, "cookie":I
    if-eqz v5, :cond_34

    .line 339
    const-string v19, "AndroidManifest.xml"

    move-object/from16 v0, v19

    invoke-virtual {v3, v5, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_4f

    move-result-object v12

    :goto_2b
    move-object v2, v3

    .line 346
    .end local v3    # "assmgr":Landroid/content/res/AssetManager;
    .end local v5    # "cookie":I
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    :goto_2c
    if-nez v12, :cond_70

    .line 347
    if-eqz v2, :cond_33

    .line 348
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 422
    :cond_33
    :goto_33
    return-void

    .line 341
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v3    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v5    # "cookie":I
    :cond_34
    :try_start_34
    const-string v19, "ProxyDeviceAdminInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed adding asset path:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4e} :catch_4f

    goto :goto_2b

    .line 343
    .end local v5    # "cookie":I
    :catch_4f
    move-exception v6

    move-object v2, v3

    .line 344
    .end local v3    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    .local v6, "e":Ljava/lang/Exception;
    :goto_51
    const-string v19, "ProxyDeviceAdminInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to read AndroidManifest.xml of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 352
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_70
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 353
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v9}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 357
    :try_start_78
    new-instance v15, Landroid/content/res/Resources;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v15, v2, v9, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 358
    .local v15, "res":Landroid/content/res/Resources;
    move-object v4, v12

    .line 362
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_82
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_96

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_82

    .line 366
    :cond_96
    sget-object v19, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, v19

    invoke-virtual {v15, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 368
    .local v16, "sa":Landroid/content/res/TypedArray;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 370
    .local v11, "outerDepth":I
    :cond_a2
    :goto_a2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18e

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_be

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v11, :cond_18e

    .line 371
    :cond_be
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a2

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a2

    .line 375
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 376
    .local v17, "tagName":Ljava/lang/String;
    if-eqz v17, :cond_a2

    const-string/jumbo v19, "uses-permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a2

    .line 377
    sget-object v19, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    move-object/from16 v0, v19

    invoke-virtual {v15, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 383
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 386
    .local v10, "name":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_104} :catch_105

    goto :goto_a2

    .line 398
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_105
    move-exception v6

    .line 399
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_109
    :goto_109
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 402
    if-eqz v2, :cond_111

    .line 403
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 407
    :cond_111
    :try_start_111
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 408
    .local v7, "elmPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "ProxyDeviceAdminInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PackageName"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz v7, :cond_33

    .line 410
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_15b
    :goto_15b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_33

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 412
    .local v14, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_15b

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_180} :catch_181

    goto :goto_15b

    .line 418
    .end local v7    # "elmPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "permission":Ljava/lang/String;
    :catch_181
    move-exception v6

    .line 419
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v19, "ProxyDeviceAdminInfo"

    const-string v20, "Failed to get ELM permissions"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_33

    .line 396
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "outerDepth":I
    .restart local v15    # "res":Landroid/content/res/Resources;
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "type":I
    :cond_18e
    if-eqz v16, :cond_109

    .line 397
    :try_start_190
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_105

    goto/16 :goto_109

    .line 343
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "metrics":Landroid/util/DisplayMetrics;
    .end local v11    # "outerDepth":I
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .end local v18    # "type":I
    :catch_195
    move-exception v6

    goto/16 :goto_51
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ProxyDeviceAdminInfo [mReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIconPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRequestedPermissions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 155
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 158
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 159
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 163
    :cond_23
    return-void
.end method
