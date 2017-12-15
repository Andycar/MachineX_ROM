.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "DeviceAdminInfo"

.field public static final USES_ENCRYPTED_STORAGE:I = 0x7

.field public static final USES_POLICY_ALLOW_BLUETOOTH_MODE:I = 0x11

.field public static final USES_POLICY_ALLOW_BROWSER:I = 0xf

.field public static final USES_POLICY_ALLOW_DESKTOP_SYNC:I = 0x12

.field public static final USES_POLICY_ALLOW_INTERNET_SHARING:I = 0x10

.field public static final USES_POLICY_ALLOW_IRDA:I = 0x13

.field public static final USES_POLICY_ALLOW_POPIMAP_EMAIL:I = 0xe

.field public static final USES_POLICY_ALLOW_STORAGE_CARD:I = 0xb

.field public static final USES_POLICY_ALLOW_TEXT_MESSAGING:I = 0xd

.field public static final USES_POLICY_ALLOW_THIRD_PARTY_APP:I = 0x16

.field public static final USES_POLICY_ALLOW_UNSIGNED_APP:I = 0x19

.field public static final USES_POLICY_ALLOW_UNSIGNED_INSTALLATION_PACKAGE:I = 0x1a

.field public static final USES_POLICY_ALLOW_WIFI:I = 0xc

.field public static final USES_POLICY_BLOCK_INROM_APP:I = 0x17

.field public static final USES_POLICY_DEVICE_OWNER:I = -0x2

.field public static final USES_POLICY_DISABLE_CAMERA:I = 0x8

.field public static final USES_POLICY_DISABLE_KEYGUARD_FEATURES:I = 0x9

.field public static final USES_POLICY_EAS_FLAGS:I = 0x18

.field public static final USES_POLICY_EDM_BEGIN:I = 0x1b

.field public static final USES_POLICY_EXPIRE_PASSWORD:I = 0x6

.field public static final USES_POLICY_FORCE_LOCK:I = 0x3

.field public static final USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final USES_POLICY_PASSWORD_RECOVERABLE:I = 0xa

.field public static final USES_POLICY_PROFILE_OWNER:I = -0x1

.field public static final USES_POLICY_REQUIRE_STORAGECARD_ENCRYPTION:I = 0x14

.field public static final USES_POLICY_RESET_PASSWORD:I = 0x2

.field public static final USES_POLICY_SETS_GLOBAL_PROXY:I = 0x5

.field public static final USES_POLICY_SIMPLE_PASSWORD_ENABLED:I = 0x15

.field public static final USES_POLICY_WATCH_LOGIN:I = 0x1

