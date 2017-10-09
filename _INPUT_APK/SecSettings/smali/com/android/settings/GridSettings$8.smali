.class Lcom/android/settings/GridSettings$8;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;

.field final synthetic val$viewType:I


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;I)V
    .locals 0

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    iput p2, p0, Lcom/android/settings/GridSettings$8;->val$viewType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1090
    iget v0, p0, Lcom/android/settings/GridSettings$8;->val$viewType:I

    iget-object v1, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v1, p2}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_gridui"

    iget-object v2, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v2, p2}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1092
    iget-object v0, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings;->finish()V

    .line 1093
    iget-object v0, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/GridSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/GridSettings;->startActivity(Landroid/content/Intent;)V

    .line 1097
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$1100(Lcom/android/settings/GridSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
