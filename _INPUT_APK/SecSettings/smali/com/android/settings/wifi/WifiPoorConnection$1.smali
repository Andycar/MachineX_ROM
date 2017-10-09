.class Lcom/android/settings/wifi/WifiPoorConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPoorConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiPoorConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPoorConnection;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPoorConnection;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPoorConnection$1;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    return-void
.end method
