.class Lcom/android/settings/PenHoveringEnabler$2;
.super Ljava/lang/Object;
.source "PenHoveringEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenHoveringEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenHoveringEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/PenHoveringEnabler;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings/PenHoveringEnabler$2;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v1, p0, Lcom/android/settings/PenHoveringEnabler$2;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-static {v1}, Lcom/android/settings/PenHoveringEnabler;->access$100(Lcom/android/settings/PenHoveringEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/settings/PenHoveringEnabler$2;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-static {v1}, Lcom/android/settings/PenHoveringEnabler;->access$000(Lcom/android/settings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/settings/PenHoveringEnabler$2;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-static {v1}, Lcom/android/settings/PenHoveringEnabler;->access$000(Lcom/android/settings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/PenHoveringEnabler$2;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-static {v1}, Lcom/android/settings/PenHoveringEnabler;->access$100(Lcom/android/settings/PenHoveringEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    const-string v1, "PenHoveringEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void
.end method
