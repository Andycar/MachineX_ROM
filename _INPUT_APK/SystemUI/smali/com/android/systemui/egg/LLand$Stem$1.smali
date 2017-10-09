.class Lcom/android/systemui/egg/LLand$Stem$1;
.super Landroid/view/ViewOutlineProvider;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/LLand$Stem;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/egg/LLand$Stem;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/LLand$Stem;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Stem$1;->this$1:Lcom/android/systemui/egg/LLand$Stem;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v2, 0x0

    .line 880
    iget-object v0, p0, Lcom/android/systemui/egg/LLand$Stem$1;->this$1:Lcom/android/systemui/egg/LLand$Stem;

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand$Stem;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/egg/LLand$Stem$1;->this$1:Lcom/android/systemui/egg/LLand$Stem;

    invoke-virtual {v1}, Lcom/android/systemui/egg/LLand$Stem;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 881
    return-void
.end method
