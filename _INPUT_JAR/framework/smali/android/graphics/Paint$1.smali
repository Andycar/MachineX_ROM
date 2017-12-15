.class Landroid/graphics/Paint$1;
.super Ljava/lang/Object;
.source "Paint.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/Paint;->addLinearGradientTextEffect(FF[I[F[FF)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Paint$Gradient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 1400
    iput-object p1, p0, Landroid/graphics/Paint$1;->this$0:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Paint$Gradient;Landroid/graphics/Paint$Gradient;)I
    .registers 5
    .param p1, "o1"    # Landroid/graphics/Paint$Gradient;
    .param p2, "o2"    # Landroid/graphics/Paint$Gradient;

    .prologue
    .line 1403
    iget v0, p1, Landroid/graphics/Paint$Gradient;->position:F

    iget v1, p2, Landroid/graphics/Paint$Gradient;->position:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget v0, p1, Landroid/graphics/Paint$Gradient;->position:F

    iget v1, p2, Landroid/graphics/Paint$Gradient;->position:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1400
    check-cast p1, Landroid/graphics/Paint$Gradient;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Paint$Gradient;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Paint$1;->compare(Landroid/graphics/Paint$Gradient;Landroid/graphics/Paint$Gradient;)I

    move-result v0

    return v0
.end method
