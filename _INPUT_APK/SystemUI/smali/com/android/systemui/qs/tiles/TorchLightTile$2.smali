.class Lcom/android/systemui/qs/tiles/TorchLightTile$2;
.super Ljava/lang/Object;
.source "TorchLightTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/TorchLightTile;->showSecondaryMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

.field final synthetic val$fiveMinRadio:Landroid/widget/RadioButton;

.field final synthetic val$tenMinRadio:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/TorchLightTile;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->val$fiveMinRadio:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->val$tenMinRadio:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01de

    if-ne v0, v1, :cond_5

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$300(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->val$fiveMinRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$402(Lcom/android/systemui/qs/tiles/TorchLightTile;J)J

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$600(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$500(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$700(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$500(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSTile$H;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 266
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->closeDetailviewPanel()V

    .line 270
    :cond_1
    :goto_2
    return-void

    .line 252
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->val$tenMinRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$402(Lcom/android/systemui/qs/tiles/TorchLightTile;J)J

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$800(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$500(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$900(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$500(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSTile$H;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Lcom/android/systemui/qs/QSTile$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$500(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$402(Lcom/android/systemui/qs/tiles/TorchLightTile;J)J

    goto :goto_1

    .line 267
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01d3

    if-ne v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$2;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->closeDetailviewPanel()V

    goto :goto_2
.end method
