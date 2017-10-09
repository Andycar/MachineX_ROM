.class Lcom/android/systemui/volume/ZenModePanel$2;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    const/4 v0, -0x1

    .line 263
    .local v0, "ringerModeIndex":I
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 264
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ZenModePanel"

    const-string v2, "onClick : click mute, no actions..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 275
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick : ringerModeIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/ZenModePanel;->access$700(Lcom/android/systemui/volume/ZenModePanel;I)V

    .line 277
    return-void

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$500(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 267
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ZenModePanel"

    const-string v2, "onClick : click vibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$600(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 270
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ZenModePanel"

    const-string v2, "onClick : click sound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 273
    :cond_7
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ZenModePanel"

    const-string v2, "onClick : no view.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
