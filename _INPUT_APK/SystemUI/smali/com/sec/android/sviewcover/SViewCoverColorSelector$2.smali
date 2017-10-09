.class Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;
.super Ljava/lang/Object;
.source "SViewCoverColorSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverColorSelector;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x9

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 260
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    .line 261
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$100(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getColorIndex()I

    move-result v1

    .line 262
    .local v1, "selectColorindex":I
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$100(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getColor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$802(Lcom/sec/android/sviewcover/SViewCoverColorSelector;I)I

    .line 263
    if-eq v1, v5, :cond_0

    if-ne v1, v4, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$300(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 265
    if-ne v1, v5, :cond_3

    .line 266
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1100(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V

    .line 301
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "s_view_cover_skin_color"

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverView;->getCoverSkinColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->hideColorSelectorView()V

    .line 304
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 305
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    :cond_2
    :goto_1
    return-void

    .line 267
    :cond_3
    if-ne v1, v4, :cond_1

    .line 268
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 274
    :cond_4
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 275
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 278
    .local v0, "defaultWallpaper":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 280
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 281
    :cond_5
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_wallpaper"

    add-int/lit8 v4, v1, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2, v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1300(Lcom/sec/android/sviewcover/SViewCoverColorSelector;I)V

    goto/16 :goto_0

    .line 285
    .end local v0    # "defaultWallpaper":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 286
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$800(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 287
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    .line 289
    :cond_7
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 290
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 291
    :cond_8
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1400(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "s_vew_cover_background_color"

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$800(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1500(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_wallpaper"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    const-string v2, "SViewCoverColorSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set mCurrentCoverBackgroundColor :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$800(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectColorindex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
