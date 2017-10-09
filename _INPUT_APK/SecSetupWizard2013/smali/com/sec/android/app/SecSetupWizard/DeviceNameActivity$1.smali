.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;
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
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 155
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    const v4, 0x7f0d0029

    invoke-virtual {v3, v4}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 156
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, ""

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b001a

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 159
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 177
    .end local v2    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    const-string v3, "jflteaio"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "jflteuc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "jactivelteuc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setResult(I)V

    .line 176
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->finish()V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dualsimalwaysonCheck"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v3

    if-le v3, v6, :cond_4

    .line 169
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setResult(I)V

    goto :goto_1

    .line 172
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setResult(I)V

    goto :goto_1
.end method
