.class public Lcom/android/settings/fmm/Introduction;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Introduction.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mDoNotShow:Landroid/widget/CheckBox;

.field private mLinkMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/Introduction;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/Introduction;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fmm/Introduction;->mDoNotShow:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0a0fb4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    const v1, 0x7f0400ef

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f100219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fmm/Introduction;->mLinkMessage:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f10021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/fmm/Introduction;->mDoNotShow:Landroid/widget/CheckBox;

    .line 57
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction;->mDoNotShow:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/fmm/Introduction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0fb2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/fmm/Introduction;->mButton:Landroid/widget/Button;

    .line 60
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction;->mLinkMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fmm/Introduction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, " <a href=http://findmymobile.samsung.cn>http://findmymobile.samsung.cn</a></body></html>"

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction;->mLinkMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/fmm/Introduction$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fmm/Introduction$1;-><init>(Lcom/android/settings/fmm/Introduction;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction;->mLinkMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fmm/Introduction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, " <a href=http://findmymobile.samsung.com>http://findmymobile.samsung.com</a></body></html>"

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
