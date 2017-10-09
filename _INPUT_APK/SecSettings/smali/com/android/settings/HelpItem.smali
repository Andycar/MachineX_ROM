.class public Lcom/android/settings/HelpItem;
.super Ljava/lang/Object;
.source "HelpItem.java"


# instance fields
.field container:Landroid/view/View;

.field contentImageArea:Landroid/widget/FrameLayout;

.field contentImageView:Landroid/widget/ImageView;

.field contentPlayBtn:Landroid/widget/ImageButton;

.field contentTextView:Landroid/widget/TextView;

.field item:Landroid/widget/LinearLayout;

.field titleTextView:Landroid/widget/TextView;

.field titleTextView2:Landroid/widget/TextView;

.field tryBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, 0x7f040044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f1000b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    .line 31
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f1000ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f1000bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    .line 35
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f10009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f1000bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    .line 37
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f1000bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    .line 38
    return-void
.end method


# virtual methods
.method public changePaddingForPopup(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "paddingLeft":I
    const/4 v2, 0x0

    .line 55
    .local v2, "paddingRight":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v1, v2

    .line 56
    iget-object v4, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 57
    .local v3, "paddingTop":I
    iget-object v4, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    .line 58
    .local v0, "paddingBottom":I
    iget-object v4, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 59
    return-void
.end method

.method public getHelpView()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    return-object v0
.end method

.method public hideTitle()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 67
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public setContentImage(I)V
    .locals 1
    .param p1, "res_id"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    return-void
.end method

.method public setContentText(I)V
    .locals 1
    .param p1, "res_id"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method

.method public setContentText(Landroid/text/SpannableString;)V
    .locals 1
    .param p1, "text"    # Landroid/text/SpannableString;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public setContentVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public setImageMarginTop(I)V
    .locals 3
    .param p1, "marginTop"    # I

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x4

    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method public setImageVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    return-void
.end method

.method public setTitle2Visibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public setTitleText(I)V
    .locals 2
    .param p1, "res_id"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    return-void
.end method

.method public setTitleTextWithOutCategory(I)V
    .locals 2
    .param p1, "res_id"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    return-void
.end method

.method public setTitleTextWithOutCategory(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public setTryBtnEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    return-void
.end method

.method public setTryBtnVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public usePlayButton(Z)V
    .locals 3
    .param p1, "playable"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020128

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/settings/HelpItem$1;

    invoke-direct {v2, p0}, Lcom/android/settings/HelpItem$1;-><init>(Lcom/android/settings/HelpItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 145
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
