.class Lcom/android/settings/OneHandEditMenu$3;
.super Ljava/lang/Object;
.source "OneHandEditMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandEditMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandEditMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandEditMenu;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 140
    const/4 v6, 0x1

    .line 141
    .local v6, "retVal":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 143
    .local v1, "dragEvent":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 144
    .local v3, "idx":I
    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "idx_prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / dragEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v5, 0x0

    .line 147
    .local v5, "panelView":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$300(Lcom/android/settings/OneHandEditMenu;)I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 148
    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "idx_next: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$400(Lcom/android/settings/OneHandEditMenu;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "panelView":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 162
    .restart local v5    # "panelView":Landroid/view/View;
    :goto_0
    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$200(Lcom/android/settings/OneHandEditMenu;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_0
    const/4 v6, 0x0

    .line 196
    .end local v6    # "retVal":Z
    :cond_1
    :goto_1
    return v6

    .line 151
    .restart local v6    # "retVal":Z
    :cond_2
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$300(Lcom/android/settings/OneHandEditMenu;)I

    move-result v7

    sub-int/2addr v3, v7

    .line 152
    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mActiveEditMenuNum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v9}, Lcom/android/settings/OneHandEditMenu;->access$500(Lcom/android/settings/OneHandEditMenu;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", idxGap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v9}, Lcom/android/settings/OneHandEditMenu;->access$300(Lcom/android/settings/OneHandEditMenu;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "idx_next: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$600(Lcom/android/settings/OneHandEditMenu;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/view/View;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "OneHandEditMenu"

    const-string v8, "Exception in mCandidateNotificationPanelList"

    invoke-static {v7, v8, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const v7, 0x7f1002c9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 166
    .local v4, "panelBorder":Landroid/widget/LinearLayout;
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 178
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$200(Lcom/android/settings/OneHandEditMenu;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 168
    :pswitch_2
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 169
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7, p1}, Lcom/android/settings/OneHandEditMenu;->access$700(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)V

    .line 170
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$000(Lcom/android/settings/OneHandEditMenu;)V

    goto/16 :goto_1

    .line 174
    :pswitch_3
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_1

    .line 182
    :pswitch_4
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_1

    .line 186
    :pswitch_5
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 187
    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 188
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$100(Lcom/android/settings/OneHandEditMenu;)Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 189
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$100(Lcom/android/settings/OneHandEditMenu;)Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->restoreOriginalImage()V

    goto/16 :goto_1

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
