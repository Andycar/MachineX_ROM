.class Lcom/android/settings/wifi/WifiOffloadDialog$2;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$002(Lcom/android/settings/wifi/WifiOffloadDialog;Z)Z

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_offload_network_notify"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog$2;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    .line 87
    return-void
.end method
