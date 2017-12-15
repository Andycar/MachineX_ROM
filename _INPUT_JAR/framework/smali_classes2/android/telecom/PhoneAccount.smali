.class public Landroid/telecom/PhoneAccount;
.super Ljava/lang/Object;
.source "PhoneAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccount$Builder;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CALL_PROVIDER:I = 0x2

.field public static final CAPABILITY_CONNECTION_MANAGER:I = 0x1

.field public static final CAPABILITY_PLACE_EMERGENCY_CALLS:I = 0x10

.field public static final CAPABILITY_SIM_SUBSCRIPTION:I = 0x4

.field public static final CAPABILITY_VIDEO_CALLING:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SCHEME_VOICEMAIL:Ljava/lang/String; = "voicemail"


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mAddress:Landroid/net/Uri;

.field private final mCapabilities:I

.field private final mIconResId:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mShortDescription:Ljava/lang/CharSequence;

.field private final mSubscriptionAddress:Landroid/net/Uri;

.field private final mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 421
    new-instance v0, Landroid/telecom/PhoneAccount$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccount$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const-class v2, Landroid/telecom/PhoneAccount;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 437
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 438
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    .line 439
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telecom/PhoneAccount;->mIconResId:I

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v1, "supportedUriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 447
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    .line 448
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccount$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telecom/PhoneAccount$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V
    .registers 10
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "subscriptionAddress"    # Landroid/net/Uri;
    .param p4, "capabilities"    # I
    .param p5, "iconResId"    # I
    .param p6, "label"    # Ljava/lang/CharSequence;
    .param p7, "shortDescription"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "II",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p8, "supportedUriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 241
    iput-object p2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    .line 242
    iput-object p3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    .line 243
    iput p4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    .line 244
    iput p5, p0, Landroid/telecom/PhoneAccount;->mIconResId:I

    .line 245
    iput-object p6, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    .line 246
    iput-object p7, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    .line 247
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/telecom/PhoneAccount$1;)V
    .registers 10
    .param p1, "x0"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Landroid/net/Uri;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/CharSequence;
    .param p7, "x6"    # Ljava/lang/CharSequence;
    .param p8, "x7"    # Ljava/util/List;
    .param p9, "x8"    # Landroid/telecom/PhoneAccount$1;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p8}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method

.method public static builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .registers 3
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 253
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 385
    :try_start_3
    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_11} :catch_17

    move-result-object v1

    .line 392
    .local v1, "packageContext":Landroid/content/Context;
    :try_start_12
    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_15} :catch_2c
    .catch Ljava/util/MissingResourceException; {:try_start_12 .. :try_end_15} :catch_48

    move-result-object v2

    .line 396
    .end local v1    # "packageContext":Landroid/content/Context;
    :goto_16
    return-object v2

    .line 387
    :catch_17
    move-exception v0

    .line 388
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Cannot find package %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 393
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageContext":Landroid/content/Context;
    :catch_2c
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2d
    const-string v3, "Cannot find icon %d in package %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v0, v3, v4}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 393
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_48
    move-exception v0

    goto :goto_2d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getAddress()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getCapabilities()I
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    iget v0, p0, Landroid/telecom/PhoneAccount;->mIconResId:I

    invoke-direct {p0, p1, v0}, Landroid/telecom/PhoneAccount;->getIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconResId()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Landroid/telecom/PhoneAccount;->mIconResId:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubscriptionAddress()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getSupportedUriSchemes()Ljava/util/List;
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
    .line 340
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    return-object v0
.end method

.method public hasCapabilities(I)Z
    .registers 3
    .param p1, "capability"    # I

    .prologue
    .line 313
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public supportsUriScheme(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    if-eqz v3, :cond_7

    if-nez p1, :cond_8

    .line 361
    :cond_7
    :goto_7
    return v2

    .line 356
    :cond_8
    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 358
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public toBuilder()Landroid/telecom/PhoneAccount$Builder;
    .registers 2

    .prologue
    .line 262
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccount;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 412
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 413
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 414
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/telecom/PhoneAccount;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 419
    return-void
.end method
