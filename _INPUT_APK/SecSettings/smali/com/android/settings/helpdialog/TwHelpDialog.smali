.class public Lcom/android/settings/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/helpdialog/TwHelpDialog$1;,
        Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    const v2, 0x7f0b006e

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 45
    iput-boolean v5, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 46
    iput-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 62
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 64
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 66
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 75
    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 77
    const v2, 0x7f0a17bf

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 80
    iput-boolean v5, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 82
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const v6, 0x7f100197

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 171
    :goto_0
    return v2

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    .line 108
    iput-boolean v2, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 113
    :cond_1
    sget-object v4, Lcom/android/settings/helpdialog/TwHelpDialog$1;->$SwitchMap$com$android$settings$helpdialog$TwHelpDialog$TouchMode:[I

    iget-object v5, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 163
    :cond_2
    :goto_1
    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    if-eq v0, v7, :cond_4

    .line 169
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_4
    move v2, v3

    .line 171
    goto :goto_0

    .line 115
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v4, :cond_6

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    if-nez v0, :cond_5

    .line 119
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 123
    .end local v1    # "containerView":Landroid/view/View;
    :cond_5
    if-ne v0, v2, :cond_2

    .line 124
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 125
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 130
    .end local v1    # "containerView":Landroid/view/View;
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 137
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v4, :cond_8

    if-eq v0, v7, :cond_8

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    if-nez v0, :cond_7

    .line 141
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 145
    .end local v1    # "containerView":Landroid/view/View;
    :cond_7
    if-ne v0, v2, :cond_2

    .line 146
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 147
    .restart local v1    # "containerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 152
    .end local v1    # "containerView":Landroid/view/View;
    :cond_8
    iget-boolean v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v4, :cond_2

    if-eq v0, v7, :cond_2

    .line 153
    iget-object v4, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutMarginDialogCenter(III)V
    .locals 6
    .param p1, "rightMargin"    # I
    .param p2, "topMargin"    # I
    .param p3, "bubbleTopMargin"    # I

    .prologue
    const v5, 0x7f100004

    .line 198
    const v4, 0x7f100005

    invoke-virtual {p0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/helpdialog/TwTouchPunchView;

    move-object v3, v4

    check-cast v3, Lcom/android/settings/helpdialog/TwTouchPunchView;

    .line 199
    .local v3, "touchPunchView":Lcom/android/settings/helpdialog/TwTouchPunchView;
    invoke-virtual {p0, v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object v1, v4

    check-cast v1, Landroid/widget/ImageView;

    .line 200
    .local v1, "imageViewHelpPointer":Landroid/widget/ImageView;
    const v4, 0x7f1001dd

    invoke-virtual {p0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    .line 202
    .local v0, "bubbleSummary":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwTouchPunchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 203
    .local v2, "layoutParamHelp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 204
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 205
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    invoke-virtual {v3, v2}, Lcom/android/settings/helpdialog/TwTouchPunchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParamHelp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 212
    .restart local v2    # "layoutParamHelp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 214
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method

.method public setLayoutMarginDialogRight(IIII)V
    .locals 7
    .param p1, "rightMargin"    # I
    .param p2, "topMargin"    # I
    .param p3, "bubbleTopMargin"    # I
    .param p4, "bubbleRightMargin"    # I

    .prologue
    const v6, 0x7f100004

    const/16 v5, 0xb

    .line 175
    const v4, 0x7f100005

    invoke-virtual {p0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/helpdialog/TwTouchPunchView;

    move-object v3, v4

    check-cast v3, Lcom/android/settings/helpdialog/TwTouchPunchView;

    .line 176
    .local v3, "touchPunchView":Lcom/android/settings/helpdialog/TwTouchPunchView;
    invoke-virtual {p0, v6}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object v1, v4

    check-cast v1, Landroid/widget/ImageView;

    .line 177
    .local v1, "imageViewHelpPointer":Landroid/widget/ImageView;
    const v4, 0x7f1001dd

    invoke-virtual {p0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, "bubbleSummary":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwTouchPunchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    .local v2, "layoutParamHelp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 181
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 182
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    invoke-virtual {v3, v2}, Lcom/android/settings/helpdialog/TwTouchPunchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParamHelp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 189
    .restart local v2    # "layoutParamHelp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 190
    sub-int v4, p1, p4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 192
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 194
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .param p1, "pShowWrongInputToast"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 94
    return-void
.end method

.method public setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V
    .locals 0
    .param p1, "touchTransparencyMode"    # Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 86
    return-void
.end method
