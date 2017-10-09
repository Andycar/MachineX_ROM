.class Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;
.super Ljava/lang/Object;
.source "SViewCoverColorSelector.java"

# interfaces
.implements Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;


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
    .line 200
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 203
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    .line 204
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$100(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getColorIndex()I

    move-result v1

    .line 205
    .local v1, "selectColorindex":I
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    :cond_0
    if-eq v1, v6, :cond_1

    if-ne v1, v7, :cond_6

    :cond_1
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$300(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 212
    if-ne v1, v6, :cond_5

    .line 213
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$400(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 214
    .local v2, "wallpaper":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$500(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 215
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :cond_2
    if-eqz v2, :cond_4

    .line 218
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v3, v2}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    .end local v2    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_0
    return-void

    .line 221
    .restart local v2    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->sviewcover_wallpaper:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    .local v0, "defaultWallpaper":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v3, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 226
    .end local v0    # "defaultWallpaper":Landroid/graphics/drawable/Drawable;
    .end local v2    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-ne v1, v7, :cond_3

    .line 227
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 228
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_6
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 234
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$500(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 235
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 236
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    :cond_7
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .restart local v0    # "defaultWallpaper":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v3, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 241
    .end local v0    # "defaultWallpaper":Landroid/graphics/drawable/Drawable;
    :cond_8
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3, p1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$802(Lcom/sec/android/sviewcover/SViewCoverColorSelector;I)I

    .line 242
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 243
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    :cond_9
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$1000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 246
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$800(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 247
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->access$500(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_0
.end method
