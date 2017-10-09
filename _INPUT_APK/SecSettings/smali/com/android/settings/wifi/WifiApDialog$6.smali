.class Lcom/android/settings/wifi/WifiApDialog$6;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApDialog;->showHideSsidWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x1

    .line 1159
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$2100(Lcom/android/settings/wifi/WifiApDialog;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f100550

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiApDialog;->access$2002(Lcom/android/settings/wifi/WifiApDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 1160
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$2000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1161
    const-string v1, "WifiApDialog"

    const-string v2, "mHideSsidDoNotShowAgain is Checked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$2200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApDialog;->access$600(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApDialog;->access$600(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->access$2202(Lcom/android/settings/wifi/WifiApDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 1164
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$6;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$2200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1165
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1168
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method
