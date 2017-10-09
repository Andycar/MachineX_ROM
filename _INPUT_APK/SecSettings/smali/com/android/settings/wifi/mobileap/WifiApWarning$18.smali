.class Lcom/android/settings/wifi/mobileap/WifiApWarning$18;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    .line 551
    return-void
.end method
