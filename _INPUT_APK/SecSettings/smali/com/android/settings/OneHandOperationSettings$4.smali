.class Lcom/android/settings/OneHandOperationSettings$4;
.super Ljava/lang/Object;
.source "OneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandOperationSettings;->showDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandOperationSettings;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/OneHandOperationSettings$4;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/settings/OneHandOperationSettings$4;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-static {v0}, Lcom/android/settings/OneHandOperationSettings;->access$000(Lcom/android/settings/OneHandOperationSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/OneHandOperationSettings$4;->this$0:Lcom/android/settings/OneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    return-void
.end method
