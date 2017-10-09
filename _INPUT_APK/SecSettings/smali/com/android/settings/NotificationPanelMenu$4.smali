.class Lcom/android/settings/NotificationPanelMenu$4;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 220
    const/4 v9, 0x1

    .line 221
    .local v9, "retVal":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    .line 223
    .local v3, "dragEvent":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 224
    .local v5, "idx":I
    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "idx_prev: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / dragEvent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, "panelView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 228
    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "idx_next: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$500(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_1

    .line 230
    const/4 v9, 0x0

    .line 305
    .end local v9    # "retVal":Z
    :cond_0
    :goto_0
    return v9

    .line 232
    .restart local v9    # "retVal":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$500(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "panelView":Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .line 248
    .restart local v8    # "panelView":Landroid/view/View;
    :goto_1
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$300(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_5

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 234
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v11

    sub-int/2addr v5, v11

    .line 235
    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mActiveAppsNum: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v13}, Lcom/android/settings/NotificationPanelMenu;->access$600(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", idxGap: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v13}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "idx_next: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$700(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_4

    .line 239
    const/4 v9, 0x0

    goto :goto_0

    .line 241
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$700(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/view/View;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 242
    :catch_0
    move-exception v4

    .line 243
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "NotificationPanelMenu"

    const-string v12, "Exception in mCandidateNotificationPanelList"

    invoke-static {v11, v12, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 250
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    const v11, 0x7f1002c9

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 252
    .local v7, "panelBorder":Landroid/widget/LinearLayout;
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 287
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$300(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 254
    :pswitch_2
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 255
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/settings/NotificationPanelMenu;->access$800(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$000(Lcom/android/settings/NotificationPanelMenu;)V

    goto/16 :goto_0

    .line 260
    :pswitch_3
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 261
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$900(Lcom/android/settings/NotificationPanelMenu;)Landroid/speech/tts/TextToSpeech;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v11}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$1000(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 265
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v11}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 270
    .local v6, "oneLinePanelNum":I
    :goto_2
    div-int v10, v5, v6

    .line 271
    .local v10, "row":I
    rem-int v1, v5, v6

    .line 273
    .local v1, "column":I
    const/4 v2, 0x0

    .line 274
    .local v2, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v12}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    const v12, 0x7f0a18b3

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v10, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v1, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$900(Lcom/android/settings/NotificationPanelMenu;)Landroid/speech/tts/TextToSpeech;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v2, v12, v13}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_0

    .line 267
    .end local v1    # "column":I
    .end local v2    # "description":Ljava/lang/String;
    .end local v6    # "oneLinePanelNum":I
    .end local v10    # "row":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v11}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .restart local v6    # "oneLinePanelNum":I
    goto :goto_2

    .line 277
    .restart local v1    # "column":I
    .restart local v2    # "description":Ljava/lang/String;
    .restart local v10    # "row":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    const v12, 0x7f0a18b4

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v10, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v1, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 291
    .end local v1    # "column":I
    .end local v2    # "description":Ljava/lang/String;
    .end local v6    # "oneLinePanelNum":I
    .end local v10    # "row":I
    :pswitch_4
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_0

    .line 295
    :pswitch_5
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 296
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    .line 297
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$200(Lcom/android/settings/NotificationPanelMenu;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$200(Lcom/android/settings/NotificationPanelMenu;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->restoreOriginalImage()V

    goto/16 :goto_0

    .line 252
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
