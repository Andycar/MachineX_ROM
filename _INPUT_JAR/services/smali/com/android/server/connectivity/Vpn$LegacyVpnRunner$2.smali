.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;
.super Landroid/net/NetworkAgent;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->agentConnectForKnoxInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .registers 19
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/content/Context;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Landroid/net/NetworkInfo;
    .param p6, "x4"    # Landroid/net/NetworkCapabilities;
    .param p7, "x5"    # Landroid/net/LinkProperties;
    .param p8, "x6"    # I
    .param p9, "x7"    # Landroid/net/NetworkMisc;

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    return-void
.end method


# virtual methods
.method public unwanted()V
    .registers 1

    .prologue
    .line 1785
    return-void
.end method
