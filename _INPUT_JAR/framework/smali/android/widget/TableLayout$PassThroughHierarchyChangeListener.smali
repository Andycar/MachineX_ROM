.class Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "TableLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/widget/TableLayout;


# direct methods
.method private constructor <init>(Landroid/widget/TableLayout;)V
    .registers 2

    .prologue
    .line 760
    iput-object p1, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/TableLayout;
    .param p2, "x1"    # Landroid/widget/TableLayout$1;

    .prologue
    .line 760
    invoke-direct {p0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;)V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 760
    iput-object p1, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 768
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/TableLayout;

    # invokes: Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V
    invoke-static {v0, p2}, Landroid/widget/TableLayout;->access$200(Landroid/widget/TableLayout;Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_e

    .line 771
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 773
    :cond_e
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 779
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_9

    .line 780
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 782
    :cond_9
    return-void
.end method
