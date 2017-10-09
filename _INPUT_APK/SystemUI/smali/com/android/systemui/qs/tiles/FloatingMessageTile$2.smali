.class Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;
.super Ljava/lang/Object;
.source "FloatingMessageTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/FloatingMessageTile;->showGuideDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

.field final synthetic val$mDisableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;->this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;->this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->access$100(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airmessage_alert"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;->this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->access$200(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;->this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->access$300(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Z)V

    .line 238
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 240
    return-void
.end method
