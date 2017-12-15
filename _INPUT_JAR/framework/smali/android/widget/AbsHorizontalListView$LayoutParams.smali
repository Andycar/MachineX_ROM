.class public Landroid/widget/AbsHorizontalListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field itemId:J

.field recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field scrappedFromPosition:I

.field viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "ITEM_VIEW_TYPE_IGNORE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 7791
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7784
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    .line 7792
    return-void
.end method

.method public constructor <init>(III)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "viewType"    # I

    .prologue
    .line 7795
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7784
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    .line 7796
    iput p3, p0, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 7797
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7787
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7784
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    .line 7788
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7800
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7784
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    .line 7801
    return-void
.end method
