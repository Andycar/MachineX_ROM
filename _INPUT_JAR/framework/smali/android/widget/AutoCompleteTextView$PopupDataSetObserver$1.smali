.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .registers 2

    .prologue
    .line 1295
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1298
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    # getter for: Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->access$800(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 1299
    .local v1, "textView":Landroid/widget/AutoCompleteTextView;
    if-nez v1, :cond_f

    .line 1307
    :cond_e
    :goto_e
    return-void

    .line 1302
    :cond_f
    # getter for: Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1303
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_e

    .line 1306
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    # invokes: Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Landroid/widget/AutoCompleteTextView;->access$900(Landroid/widget/AutoCompleteTextView;I)V

    goto :goto_e
.end method
