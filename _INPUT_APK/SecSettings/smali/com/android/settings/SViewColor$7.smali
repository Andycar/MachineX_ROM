.class Lcom/android/settings/SViewColor$7;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 428
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 429
    .local v0, "mFocusButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 474
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    .line 476
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$800(Lcom/android/settings/SViewColor;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10805ee

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 477
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$1000(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v2}, Lcom/android/settings/SViewColor;->access$500(Lcom/android/settings/SViewColor;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 478
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v3}, Lcom/android/settings/SViewColor;->access$602(Lcom/android/settings/SViewColor;Z)Z

    .line 479
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v3}, Lcom/android/settings/SViewColor;->access$1102(Lcom/android/settings/SViewColor;Z)Z

    .line 480
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$400(Lcom/android/settings/SViewColor;)V

    .line 481
    :goto_1
    return-void

    .line 431
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 434
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 437
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 440
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 443
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 446
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 449
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 452
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$502(Lcom/android/settings/SViewColor;I)I

    goto :goto_0

    .line 455
    :pswitch_8
    if-eqz p2, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$602(Lcom/android/settings/SViewColor;Z)Z

    .line 460
    :goto_2
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$602(Lcom/android/settings/SViewColor;Z)Z

    .line 461
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$400(Lcom/android/settings/SViewColor;)V

    .line 462
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$800(Lcom/android/settings/SViewColor;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 463
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$1000(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v2}, Lcom/android/settings/SViewColor;->access$900(Lcom/android/settings/SViewColor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v3}, Lcom/android/settings/SViewColor;->access$602(Lcom/android/settings/SViewColor;Z)Z

    goto :goto_2

    .line 466
    :pswitch_9
    if-eqz p2, :cond_1

    .line 467
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v2}, Lcom/android/settings/SViewColor;->access$1102(Lcom/android/settings/SViewColor;Z)Z

    .line 471
    :goto_3
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$400(Lcom/android/settings/SViewColor;)V

    goto/16 :goto_1

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SViewColor$7;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v1, v3}, Lcom/android/settings/SViewColor;->access$1102(Lcom/android/settings/SViewColor;Z)Z

    goto :goto_3

    .line 429
    :pswitch_data_0
    .packed-switch 0x7f1000c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
