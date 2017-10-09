.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$2;
.super Ljava/lang/Object;
.source "DeviceNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    const v5, 0x7f0d0029

    invoke-virtual {v4, v5}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 192
    .local v2, "et":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b001a

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 195
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 203
    .end local v3    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_name"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, "KeyFeatureIntent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.FeatureSettingsSetupWizard"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    const/16 v5, 0x7e5

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
