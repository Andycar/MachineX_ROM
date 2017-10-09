.class Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;
.super Ljava/lang/Object;
.source "HandwritingLanguageTablet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->access$000(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->access$200(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$2;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    invoke-static {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->access$100(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method
