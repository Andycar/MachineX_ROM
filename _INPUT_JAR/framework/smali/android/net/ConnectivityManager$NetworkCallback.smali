.class public Landroid/net/ConnectivityManager$NetworkCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallback"
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final CANCELED:I = 0x8

.field public static final CAP_CHANGED:I = 0x6

.field public static final LOSING:I = 0x3

.field public static final LOST:I = 0x4

.field public static final PRECHECK:I = 0x1

.field public static final PROP_CHANGED:I = 0x7

.field public static final UNAVAIL:I = 0x5


# instance fields
.field private networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;
    .registers 2
    .param p0, "x0"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 2496
    iget-object v0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    .registers 2
    .param p0, "x0"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 2496
    iput-object p1, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2528
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 2569
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 2578
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .prologue
    .line 2544
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2552
    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2519
    return-void
.end method

.method public onUnavailable()V
    .registers 1

    .prologue
    .line 2559
    return-void
.end method
