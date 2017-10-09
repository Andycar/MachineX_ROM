.class Lcom/android/settings/KnoxActiveProtectionSettings$1;
.super Ljava/lang/Object;
.source "KnoxActiveProtectionSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxActiveProtectionSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KnoxActiveProtectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxActiveProtectionSettings;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 100
    :try_start_0
    const-string v1, "KnoxActiveProtectionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged - isChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isKapOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v3}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$000(Lcom/android/settings/KnoxActiveProtectionSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isConfDialogShown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v3}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$100(Lcom/android/settings/KnoxActiveProtectionSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz p2, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$000(Lcom/android/settings/KnoxActiveProtectionSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$200(Lcom/android/settings/KnoxActiveProtectionSettings;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$100(Lcom/android/settings/KnoxActiveProtectionSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$002(Lcom/android/settings/KnoxActiveProtectionSettings;Z)Z

    .line 109
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$300(Lcom/android/settings/KnoxActiveProtectionSettings;)Lcom/android/settings/KnoxActiveProtectionStatus;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$102(Lcom/android/settings/KnoxActiveProtectionSettings;Z)Z

    .line 113
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$300(Lcom/android/settings/KnoxActiveProtectionSettings;)Lcom/android/settings/KnoxActiveProtectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$500(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v2}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$400(Lcom/android/settings/KnoxActiveProtectionSettings;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1ea8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$600(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxActiveProtectionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$300(Lcom/android/settings/KnoxActiveProtectionSettings;)Lcom/android/settings/KnoxActiveProtectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$500(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v2}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$400(Lcom/android/settings/KnoxActiveProtectionSettings;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1ea7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$600(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$1;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v1}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$600(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
