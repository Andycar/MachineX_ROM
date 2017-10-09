.class public Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FontSizeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field public mFontSizeNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 67
    .local v2, "v":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x109000f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "v":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 70
    .restart local v2    # "v":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    const v4, 0x1030044

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 97
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/high16 v0, 0x41b00000    # 22.0f

    .line 99
    .local v0, "mFontsize":F
    const/16 v1, 0x38

    .line 103
    .local v1, "pixelHeight":I
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 76
    .end local v0    # "mFontsize":F
    .end local v1    # "pixelHeight":I
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/high16 v0, 0x421c0000    # 39.0f

    .line 78
    .restart local v0    # "mFontsize":F
    const/16 v1, 0x41

    .line 79
    .restart local v1    # "pixelHeight":I
    goto :goto_0

    .line 81
    .end local v0    # "mFontsize":F
    .end local v1    # "pixelHeight":I
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/high16 v0, 0x41e00000    # 28.0f

    .line 83
    .restart local v0    # "mFontsize":F
    const/16 v1, 0x41

    .line 84
    .restart local v1    # "pixelHeight":I
    goto :goto_0

    .line 86
    .end local v0    # "mFontsize":F
    .end local v1    # "pixelHeight":I
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/high16 v0, 0x41a00000    # 20.0f

    .line 88
    .restart local v0    # "mFontsize":F
    const/16 v1, 0x38

    .line 89
    .restart local v1    # "pixelHeight":I
    goto :goto_0

    .line 91
    .end local v0    # "mFontsize":F
    .end local v1    # "pixelHeight":I
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/high16 v0, 0x41900000    # 18.0f

    .line 93
    .restart local v0    # "mFontsize":F
    const/16 v1, 0x38

    .line 94
    .restart local v1    # "pixelHeight":I
    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    const/4 v4, 0x0

    .line 118
    .local v4, "v":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x109000f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 119
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "v":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 121
    .restart local v4    # "v":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    const v7, 0x1030044

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 123
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 124
    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 125
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 126
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 130
    .local v0, "density":I
    packed-switch p1, :pswitch_data_0

    .line 153
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/high16 v1, 0x41b00000    # 22.0f

    .line 158
    .local v1, "mFontsize":F
    :goto_0
    const-string v6, "csjung"

    const-string v7, "getView"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    const/high16 v6, 0x42600000    # 56.0f

    int-to-float v7, v0

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 165
    .local v3, "pixelHeight":I
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 167
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    return-object v6

    .line 132
    .end local v1    # "mFontsize":F
    .end local v3    # "pixelHeight":I
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/high16 v1, 0x421c0000    # 39.0f

    .line 135
    .restart local v1    # "mFontsize":F
    goto :goto_0

    .line 137
    .end local v1    # "mFontsize":F
    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/high16 v1, 0x41e00000    # 28.0f

    .line 140
    .restart local v1    # "mFontsize":F
    goto :goto_0

    .line 142
    .end local v1    # "mFontsize":F
    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/high16 v1, 0x41a00000    # 20.0f

    .line 145
    .restart local v1    # "mFontsize":F
    goto :goto_0

    .line 147
    .end local v1    # "mFontsize":F
    :pswitch_4
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/high16 v1, 0x41900000    # 18.0f

    .line 150
    .restart local v1    # "mFontsize":F
    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
