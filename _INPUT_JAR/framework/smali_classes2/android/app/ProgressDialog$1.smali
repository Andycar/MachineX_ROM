.class Landroid/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 158
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v8}, Landroid/app/ProgressDialog;->access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    .line 159
    .local v4, "progress":I
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v8}, Landroid/app/ProgressDialog;->access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 160
    .local v1, "max":I
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v8}, Landroid/app/ProgressDialog;->access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7b

    .line 161
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v8}, Landroid/app/ProgressDialog;->access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "format":Ljava/lang/String;
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/app/ProgressDialog;->access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .end local v0    # "format":Ljava/lang/String;
    :goto_43
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v8}, Landroid/app/ProgressDialog;->access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v8

    if-eqz v8, :cond_87

    .line 167
    int-to-double v8, v4

    int-to-double v10, v1

    div-double v2, v8, v10

    .line 168
    .local v2, "percent":D
    new-instance v5, Landroid/text/SpannableString;

    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v8}, Landroid/app/ProgressDialog;->access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    .local v5, "tmp":Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/StyleSpan;

    sget-boolean v9, Landroid/app/ProgressDialog;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v9, :cond_65

    move v6, v7

    :cond_65
    invoke-direct {v8, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v9, 0x21

    invoke-virtual {v5, v8, v7, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 171
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .end local v2    # "percent":D
    .end local v5    # "tmp":Landroid/text/SpannableString;
    :goto_7a
    return-void

    .line 164
    :cond_7b
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/app/ProgressDialog;->access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    .line 173
    :cond_87
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7a
.end method
