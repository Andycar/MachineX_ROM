.class public Landroid/app/GlobalActionsSViewCoverDialog$Builder;
.super Ljava/lang/Object;
.source "GlobalActionsSViewCoverDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/GlobalActionsSViewCoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field backgroundColor:I

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    .line 78
    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$100(Landroid/app/GlobalActionsSViewCoverDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/GlobalActionsSViewCoverDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private getBackgroundColor()I
    .registers 8

    .prologue
    const/16 v6, 0x77

    const/16 v5, 0x6b

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    .line 214
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sview_color_use_all"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_33

    .line 215
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sview_color_random"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    .line 223
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    .line 227
    :cond_33
    :goto_33
    iget v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    return v0

    .line 217
    :pswitch_36
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "s_vew_cover_background_color"

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    goto :goto_33

    .line 220
    :pswitch_4a
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sview_bg_display_random"

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    goto :goto_33

    .line 215
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_36
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public create()Landroid/app/GlobalActionsSViewCoverDialog;
    .registers 12

    .prologue
    const/16 v10, 0x8

    const v9, 0x102001a

    const v6, 0x1020019

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 131
    iget-object v4, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 132
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Landroid/app/GlobalActionsSViewCoverDialog;

    iget-object v4, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    const v5, 0x10304ca

    invoke-direct {v1, v4, v5}, Landroid/app/GlobalActionsSViewCoverDialog;-><init>(Landroid/content/Context;I)V

    .line 133
    .local v1, "dialog":Landroid/app/GlobalActionsSViewCoverDialog;
    const v4, 0x109005a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 134
    .local v3, "layout":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/app/GlobalActionsSViewCoverDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const v4, 0x1020337

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    # setter for: Landroid/app/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/app/GlobalActionsSViewCoverDialog;->access$002(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 136
    const v4, 0x102033a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v4, :cond_dc

    .line 139
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Landroid/app/GlobalActionsSViewCoverDialog$Builder$1;

    invoke-direct {v5, p0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder$1;-><init>(Landroid/app/GlobalActionsSViewCoverDialog$Builder;Landroid/app/GlobalActionsSViewCoverDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_65
    iget-object v4, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v4, :cond_e4

    .line 150
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;

    invoke-direct {v5, p0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;-><init>(Landroid/app/GlobalActionsSViewCoverDialog$Builder;Landroid/app/GlobalActionsSViewCoverDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_82
    iget-object v4, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    if-eqz v4, :cond_ec

    .line 162
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/app/GlobalActionsSViewCoverDialog;->access$302(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 163
    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$300()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v4, 0x1020377

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    # setter for: Landroid/app/GlobalActionsSViewCoverDialog;->messageViewContainer:Landroid/widget/ScrollView;
    invoke-static {v4}, Landroid/app/GlobalActionsSViewCoverDialog;->access$402(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;

    .line 170
    :cond_a7
    :goto_a7
    invoke-virtual {v1, v3}, Landroid/app/GlobalActionsSViewCoverDialog;->setContentView(Landroid/view/View;)V

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 173
    const/16 v4, 0x30

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 174
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 175
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 177
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 209
    return-object v1

    .line 146
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_dc
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_65

    .line 157
    :cond_e4
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_82

    .line 165
    :cond_ec
    iget-object v4, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v4, :cond_a7

    .line 166
    const v4, 0x102033f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 167
    const v4, 0x102033f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a7
.end method

.method public setContentView(Landroid/view/View;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    .line 103
    return-object p0
.end method

.method public setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 3
    .param p1, "message"    # I

    .prologue
    .line 87
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 4
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 3
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 4
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 3
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    return-object p0
.end method

.method public setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 3
    .param p1, "title"    # I

    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    .line 98
    return-object p0
.end method
