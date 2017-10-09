.class Lcom/android/settings/wifi/WifiPoorConnection$5;
.super Ljava/lang/Object;
.source "WifiPoorConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPoorConnection;->showPoorConnectionDiag()V
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
    .line 118
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPoorConnection$5;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$5;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiPoorConnection;->access$400(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$5;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiPoorConnection;->access$400(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 123
    :cond_0
    return-void
.end method
