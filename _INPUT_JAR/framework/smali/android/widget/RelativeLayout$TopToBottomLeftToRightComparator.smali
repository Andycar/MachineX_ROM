.class Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopToBottomLeftToRightComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 1146
    iput-object p1, p0, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/RelativeLayout;
    .param p2, "x1"    # Landroid/widget/RelativeLayout$1;

    .prologue
    .line 1146
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 9
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    .line 1149
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v2, v4, v5

    .line 1150
    .local v2, "topDifference":I
    if-eqz v2, :cond_d

    .line 1168
    .end local v2    # "topDifference":I
    :goto_c
    return v2

    .line 1154
    .restart local v2    # "topDifference":I
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 1155
    .local v1, "leftDifference":I
    if-eqz v1, :cond_1b

    move v2, v1

    .line 1156
    goto :goto_c

    .line 1159
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v0, v4, v5

    .line 1160
    .local v0, "heightDiference":I
    if-eqz v0, :cond_29

    move v2, v0

    .line 1161
    goto :goto_c

    .line 1164
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v3, v4, v5

    .line 1165
    .local v3, "widthDiference":I
    if-eqz v3, :cond_37

    move v2, v3

    .line 1166
    goto :goto_c

    .line 1168
    :cond_37
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1146
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
