.class public Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;
.super Landroid/preference/Preference;
.source "MirrorLinkApplicationsPreference.java"


# instance fields
.field private mIndex:I

.field private mValidCheck:Landroid/widget/TextView;

.field private mValidStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mIndex:I

    .line 49
    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "MirrorLinkApplicationsPreference(Context context) is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->init()V

    .line 51
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "init():"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const v0, 0x7f04019e

    invoke-virtual {p0, v0}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setLayoutResource(I)V

    .line 106
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, -0x777778

    .line 83
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 84
    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "onBindView():"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const v0, 0x7f1003b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "VALID"

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f0a1dcb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v0, "UNCHECKED"

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f0a1dcd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "NONCERTIFIED"

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f0a1dcc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "onCreateView():"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 66
    const-string v0, "MirrorLinkApplicationsPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndex() index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mIndex:I

    .line 68
    return-void
.end method

.method public setValidCheck(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "MirrorLinkApplicationsPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValidCheck() status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    .line 72
    return-void
.end method
