.class Lcom/android/settings/NewModePreview$4;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewModePreview;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewModePreview;


# direct methods
.method constructor <init>(Lcom/android/settings/NewModePreview;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/NewModePreview$4;->this$0:Lcom/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "idx":I
    iget-object v1, p0, Lcom/android/settings/NewModePreview$4;->this$0:Lcom/android/settings/NewModePreview;

    invoke-virtual {v1}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/settings/NewModePreview$4;->this$0:Lcom/android/settings/NewModePreview;

    invoke-static {v1}, Lcom/android/settings/NewModePreview;->access$000(Lcom/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 357
    :goto_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 358
    iget-object v1, p0, Lcom/android/settings/NewModePreview$4;->this$0:Lcom/android/settings/NewModePreview;

    invoke-virtual {v1}, Lcom/android/settings/NewModePreview;->finish()V

    .line 359
    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NewModePreview$4;->this$0:Lcom/android/settings/NewModePreview;

    invoke-virtual {v1}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
