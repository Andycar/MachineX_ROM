.class Lcom/android/settings/DirectPenInputSettings$8;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$1100(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v0}, Lcom/android/settings/DirectPenInputSettings;->turnOffTalkBack()Z

    .line 455
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v1}, Lcom/android/settings/DirectPenInputSettings;->access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v0}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.feature.overlaymagnifier"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v1}, Lcom/android/settings/DirectPenInputSettings;->access$400(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v1}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$700(Lcom/android/settings/DirectPenInputSettings;)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0, v2}, Lcom/android/settings/DirectPenInputSettings;->access$502(Lcom/android/settings/DirectPenInputSettings;Z)Z

    .line 462
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$800(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$8;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$900(Lcom/android/settings/DirectPenInputSettings;)V

    .line 465
    :cond_1
    return-void
.end method
