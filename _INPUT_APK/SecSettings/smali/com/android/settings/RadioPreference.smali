.class public Lcom/android/settings/RadioPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioPreference.java"


# instance fields
.field mIsChecked:Z

.field mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RadioPreference;->mIsChecked:Z

    .line 41
    new-instance v0, Lcom/android/settings/RadioPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioPreference$1;-><init>(Lcom/android/settings/RadioPreference;)V

    iput-object v0, p0, Lcom/android/settings/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 51
    const v0, 0x7f0401a4

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioPreference;->setLayoutResource(I)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RadioPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/RadioPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/RadioPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/RadioPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 61
    const v4, 0x7f100086

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/RadioPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/RadioPreference;->isChecked()Z

    move-result v0

    .line 68
    .local v0, "checked":Z
    const v4, 0x7f1003b5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "rb":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/widget/Checkable;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 70
    check-cast v4, Landroid/widget/Checkable;

    invoke-interface {v4, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v4, v2

    .line 71
    check-cast v4, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/settings/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    move-object v4, v2

    .line 73
    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 75
    const v4, 0x7f1003b4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "layout":Landroid/view/View;
    new-instance v4, Lcom/android/settings/RadioPreference$2;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/RadioPreference$2;-><init>(Lcom/android/settings/RadioPreference;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method
