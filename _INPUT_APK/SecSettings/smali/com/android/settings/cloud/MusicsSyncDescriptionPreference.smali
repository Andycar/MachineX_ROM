.class public Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;
.super Landroid/preference/Preference;
.source "MusicsSyncDescriptionPreference.java"


# instance fields
.field private syncDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 24
    const v3, 0x7f1004b7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    .line 25
    iget-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a18c9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "vendorName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a18fa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "musicPlayerAppName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a18dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/cloud/MusicsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .end local v0    # "musicPlayerAppName":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "vendorName":Ljava/lang/String;
    :cond_0
    return-void
.end method
