.class Lcom/android/settings/fmm/SimChangeAlert$2$1;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fmm/SimChangeAlert$2;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert$2;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 222
    .local v0, "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 220
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_1
    const/4 v4, 0x4

    if-gt v2, v4, :cond_2

    .line 229
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$300(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400fb

    iget-object v6, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v6, v6, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v6}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 230
    .local v1, "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v5, v5, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v5}, Lcom/android/settings/fmm/SimChangeAlert;->access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 233
    .restart local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v4}, Lcom/android/settings/fmm/SimChangeAlert;->access$100(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    .line 236
    .end local v0    # "ChildView":Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    :goto_1
    return-void

    .line 235
    :cond_2
    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert$2$1;->this$1:Lcom/android/settings/fmm/SimChangeAlert$2;

    iget-object v4, v4, Lcom/android/settings/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v4}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0fbd

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
