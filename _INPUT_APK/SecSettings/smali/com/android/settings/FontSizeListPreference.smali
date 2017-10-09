.class public Lcom/android/settings/FontSizeListPreference;
.super Landroid/preference/ListPreference;
.source "FontSizeListPreference.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isWidget:Ljava/lang/Boolean;

.field private mFontSize:Lcom/android/settings/DisplaySettings;

.field private mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

.field private mFontsize:Lcom/android/settings/FontMenu;

.field private mSelectedFontSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/FontSizeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f0a1115

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    .line 49
    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    .line 63
    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/settings/FontSizeListPreference;->setTitle(I)V

    .line 65
    const v0, 0x7f0a1116

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setSummary(I)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/settings/FontSizeListPreference;->setDialogTitle(I)V

    .line 67
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setNegativeButtonText(I)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FontSizeListPreference;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontSizeListPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/FontSizeListPreference;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontSizeListPreference;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/FontSizeListPreference;)Lcom/android/settings/DisplaySettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontSizeListPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSize:Lcom/android/settings/DisplaySettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FontSizeListPreference;)Lcom/android/settings/FontMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontSizeListPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontsize:Lcom/android/settings/FontMenu;

    return-object v0
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 121
    return-void
.end method

.method public directFontsize()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 126
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    .line 127
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "negativeResult"    # Z

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    .line 144
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSize:Lcom/android/settings/DisplaySettings;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSize:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontsize:Lcom/android/settings/FontMenu;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontsize:Lcom/android/settings/FontMenu;

    invoke-virtual {v0}, Lcom/android/settings/FontMenu;->finish()V

    .line 151
    :cond_1
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/FontSizeListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v0, v0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, v1, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 92
    const-string v0, "FontSizeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK onPrepareDialogBuilder Font size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v2, v2, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    .line 94
    const-string v0, "FontSizeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : Selected item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget v1, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/android/settings/FontSizeListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/FontSizeListPreference$1;-><init>(Lcom/android/settings/FontSizeListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 112
    return-void
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p1, "displaySettings"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->mFontSize:Lcom/android/settings/DisplaySettings;

    .line 132
    return-void
.end method

.method public setObject(Lcom/android/settings/FontMenu;)V
    .locals 0
    .param p1, "fontMenu"    # Lcom/android/settings/FontMenu;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->mFontsize:Lcom/android/settings/FontMenu;

    .line 137
    return-void
.end method
