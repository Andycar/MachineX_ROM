.class Lcom/android/systemui/egg/LLand$Building;
.super Lcom/android/systemui/egg/LLand$Scenery;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Building"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/LLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Building;->this$0:Lcom/android/systemui/egg/LLand;

    .line 921
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/LLand$Scenery;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    .line 923
    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_WIDTH_MIN:I

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->BUILDING_WIDTH_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Building;->w:I

    .line 924
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Building;->h:I

    .line 926
    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->SCENERY_Z:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Building;->setTranslationZ(F)V

    .line 927
    return-void
.end method
