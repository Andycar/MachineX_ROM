.class Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAndMetaData"
.end annotation


# instance fields
.field adapterPosition:I

.field itemId:J

.field relativeIndex:I

.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "relativeIndex"    # I
    .param p4, "adapterPosition"    # I
    .param p5, "itemId"    # J

    .prologue
    .line 225
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 227
    iput p3, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 228
    iput p4, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->adapterPosition:I

    .line 229
    iput-wide p5, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->itemId:J

    .line 230
    return-void
.end method
