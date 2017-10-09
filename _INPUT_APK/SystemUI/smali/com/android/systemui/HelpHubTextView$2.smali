.class Lcom/android/systemui/HelpHubTextView$2;
.super Ljava/lang/Object;
.source "HelpHubTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/HelpHubTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/HelpHubTextView;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 14

    .prologue
    const/high16 v13, -0x3e400000    # -24.0f

    const/high16 v12, -0x3e600000    # -20.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, -0x3e900000    # -15.0f

    .line 847
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-static {v7}, Lcom/android/systemui/HelpHubTextView;->access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 848
    iget-object v8, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-static {v7}, Lcom/android/systemui/HelpHubTextView;->access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/HelpHubDrawable;

    iput-object v7, v8, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    .line 849
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v7}, Lcom/android/systemui/HelpHubTextView;->getLineCount()I

    move-result v4

    .line 851
    .local v4, "lineCount":I
    if-lt v4, v11, :cond_9

    .line 855
    const/4 v6, 0x0

    .line 856
    .local v6, "start":I
    const/4 v1, 0x0

    .line 857
    .local v1, "end":I
    const/4 v0, 0x0

    .line 858
    .local v0, "drawableLocation":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_9

    .line 859
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v7}, Lcom/android/systemui/HelpHubTextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 860
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v7}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 861
    .local v5, "splittedText":Ljava/lang/String;
    const v7, 0xfffc

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 862
    if-eq v0, v2, :cond_0

    .line 863
    const v7, 0xfffc

    invoke-static {v5, v7}, Lcom/android/systemui/HelpHubTextView;->countOccurrences(Ljava/lang/String;C)I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 858
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 866
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 867
    packed-switch v4, :pswitch_data_0

    .line 908
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v10}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    .line 911
    :cond_1
    :goto_3
    move v6, v1

    goto :goto_2

    .line 870
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 873
    :pswitch_1
    if-nez v3, :cond_2

    .line 874
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v12}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 877
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v10}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 880
    :pswitch_2
    if-nez v3, :cond_3

    .line 881
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v12}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 883
    :cond_3
    if-ne v3, v11, :cond_4

    .line 884
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v9}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 887
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v10}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 890
    :pswitch_3
    if-nez v3, :cond_5

    .line 891
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v9}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 892
    :cond_5
    if-ne v3, v11, :cond_6

    .line 893
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v13}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 894
    :cond_6
    const/4 v7, 0x2

    if-ne v3, v7, :cond_7

    .line 895
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v13}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 896
    :cond_7
    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    .line 897
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v7, v8}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 900
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    const/high16 v8, -0x3e300000    # -26.0f

    invoke-virtual {v7, v8}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 905
    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v7, v9}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    goto :goto_3

    .line 847
    .end local v0    # "drawableLocation":I
    .end local v1    # "end":I
    .end local v3    # "j":I
    .end local v5    # "splittedText":Ljava/lang/String;
    .end local v6    # "start":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 915
    .end local v4    # "lineCount":I
    :cond_a
    return-void

    .line 867
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
