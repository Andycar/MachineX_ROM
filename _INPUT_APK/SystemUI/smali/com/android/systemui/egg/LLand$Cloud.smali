.class Lcom/android/systemui/egg/LLand$Cloud;
.super Lcom/android/systemui/egg/LLand$Scenery;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cloud"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/LLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Cloud;->this$0:Lcom/android/systemui/egg/LLand;

    .line 932
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/LLand$Scenery;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    .line 933
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x7f02006d

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Cloud;->setBackgroundResource(I)V

    .line 934
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Cloud;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 935
    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->CLOUD_SIZE_MIN:I

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->CLOUD_SIZE_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Cloud;->h:I

    iput v0, p0, Lcom/android/systemui/egg/LLand$Cloud;->w:I

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Cloud;->z:F

    .line 937
    const v0, 0x3e19999a    # 0.15f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Cloud;->v:F

    .line 938
    return-void

    .line 933
    :cond_0
    const v0, 0x7f02006c

    goto :goto_0
.end method
