.class Landroid/net/ConnectivityManager$LegacyRequest;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyRequest"
.end annotation


# instance fields
.field currentNetwork:Landroid/net/Network;

.field delay:I

.field expireSequenceNumber:I

.field networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field networkCapabilities:Landroid/net/NetworkCapabilities;

.field networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    .line 1417
    new-instance v0, Landroid/net/ConnectivityManager$LegacyRequest$1;

    invoke-direct {v0, p0}, Landroid/net/ConnectivityManager$LegacyRequest$1;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    iput-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityManager$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/net/ConnectivityManager$1;

    .prologue
    .line 1411
    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>()V

    return-void
.end method
