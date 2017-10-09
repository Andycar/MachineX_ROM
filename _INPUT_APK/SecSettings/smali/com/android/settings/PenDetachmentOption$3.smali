.class Lcom/android/settings/PenDetachmentOption$3;
.super Ljava/lang/Object;
.source "PenDetachmentOption.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenDetachmentOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenDetachmentOption;


# direct methods
.method constructor <init>(Lcom/android/settings/PenDetachmentOption;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 159
    const/4 v4, 0x1

    .line 160
    .local v4, "retVal":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, "dragEvent":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 164
    .local v1, "idx":I
    const/4 v3, 0x0

    .line 165
    .local v3, "panelView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$400(Lcom/android/settings/PenDetachmentOption;)I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 166
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$500(Lcom/android/settings/PenDetachmentOption;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "panelView":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 172
    .restart local v3    # "panelView":Landroid/view/View;
    :goto_0
    if-nez v3, :cond_2

    .line 173
    const/4 v4, 0x0

    .line 206
    .end local v4    # "retVal":Z
    :cond_0
    :goto_1
    :pswitch_0
    return v4

    .line 168
    .restart local v4    # "retVal":Z
    :cond_1
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$400(Lcom/android/settings/PenDetachmentOption;)I

    move-result v5

    sub-int/2addr v1, v5

    .line 169
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$600(Lcom/android/settings/PenDetachmentOption;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "panelView":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3    # "panelView":Landroid/view/View;
    goto :goto_0

    .line 175
    :cond_2
    const v5, 0x7f1002c9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 177
    .local v2, "panelBorder":Landroid/widget/LinearLayout;
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    .line 179
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5, p1}, Lcom/android/settings/PenDetachmentOption;->access$700(Lcom/android/settings/PenDetachmentOption;Landroid/view/View;)V

    .line 180
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$800(Lcom/android/settings/PenDetachmentOption;)V

    .line 181
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$900(Lcom/android/settings/PenDetachmentOption;)V

    goto :goto_1

    .line 185
    :pswitch_3
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    .line 192
    :pswitch_4
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    .line 196
    :pswitch_5
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 197
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 198
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$000(Lcom/android/settings/PenDetachmentOption;)Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 199
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$000(Lcom/android/settings/PenDetachmentOption;)Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->restoreOriginalImage()V

    goto :goto_1

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
