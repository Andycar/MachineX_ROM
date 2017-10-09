.class Lcom/android/settings/ShortCameraMenu$1;
.super Ljava/lang/Object;
.source "ShortCameraMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ShortCameraMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ShortCameraMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/ShortCameraMenu;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/ShortCameraMenu$1;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu$1;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-virtual {v0}, Lcom/android/settings/ShortCameraMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_enable_camera_widget_type"

    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu$1;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-static {v2}, Lcom/android/settings/ShortCameraMenu;->access$000(Lcom/android/settings/ShortCameraMenu;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu$1;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-virtual {v0}, Lcom/android/settings/ShortCameraMenu;->finish()V

    .line 68
    return-void
.end method
