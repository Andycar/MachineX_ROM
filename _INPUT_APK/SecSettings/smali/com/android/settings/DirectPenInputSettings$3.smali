.class Lcom/android/settings/DirectPenInputSettings$3;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 272
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v8, 0x7f0a11be

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 275
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 276
    .local v3, "writingBuddyOn":Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v1, v4

    .line 277
    .local v1, "MagnificationResult":Z
    :goto_1
    const/4 v0, 0x0

    .line 279
    .local v0, "HoverZoomResult":Z
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$400(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v0, v4

    .line 283
    :cond_0
    :goto_2
    if-eqz p2, :cond_7

    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$500(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/android/settings/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 284
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v8}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/android/settings/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a13c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/android/settings/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0a3c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$600(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v8}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v7, 0x7f0a11b7

    invoke-virtual {v6, v7}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v5}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.sec.feature.overlaymagnifier"

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v7, 0x7f0a0a40

    invoke-virtual {v6, v7}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v5, v2, v4}, Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    .line 300
    .end local v2    # "message":Ljava/lang/String;
    :goto_3
    return-void

    .end local v0    # "HoverZoomResult":Z
    .end local v1    # "MagnificationResult":Z
    .end local v3    # "writingBuddyOn":Z
    :cond_4
    move v3, v5

    .line 275
    goto/16 :goto_0

    .restart local v3    # "writingBuddyOn":Z
    :cond_5
    move v1, v5

    .line 276
    goto/16 :goto_1

    .restart local v0    # "HoverZoomResult":Z
    .restart local v1    # "MagnificationResult":Z
    :cond_6
    move v0, v5

    .line 280
    goto/16 :goto_2

    .line 296
    :cond_7
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    if-ne p2, v4, :cond_8

    :goto_4
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings$3;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v4}, Lcom/android/settings/DirectPenInputSettings;->access$700(Lcom/android/settings/DirectPenInputSettings;)V

    goto :goto_3

    :cond_8
    move v4, v5

    .line 296
    goto :goto_4
.end method