.field public static final USES_POLICY_WIPE_DATA:I = 0x4

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mUsesPolicies:J

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 327
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 328
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 331
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x4

    const-string/jumbo v5, "wipe-data"

    const v6, 0x104031f

    const v7, 0x1040320

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x2

    const-string/jumbo v5, "reset-password"

    const v6, 0x104031b

    const v7, 0x104031c

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x0

    const-string v5, "limit-password"

    const v6, 0x1040317

    const v7, 0x1040318

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x1

    const-string/jumbo v5, "watch-login"

    const v6, 0x1040319

    const v7, 0x104031a

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x3

    const-string v5, "force-lock"

    const v6, 0x104031d

    const v7, 0x104031e

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x5

    const-string/jumbo v5, "set-global-proxy"

    const v6, 0x1040321

    const v7, 0x1040322

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x6

    const-string v5, "expire-password"

    const v6, 0x1040323

    const v7, 0x1040324

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x7

    const-string v5, "encrypted-storage"

    const v6, 0x1040325

    const v7, 0x1040326

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x8

    const-string v5, "disable-camera"

    const v6, 0x1040327

    const v7, 0x1040328

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x9

    const-string v5, "disable-keyguard-features"

    const v6, 0x1040329

    const v7, 0x104032a

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x14

    const-string/jumbo v5, "require-storagecard-encryption"

    const v6, 0x10407a8

    const v7, 0x10407a9

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xa

    const-string/jumbo v5, "recover-password"

    const v6, 0x1040786

    const v7, 0x1040787

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xe

    const-string v5, "allow-popimapemail"

    const v6, 0x1040792

    const v7, 0x1040793

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xb

    const-string v5, "allow-storagecard"

    const v6, 0x104078c

    const v7, 0x104078d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xc

    const-string v5, "allow-wifi"

    const v6, 0x104078e

    const v7, 0x104078f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xd

    const-string v5, "allow-textmessaging"

    const v6, 0x1040790

    const v7, 0x1040791

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xf

    const-string v5, "allow-browser"

    const v6, 0x1040796

    const v7, 0x1040797

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x10

    const-string v5, "allow-internetsharing"

    const v6, 0x1040798

    const v7, 0x1040799

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x11

    const-string v5, "allow-bluetoothmode"

    const v6, 0x104079a

    const v7, 0x104079b

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x12

    const-string v5, "allow-desktopsync"

    const v6, 0x104079c

    const v7, 0x104079d

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x13

    const-string v5, "allow-irda"

    const v6, 0x1040794

    const v7, 0x1040795

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x16

    const-string v5, "allow-list-thirdparty"

    const v6, 0x104079e

    const v7, 0x104079f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x17

    const-string v5, "block-list-InRom"

    const v6, 0x10407a0

    const v7, 0x10407a1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x19

    const-string v5, "allow-unsignedapp"

    const v6, 0x10407a2

    const v7, 0x10407a3

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x1a

    const-string v5, "allow-unsignedinstallationpkg"

    const v6, 0x10407a4

    const v7, 0x10407a5

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_208
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_22f

    .line 425
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 426
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_208

    .line 731
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_22f
    new-instance v2, Landroid/app/admin/DeviceAdminInfo$1;

    invoke-direct {v2}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 538
    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 539
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    .line 540
    iput-object p2, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 541
    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .local v1, "policyName":Ljava/lang/String;
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 543
    .local v2, "val":Ljava/lang/Integer;
    if-eqz v2, :cond_3d

    .line 544
    iget-wide v4, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    goto :goto_1a

    .line 546
    :cond_3d
    const-string v3, "DeviceAdminInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under uses-policies of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 550
    .end local v1    # "policyName":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/Integer;
    :cond_64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 455
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 456
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 458
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 460
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 462
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1a
    const-string v18, "android.app.device_admin"

    move-object/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 463
    if-nez v10, :cond_51

    .line 464
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "No android.app.device_admin meta-data"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_2c} :catch_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_4a

    .line 518
    :catch_2c
    move-exception v6

    .line 519
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2d
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to create context for: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_4a

    .line 522
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_4a
    move-exception v18

    if-eqz v10, :cond_50

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_50
    throw v18

    .line 468
    :cond_51
    :try_start_51
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 470
    .local v13, "res":Landroid/content/res/Resources;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 474
    .local v5, "attrs":Landroid/util/AttributeSet;
    :cond_5f
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_73

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5f

    .line 477
    :cond_73
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 478
    .local v8, "nodeName":Ljava/lang/String;
    const-string v18, "device-admin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_89

    .line 479
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "Meta-data does not start with device-admin tag"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 483
    :cond_89
    sget-object v18, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    move-object/from16 v0, v18

    invoke-virtual {v13, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 486
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    .line 489
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 491
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 493
    .local v9, "outerDepth":I
    :cond_aa
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_165

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c6

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_165

    .line 494
    :cond_c6
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_aa

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_aa

    .line 497
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 498
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v18, "uses-policies"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_aa

    .line 499
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 501
    .local v7, "innerDepth":I
    :cond_e9
    :goto_e9
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_aa

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_105

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v7, :cond_aa

    .line 502
    :cond_105
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_e9

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_e9

    .line 505
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 506
    .local v12, "policyName":Ljava/lang/String;
    sget-object v18, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 507
    .local v17, "val":Ljava/lang/Integer;
    if-eqz v17, :cond_13c

    .line 509
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    shl-long v20, v20, v22

    or-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    goto :goto_e9

    .line 512
    :cond_13c
    const-string v18, "DeviceAdminInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown tag under uses-policies of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_164} :catch_2c
    .catchall {:try_start_51 .. :try_end_164} :catchall_4a

    goto :goto_e9

    .line 522
    .end local v7    # "innerDepth":I
    .end local v12    # "policyName":Ljava/lang/String;
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v17    # "val":Ljava/lang/Integer;
    :cond_165
    if-eqz v10, :cond_16a

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 524
    :cond_16a
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 527
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 529
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 743
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 588
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()J
    .registers 3

    .prologue
    .line 749
    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    return-wide v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .registers 3
    .param p1, "policyIdent"    # I

    .prologue
    .line 677
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 684
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 685
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 686
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 689
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_24
    return-object v2
.end method

.method public isProxy()Z
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 649
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 614
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v2, :cond_b

    .line 615
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v2, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    .line 624
    :goto_a
    return-object v2

    .line 616
    :cond_b
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-eqz v2, :cond_31

    .line 618
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 619
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 620
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_26

    .line 621
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 622
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 624
    :cond_26
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_a

    .line 627
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_31
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 638
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_b

    .line 639
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 641
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 600
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_b

    .line 601
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 702
    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 705
    :cond_15
    return-void
.end method

.method public setPermissions(J)V
    .registers 4
    .param p1, "val"    # J

    .prologue
    .line 753
    iput-wide p1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    .line 754
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPolicy(I)Z
    .registers 8
    .param p1, "policyIdent"    # I

    .prologue
    const/4 v0, 0x0

    .line 664
    const/16 v1, 0x1b

    if-lt p1, v1, :cond_6

    .line 667
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-wide v2, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    const/4 v0, 0x0

    const-string v1, "flags"

    iget-wide v2, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 696
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 724
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 725
    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 726
    return-void
.end method
