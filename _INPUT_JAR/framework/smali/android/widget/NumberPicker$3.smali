.class Landroid/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 2

    .prologue
    .line 733
    iput-object p1, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 735
    if-eqz p2, :cond_d

    .line 736
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 741
    :goto_c
    return-void

    .line 738
    :cond_d
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 739
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;Landroid/view/View;)V

    goto :goto_c
.end method
