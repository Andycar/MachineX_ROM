.class Lcom/android/settings/motion/MotionEnabler$2;
.super Ljava/lang/Object;
.source "MotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionEnabler;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionEnabler;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

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

    .line 169
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v1}, Lcom/android/settings/motion/MotionEnabler;->access$000(Lcom/android/settings/motion/MotionEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v1}, Lcom/android/settings/motion/MotionEnabler;->access$000(Lcom/android/settings/motion/MotionEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v1, v3}, Lcom/android/settings/motion/MotionEnabler;->access$200(Lcom/android/settings/motion/MotionEnabler;Z)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v1}, Lcom/android/settings/motion/MotionEnabler;->access$000(Lcom/android/settings/motion/MotionEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 175
    .local v0, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_2

    .line 177
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v1}, Lcom/android/settings/motion/MotionEnabler;->access$300(Lcom/android/settings/motion/MotionEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v1}, Lcom/android/settings/motion/MotionEnabler;->access$300(Lcom/android/settings/motion/MotionEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v2}, Lcom/android/settings/motion/MotionEnabler;->access$400(Lcom/android/settings/motion/MotionEnabler;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v1}, Lcom/android/settings/motion/MotionEnabler;->access$300(Lcom/android/settings/motion/MotionEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v1}, Lcom/android/settings/motion/MotionEnabler;->access$300(Lcom/android/settings/motion/MotionEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionEnabler$2;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-static {v2}, Lcom/android/settings/motion/MotionEnabler;->access$400(Lcom/android/settings/motion/MotionEnabler;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
