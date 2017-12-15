.class Landroid/widget/HorizontalListView$FocusSelector;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionLeft:I

.field final synthetic this$0:Landroid/widget/HorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/HorizontalListView;)V
    .registers 2

    .prologue
    .line 1108
    iput-object p1, p0, Landroid/widget/HorizontalListView$FocusSelector;->this$0:Landroid/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/HorizontalListView;Landroid/widget/HorizontalListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/HorizontalListView;
    .param p2, "x1"    # Landroid/widget/HorizontalListView$1;

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView$FocusSelector;-><init>(Landroid/widget/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/widget/HorizontalListView$FocusSelector;->this$0:Landroid/widget/HorizontalListView;

    iget v1, p0, Landroid/widget/HorizontalListView$FocusSelector;->mPosition:I

    iget v2, p0, Landroid/widget/HorizontalListView$FocusSelector;->mPositionLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    .line 1120
    return-void
.end method

.method public setup(II)Landroid/widget/HorizontalListView$FocusSelector;
    .registers 3
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    .line 1113
    iput p1, p0, Landroid/widget/HorizontalListView$FocusSelector;->mPosition:I

    .line 1114
    iput p2, p0, Landroid/widget/HorizontalListView$FocusSelector;->mPositionLeft:I

    .line 1115
    return-object p0
.end method
