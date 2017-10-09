.class Lcom/android/settings/wifi/WifiPoorConnection$2;
.super Ljava/lang/Object;
.source "WifiPoorConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$mCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPoorConnection;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPoorConnection$2;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiPoorConnection$2;->val$mCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$2;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lcom/android/settings/wifi/WifiPoorConnection;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiPoorConnection"

    const-string v1, "ADVANCED BUTTON - CHECKBOX CHECKED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$2;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiPoorConnection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_poor_connection_warning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$2;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiPoorConnection;->finish()V

    .line 81
    return-void

    .line 78
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/WifiPoorConnection;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiPoorConnection"

    const-string v1, "ADVANCED BUTTON - CHECKBOX UNCHECKED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
