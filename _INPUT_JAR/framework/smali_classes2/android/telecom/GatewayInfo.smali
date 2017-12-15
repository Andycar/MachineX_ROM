.class public Landroid/telecom/GatewayInfo;
.super Ljava/lang/Object;
.source "GatewayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/GatewayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mGatewayAddress:Landroid/net/Uri;

.field private final mGatewayProviderPackageName:Ljava/lang/String;

.field private final mOriginalAddress:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Landroid/telecom/GatewayInfo$1;

    invoke-direct {v0}, Landroid/telecom/GatewayInfo$1;-><init>()V

    sput-object v0, Landroid/telecom/GatewayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gatewayUri"    # Landroid/net/Uri;
    .param p3, "originalAddress"    # Landroid/net/Uri;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    .line 47
    iput-object p3, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getGatewayAddress()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getGatewayProviderPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAddress()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    return-void
.end method
