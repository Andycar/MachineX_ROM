.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    .line 835
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    .line 837
    return-void
.end method
